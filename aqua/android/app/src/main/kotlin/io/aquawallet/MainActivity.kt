package io.aquawallet

import android.content.Context
import android.security.keystore.KeyProperties
import android.util.Base64
import android.view.WindowManager
import androidx.annotation.NonNull
import androidx.biometric.BiometricManager
import androidx.biometric.BiometricPrompt
import io.aquawallet.extension.SharedPreferencesUnableToCommitException
import io.aquawallet.extension.callHandlerFlowable
import io.aquawallet.extension.getStringSingle
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.reactivex.BackpressureStrategy
import io.reactivex.Flowable
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.IvParameterSpec
import kotlin.system.exitProcess

class MainActivity : FlutterFragmentActivity() {

    private val KEYSTORE_KEY_MAIN = "MAIN_KEY"
    private val KEYSTORE_KEY_FALLBACK = "FALLBACK_KEY"

    private val SHARED_PREFERENCES_NAME = "aquawalletsharedpreferences"
    private val SHARED_PREFERENCES_FIELD_PASSCODE = "passcode"
    private val SHARED_PREFERENCES_FIELD_BIOMETRIC_MNEMONIC = "biometric_mnemonic"
    private val SHARED_PREFERENCES_FIELD_TUTORIAL = "tutorial"
    private val SHARED_PREFERENCES_FIELD_FALLBACK_MNEMONIC = "fallback_mnemonic"
    private val SHARED_PREFERENCES_FIELD_SKIPPED_PROTECTION = "skipped_protection"
    private val SHARED_PREFERENCES_FIELD_REQUIRES_BACKUP = "requires_backup"
    private val SHARED_PREFERENCES_FIELD_ENV = "env_value"
    private val ANDROID_KEY_STORE = "AndroidKeyStore"

    private val PROTECTION_CHANNEL = "io.aquawallet/protection"
    private val PROTECTION_CHANNEL_METHOD_CAN_AUTHENTICATE = "canAuthenticate"
    private val PROTECTION_CHANNEL_METHOD_SKIP_PROTECTION = "skipProtection"
    private val PROTECTION_CHANNEL_METHOD_GET_PROTECTION_SKIPPED = "getProtectionSkipped"
    private val PROTECTION_CHANNEL_METHOD_GET_MNEMONIC = "getMnemonic"
    private val PROTECTION_CHANNEL_METHOD_SET_MNEMONIC = "setMnemonic"
    private val PROTECTION_CHANNEL_METHOD_GET_BIOMETRIC_ENABLED = "getBiometricEnabled"
    private val PROTECTION_CHANNEL_METHOD_ENABLE_BIOMETRIC = "enableBiometric"
    private val PROTECTION_CHANNEL_METHOD_DISABLE_BIOMETRIC = "disableBiometric"
    private val PROTECTION_CHANNEL_METHOD_GET_PASSCODE = "getPasscode"
    private val PROTECTION_CHANNEL_METHOD_ENABLE_PASSCODE = "enablePasscode"
    private val PROTECTION_CHANNEL_METHOD_DISABLE_PASSCODE = "disablePasscode"
    private val PROTECTION_CHANNEL_METHOD_REQUIRES_BACKUP = "requiresBackup"
    private val PROTECTION_CHANNEL_METHOD_IGNORE_BACKUP = "ignoreBackup"
    private val PROTECTION_CHANNEL_METHOD_CLEAR_STORAGE = "clearStorage"
    private val PROTECTION_CHANNEL_ARGUMENT_PASSCODE = "passcode"
    private val PROTECTION_CHANNEL_ARGUMENT_MNEMONIC = "mnemonic"
    private val PROTECTION_CHANNEL_ARGUMENT_ENV = "env"
    private val PROTECTION_CHANNEL_METHOD_GET_ENV = "getEnv"
    private val PROTECTION_CHANNEL_METHOD_SET_ENV = "setEnv"
    private val PROTECTION_CHANNEL_METHOD_GET_TUTORIAL_ENABLED = "getTutorialEnabled"
    private val PROTECTION_CHANNEL_METHOD_ENABLE_TUTORIAL = "enableTutorial"
    private val PROTECTION_CHANNEL_METHOD_DISABLE_TUTORIAL = "disableTutorial"
    private val UTILS_CHANNEL = "io.aquawallet/utils"

    private val disposable = CompositeDisposable()

    private val SPEC_KEY_TYPE = KeyProperties.KEY_ALGORITHM_AES
    private val SPEC_BLOCK_MODE = KeyProperties.BLOCK_MODE_CBC
    private val SPEC_PADDING = KeyProperties.ENCRYPTION_PADDING_PKCS7

    private val SPEC_CIPHER = "$SPEC_KEY_TYPE/$SPEC_BLOCK_MODE/$SPEC_PADDING"

    override fun onDestroy() {
        // This will terminate flutter but not the process itself.
        // So when the app is restored old FFI will crash as Flutter port will be closed now.
        // Terminating the process as workaround.
        super.onDestroy()
        exitProcess(0)
    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val sharedPreferences = getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, UTILS_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "addWindowSecureFlags" -> {
                    getWindow().addFlags(WindowManager.LayoutParams.FLAG_SECURE)
                    result.success(true)
                }
                "clearWindowSecureFlags" -> {
                    getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
                    result.success(true)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
        disposable.add(MethodChannel(flutterEngine.dartExecutor.binaryMessenger, PROTECTION_CHANNEL).callHandlerFlowable()
            .flatMapSingle { handler ->
                when (handler.first.method) {
                    PROTECTION_CHANNEL_METHOD_CAN_AUTHENTICATE -> Single.just(Unit)
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = BiometricManager.from(applicationContext).canAuthenticate(BiometricManager.Authenticators.BIOMETRIC_WEAK)
                                    if (result != BiometricManager.BIOMETRIC_SUCCESS) {
                                        throw BiometricAuthenticationFailureException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_SKIP_PROTECTION -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        putString(SHARED_PREFERENCES_FIELD_SKIPPED_PROTECTION, "")
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_GET_PROTECTION_SKIPPED -> Single.just(Unit)
                        .flatMap { sharedPreferences.getStringSingle(SHARED_PREFERENCES_FIELD_SKIPPED_PROTECTION) }
                        .doOnSuccess { result -> handler.second.success(result) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_SET_ENV -> Single.just(Unit)
                        .flatMap {
                            Single.create<String> { emitter ->
                                try {
                                    val env = handler.first.argument<String>(PROTECTION_CHANNEL_ARGUMENT_ENV)
                                        ?: throw RuntimeException()
                                    emitter.onSuccess(env)
                                } catch (e: Exception) {
                                    emitter.tryOnError(ChannelIllegalArgumentsException)
                                }
                            }
                        }
                        .observeOn(Schedulers.io())
                        .flatMap { env ->
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        putString(SHARED_PREFERENCES_FIELD_ENV, env)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_GET_ENV -> Single.just(Unit)
                        .flatMap {
                            sharedPreferences.getStringSingle(SHARED_PREFERENCES_FIELD_ENV)
                        }
                        .doOnSuccess { result -> handler.second.success(result) }
                        .doOnError { handler.second.success("0") }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_GET_MNEMONIC -> getMnemonicSingle()
                        .doOnSuccess { result -> handler.second.success(result) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_SET_MNEMONIC -> Single.just(Unit)
                        .flatMap {
                            Single.create<String> { emitter ->
                                try {
                                    val mnemonic = handler.first.argument<String>(PROTECTION_CHANNEL_ARGUMENT_MNEMONIC)
                                        ?: throw RuntimeException()
                                    emitter.onSuccess(mnemonic)
                                } catch (e: Exception) {
                                    emitter.tryOnError(ChannelIllegalArgumentsException)
                                }
                            }
                        }
                        .flatMap { mnemonic ->
                            encryptFallbackSingle(mnemonic)
                        }
                        .observeOn(Schedulers.io())
                        .flatMap { mnemonic ->
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        putString(SHARED_PREFERENCES_FIELD_FALLBACK_MNEMONIC, mnemonic)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_GET_BIOMETRIC_ENABLED -> Single.just(Unit)
                        .flatMap { sharedPreferences.getStringSingle(SHARED_PREFERENCES_FIELD_BIOMETRIC_MNEMONIC) }
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_ENABLE_BIOMETRIC -> getMnemonicSingle()
                        .flatMap { mnemonic ->
                            encryptBiometricSingle(mnemonic)
                        }
                        .observeOn(Schedulers.io())
                        .flatMap { mnemonic ->
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        remove(SHARED_PREFERENCES_FIELD_PASSCODE)
                                        remove(SHARED_PREFERENCES_FIELD_FALLBACK_MNEMONIC)
                                        putString(SHARED_PREFERENCES_FIELD_BIOMETRIC_MNEMONIC, mnemonic)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_DISABLE_BIOMETRIC -> getMnemonicSingle()
                        .flatMap { mnemonic ->
                            encryptFallbackSingle(mnemonic)
                        }
                        .observeOn(Schedulers.io())
                        .flatMap { mnemonic ->
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        remove(SHARED_PREFERENCES_FIELD_BIOMETRIC_MNEMONIC)
                                        putString(SHARED_PREFERENCES_FIELD_FALLBACK_MNEMONIC, mnemonic)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_GET_PASSCODE -> Single.just(Unit)
                        .flatMap { sharedPreferences.getStringSingle(SHARED_PREFERENCES_FIELD_PASSCODE) }
                        .flatMap { encryptedPasscode ->
                            decryptFallbackSingle(encryptedPasscode)
                        }
                        .doOnSuccess { result -> handler.second.success(result) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_ENABLE_PASSCODE -> getMnemonicSingle()
                        .flatMap { mnemonic ->
                            encryptFallbackSingle(mnemonic)
                        }
                        .flatMap { mnemonic ->
                            Single.create<String> { emitter ->
                                try {
                                    val passcode = handler.first.argument<String>(PROTECTION_CHANNEL_ARGUMENT_PASSCODE)
                                        ?: throw ChannelIllegalArgumentsException
                                    emitter.onSuccess(passcode)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }.flatMap { passcode ->
                                encryptFallbackSingle(passcode)
                            }.map { passcode ->
                                Pair(mnemonic, passcode)
                            }
                        }
                        .observeOn(Schedulers.io())
                        .flatMap { pair ->
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        remove(SHARED_PREFERENCES_FIELD_BIOMETRIC_MNEMONIC)
                                        putString(SHARED_PREFERENCES_FIELD_FALLBACK_MNEMONIC, pair.first)
                                        putString(SHARED_PREFERENCES_FIELD_PASSCODE, pair.second)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_DISABLE_PASSCODE -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        remove(SHARED_PREFERENCES_FIELD_PASSCODE)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_REQUIRES_BACKUP -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .map { sharedPreferences.getBoolean(SHARED_PREFERENCES_FIELD_REQUIRES_BACKUP, true) }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { result -> handler.second.success(result) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_IGNORE_BACKUP -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        putBoolean(SHARED_PREFERENCES_FIELD_REQUIRES_BACKUP, false)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_CLEAR_STORAGE -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        clear()
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_GET_TUTORIAL_ENABLED -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .map { sharedPreferences.getBoolean(SHARED_PREFERENCES_FIELD_TUTORIAL, true) }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { result -> handler.second.success(result) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_ENABLE_TUTORIAL -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        putBoolean(SHARED_PREFERENCES_FIELD_TUTORIAL, true)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    PROTECTION_CHANNEL_METHOD_DISABLE_TUTORIAL -> Single.just(Unit)
                        .observeOn(Schedulers.io())
                        .flatMap {
                            Single.create<Unit> { emitter ->
                                try {
                                    val result = sharedPreferences.edit().run {
                                        putBoolean(SHARED_PREFERENCES_FIELD_TUTORIAL, false)
                                        commit()
                                    }
                                    if (!result) {
                                        throw SharedPreferencesUnableToCommitException
                                    }
                                    emitter.onSuccess(Unit)
                                } catch (e: Exception) {
                                    emitter.tryOnError(e)
                                }
                            }
                        }
                        .observeOn(AndroidSchedulers.mainThread())
                        .doOnSuccess { handler.second.success(null) }
                        .doOnError { error -> handler.second.error("$error", null, null) }
                        .map { }
                        .onErrorResumeNext(Single.just(Unit))
                    else -> Single.error<Unit>(RuntimeException())
                        .doOnError { handler.second.notImplemented() }
                        .onErrorResumeNext(Single.just(Unit))
                }
            }
            .subscribe())
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        disposable.clear()
        super.cleanUpFlutterEngine(flutterEngine)
    }

    private fun getMnemonicSingle(): Single<String> = Single.just(getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE))
        .flatMap { sharedPreferences ->
            sharedPreferences.getStringSingle(SHARED_PREFERENCES_FIELD_BIOMETRIC_MNEMONIC)
                .flatMap { encryptedBiometricMnemonic ->
                    decryptBiometricSingle(encryptedBiometricMnemonic)
                }
                .onErrorResumeNext {
                    sharedPreferences.getStringSingle(SHARED_PREFERENCES_FIELD_FALLBACK_MNEMONIC)
                        .flatMap { encryptedFallbackMnemonic ->
                            decryptFallbackSingle(encryptedFallbackMnemonic)
                        }
                }
        }

    private fun createCipherSingle(): Single<Cipher> = Single
        .create { emitter ->
            try {
                val cipher = Cipher.getInstance(SPEC_CIPHER)
                emitter.onSuccess(cipher)
            } catch (e: Exception) {
                emitter.tryOnError(UnableToCreateCipherException)
            }
        }

    private fun secretKeySingle(
        keyName: String,
        authenticationRequired: Boolean
    ): Single<SecretKey> = Single
        .create<KeyStore> { emitter ->
            try {
                val keyStore = KeyStore.getInstance(ANDROID_KEY_STORE)
                keyStore.load(null)

                emitter.onSuccess(keyStore)
            } catch (e: Exception) {
                emitter.tryOnError(UnableToLoadKeystoreException)
            }
        }
        .flatMap { keyStore ->
            Single
                .create<SecretKey> { emitter ->
                    try {
                        val key = keyStore.getKey(keyName, null) as SecretKey

                        emitter.onSuccess(key)
                    } catch (e: Exception) {
                        emitter.tryOnError(UnableToGetSecretKeyException)
                    }
                }
                .onErrorResumeNext {
                    Single
                        .create { emitter ->
                            try {
                                val keyGenParameterSpec = android.security.keystore.KeyGenParameterSpec.Builder(
                                    keyName,
                                    KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT)
                                    .setBlockModes(SPEC_BLOCK_MODE)
                                    .setEncryptionPaddings(SPEC_PADDING)
                                    .setUserAuthenticationRequired(authenticationRequired)
                                if (authenticationRequired) {
                                    keyGenParameterSpec.setInvalidatedByBiometricEnrollment(false)
                                }

                                val keyGenerator = KeyGenerator.getInstance(
                                    KeyProperties.KEY_ALGORITHM_AES, ANDROID_KEY_STORE)
                                keyGenerator.init(keyGenParameterSpec.build())

                                val key = keyGenerator.generateKey() as SecretKey
                                emitter.onSuccess(key)
                            } catch (e: Exception) {
                                emitter.tryOnError(UnableToGetSecretKeyException)
                            }
                        }
                }
        }

    private fun initCipherSingle(
        cipher: Cipher,
        mode: Int,
        key: SecretKey,
        data: ByteArray
    ): Single<Unit> = Single
        .create { emitter ->
            try {
                when (mode) {
                    Cipher.ENCRYPT_MODE -> cipher.init(mode, key)
                    Cipher.DECRYPT_MODE -> {
                        val iv = data.take(cipher.blockSize).toByteArray()
                        cipher.init(mode, key, IvParameterSpec(iv))
                    }
                    else -> throw RuntimeException()
                }
                emitter.onSuccess(Unit)
            } catch (e: Exception) {
                emitter.tryOnError(UnableToInitCipherException)
            }
        }

    private fun authenticationCallbackStream(): Flowable<Any> = Flowable
        .create({ emitter ->
            val authenticationCallback =
                object : BiometricPrompt.AuthenticationCallback() {
                    override fun onAuthenticationError(errorCode: Int,
                                                       errString: CharSequence) {
                        super.onAuthenticationError(errorCode, errString)
                        emitter.onError(BiometricAuthenticationFailureException)
                    }

                    override fun onAuthenticationSucceeded(result: BiometricPrompt.AuthenticationResult) {
                        super.onAuthenticationSucceeded(result)
                        emitter.onNext(result)
                    }
                }
            emitter.onNext(authenticationCallback)
        }, BackpressureStrategy.LATEST)

    private fun createBiometricPromptSingle(
        callback: BiometricPrompt.AuthenticationCallback,
        cipher: Cipher
    ): Single<Unit> = Single
        .create<Unit> { emitter ->
            try {
                val promptInfo = BiometricPrompt.PromptInfo.Builder()
                    .setTitle("Biometric authentication")
                    .setSubtitle("Unlock wallet using your biometric credentials")
                    .setNegativeButtonText("Cancel")
                    .setConfirmationRequired(true)
                    .build()

                val biometricPrompt = BiometricPrompt(this, callback)
                biometricPrompt.authenticate(promptInfo, BiometricPrompt.CryptoObject(cipher))
                emitter.onSuccess(Unit)
            } catch (e: Exception) {
                emitter.tryOnError(UnableToAuthenticateBiometricPromptException)
            }
        }

    @Suppress("NAME_SHADOWING")
    private fun processAuthenticationResultSingle(
        cipher: Cipher,
        result: BiometricPrompt.AuthenticationResult,
        data: ByteArray,
        mode: Int
    ): Single<ByteArray> = Single.just(mode)
        .flatMap { mode -> Single
            .create<ByteArray> { emitter ->
                try {
                    val dataWithoutIv =
                        when (mode) {
                            Cipher.ENCRYPT_MODE -> data
                            Cipher.DECRYPT_MODE -> data.drop(cipher.blockSize).toByteArray()
                            else -> throw RuntimeException()
                        }
                    emitter.onSuccess(dataWithoutIv)
                } catch (e: Exception) {
                    emitter.tryOnError(UnableToProcessAuthenticationResultException)
                }
            }
        }
        .flatMap { dataWithoutIv -> Single
            .create<ByteArray> { emitter ->
                try {
                    val data = result.cryptoObject!!.cipher!!.doFinal(dataWithoutIv)
                    emitter.onSuccess(data)
                } catch (e: Exception) {
                    emitter.tryOnError(UnableToProcessAuthenticationResultException)
                }
            }
        }
        .flatMap { data -> Single
            .create { emitter ->
                try {
                    val data =
                        when (mode) {
                            Cipher.ENCRYPT_MODE -> cipher.iv.plus(data)
                            Cipher.DECRYPT_MODE -> data
                            else -> throw RuntimeException()
                        }
                    emitter.onSuccess(data)
                } catch (e: Exception) {
                    emitter.tryOnError(UnableToProcessAuthenticationResultException)
                }
            }
        }

    private fun encryptBiometricSingle(text: String): Single<String> = Single.just(text.toByteArray())
        .flatMap { data ->
            createCipherSingle()
                .flatMap { cipher ->
                    secretKeySingle(KEYSTORE_KEY_MAIN, true)
                        .flatMap { secretKey ->
                            initCipherSingle(cipher, Cipher.ENCRYPT_MODE, secretKey, data)
                        }
                        .flatMapPublisher {
                            authenticationCallbackStream()
                                .switchMap { callbackResult ->
                                    when (callbackResult) {
                                        is BiometricPrompt.AuthenticationCallback -> {
                                            Flowable.just(Unit)
                                                .switchMapSingle {
                                                    createBiometricPromptSingle(callbackResult, cipher)
                                                }
                                                .switchMap {
                                                    Flowable.never()
                                                }
                                        }
                                        is BiometricPrompt.AuthenticationResult -> {
                                            Flowable.just(callbackResult)
                                        }
                                        else -> {
                                            Flowable.error(IllegalArgumentException())
                                        }
                                    }
                                }
                        }
                        .switchMapSingle { result ->
                            processAuthenticationResultSingle(cipher, result, data, Cipher.ENCRYPT_MODE)
                        }
                        .map { data ->
                            Base64.encodeToString(data, Base64.DEFAULT)
                        }
                        .firstOrError()
                }
        }

    private fun decryptBiometricSingle(text: String): Single<String> = Single.just(Base64.decode(text, Base64.DEFAULT))
        .flatMap { data ->
            createCipherSingle()
                .flatMap { cipher ->
                    secretKeySingle(KEYSTORE_KEY_MAIN, true)
                        .flatMap { secretKey ->
                            initCipherSingle(cipher, Cipher.DECRYPT_MODE, secretKey, data)
                        }
                        .flatMapPublisher {
                            authenticationCallbackStream()
                                .switchMap { callbackResult ->
                                    when (callbackResult) {
                                        is BiometricPrompt.AuthenticationCallback -> {
                                            Flowable.just(Unit)
                                                .switchMapSingle {
                                                    createBiometricPromptSingle(callbackResult, cipher)
                                                }
                                                .switchMap {
                                                    Flowable.never()
                                                }
                                        }
                                        is BiometricPrompt.AuthenticationResult -> {
                                            Flowable.just(callbackResult)
                                        }
                                        else -> {
                                            Flowable.error(IllegalArgumentException())
                                        }
                                    }
                                }
                        }
                        .switchMapSingle { result ->
                            processAuthenticationResultSingle(cipher, result, data, Cipher.DECRYPT_MODE)
                        }
                        .map { data ->
                            String(data)
                        }
                        .firstOrError()
                }
        }

    @Suppress("NAME_SHADOWING")
    private fun encryptFallbackSingle(text: String): Single<String> = Single.just(text.toByteArray())
        .flatMap { data ->
            createCipherSingle()
                .flatMap { cipher ->
                    secretKeySingle(KEYSTORE_KEY_FALLBACK, false)
                        .flatMap { secretKey ->
                            initCipherSingle(cipher, Cipher.ENCRYPT_MODE, secretKey, data)
                        }
                        .flatMap {
                            Single.create { emitter ->
                                try {
                                    val data = cipher.iv.plus(cipher.doFinal(data))
                                    val text = Base64.encodeToString(data, Base64.DEFAULT)
                                    emitter.onSuccess(text)
                                } catch (e: Exception) {
                                    emitter.tryOnError(UnableToProcessFallbackOperationException)
                                }
                            }
                        }
                }
        }

    @Suppress("NAME_SHADOWING")
    private fun decryptFallbackSingle(text: String): Single<String> = Single.just(Base64.decode(text, Base64.DEFAULT))
        .flatMap { data ->
            createCipherSingle()
                .flatMap { cipher ->
                    secretKeySingle(KEYSTORE_KEY_FALLBACK, false)
                        .flatMap { secretKey ->
                            initCipherSingle(cipher, Cipher.DECRYPT_MODE, secretKey, data)
                        }
                        .flatMap {
                            Single.create { emitter ->
                                try {
                                    val encrypted = data.drop(cipher.blockSize).toByteArray()
                                    val data = cipher.doFinal(encrypted)
                                    val text = String(data)
                                    emitter.onSuccess(text)
                                } catch (e: Exception) {
                                    emitter.tryOnError(UnableToProcessFallbackOperationException)
                                }
                            }
                        }
                }
        }

    object ChannelIllegalArgumentsException : Exception()
    object UnableToCreateCipherException : Exception()
    object UnableToInitCipherException : Exception()
    object UnableToLoadKeystoreException : Exception()
    object UnableToGetSecretKeyException : Exception()
    object BiometricAuthenticationFailureException : Exception()
    object UnableToAuthenticateBiometricPromptException : Exception()
    object UnableToProcessAuthenticationResultException : Exception()
    object UnableToProcessFallbackOperationException : Exception()
}
