import UIKit
import Flutter
import LocalAuthentication
import RxSwift

let kKeyName = "MNEMONIC"

let kErrorOther = "other"
let kErrorNegative = "negative"

public func dummyMethodToEnforceBundling() {
    create_context(0)
    set_post_object_ptr(nil)
    notification_handler(nil, nil)

    GA_auth_handler_call(nil)
    GA_auth_handler_get_status(nil, nil)
    GA_connect(nil, nil)
    GA_convert_amount(nil, nil, nil)
    GA_convert_json_to_string(nil, nil)
    GA_convert_string_to_json(nil, nil)
    GA_create_pset(nil, nil, nil)
    GA_create_session(nil)
    GA_create_subaccount(nil, nil, nil)
    GA_create_transaction(nil, nil, nil)
    GA_destroy_auth_handler(nil)
    GA_destroy_json(nil)
    GA_destroy_session(nil)
    GA_destroy_string(nil)
    GA_generate_mnemonic_12(nil)
    GA_get_balance(nil, nil, nil)
    GA_get_fee_estimates(nil, nil)
    GA_get_networks(nil)
    GA_get_receive_address(nil, nil, nil)
    GA_get_subaccount(nil, 0, nil)
    GA_get_transactions(nil, nil, nil)
    GA_init(nil)
    GA_login_user(nil, nil, nil, nil)
    GA_refresh_assets(nil, nil, nil)
    GA_register_user(nil, nil, nil, nil)
    GA_send_transaction(nil, nil, nil)
    GA_set_notification_handler(nil, nil, nil)
    GA_sign_pset(nil, nil, nil)
    GA_sign_transaction(nil, nil, nil)
    GA_validate_mnemonic(nil, nil)
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    static let secKeyMnemonic = "mnemonic"
    static let secKeyBiometricEnabled = "biometric_enabled"
    static let secKeyPasscode = "passcode"
    
    static let protectionChannelMethodSkipProtection = "skipProtection"
    static let protectionChannelMethodGetProtectionSkipped = "getProtectionSkipped"
    static let protectionChannelMethodGetMnemonic = "getMnemonic"
    static let protectionChannelMethodSetMnemonic = "setMnemonic"
    static let protectionChannelMethodCanAuthenticate = "canAuthenticate"
    static let protectionChannelMethodGetBiometricEnabled = "getBiometricEnabled"
    static let protectionChannelMethodEnableBiometric = "enableBiometric"
    static let protectionChannelMethodDisableBiometric = "disableBiometric"
    static let protectionChannelMethodGetPasscode = "getPasscode"
    static let protectionChannelMethodEnablePasscode = "enablePasscode"
    static let protectionChannelMethodDisablePasscode = "disablePasscode"
    static let protectionChannelMethodRequiresBackup = "requiresBackup"
    static let protectionChannelMethodIgnoreBackup = "ignoreBackup"
    static let protectionChannelMethodClearStorage = "clearStorage"
    static let protectionChannelMethodGetEnv = "getEnv"
    static let protectionChannelMethodSetEnv = "setEnv"
    static let protectionChannelMethodGetTutorialEnabled = "getTutorialEnabled"
    static let protectionChannelMethodEnableTutorial = "enableTutorial"
    static let protectionChannelMethodDisableTutorial = "disableTutorial"


    static let protectionChannelArgumentMnemonic = "mnemonic"
    static let protectionChannelArgumentPasscode = "passcode"
    static let protectionChannelArgumentEnv = "env"
    
    static let userDefaultsFieldSkippedProtection = "skipped_protection"
    static let userDefaultsFieldIgnoresBackup = "ignores_backup"
    static let userDefaultsFieldEnv = "env_value"
    static let userDefaultsFieldTutorialEnabled = "tutorial_enabled"
    
  var utilsChannel: FlutterMethodChannel!
    
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    
    utilsChannel = FlutterMethodChannel(name: "io.aquawallet/utils",
                                              binaryMessenger: controller.binaryMessenger)

    utilsChannel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
        guard let self = self else {
            result(true)
            return;
        }
        switch call.method {
        case "addScreenshotNotificationObserver":
            NotificationCenter.default.addObserver(self, selector: #selector(self.screenshotTaken), name: UIApplication.userDidTakeScreenshotNotification, object: nil)
        case "removeScreenshotNotificationObserver":
            NotificationCenter.default.removeObserver(self)
        default: result(FlutterMethodNotImplemented)
        }
    })

    let _ = FlutterMethodChannel(name: "io.aquawallet/protection", binaryMessenger: controller.binaryMessenger)
        .callHandlerObservable()
        .flatMap({ (handler: (FlutterMethodCall, FlutterResult)) -> Single<Void?> in
            switch handler.0.method {
            case AppDelegate.protectionChannelMethodSkipProtection:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        Single<Void?>.create { single in
                            UserDefaults.standard.set(true, forKey: AppDelegate.userDefaultsFieldSkippedProtection)
                            let result = UserDefaults.standard.synchronize()
                            if (result) {
                                single(.success(nil))
                            } else {
                                single(.failure(UserDefaultsError.unableToSynchronize))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodGetProtectionSkipped:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        UserDefaults.standard.booleanSingle(forKey: AppDelegate.userDefaultsFieldSkippedProtection)
                    }
                    .flatMap({ (value) -> Single<Void?> in
                        value ? Single.just(nil) : Single.error(UserDefaultsError.nonExistingValue)
                    })
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { _ in
                        handler.1(nil)
                    }, onError: { error in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodGetMnemonic:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<String>.create { single in
                            do {
                                if let self = self {
                                    let data = try self.readSecItemData(forKey: AppDelegate.secKeyMnemonic, with: "Unlock mnemonic")
                                    guard let string = String(data: data, encoding: String.Encoding.utf8) else {
                                        throw InvalidMnemonicError();
                                    }
                                    single(.success(string))
                                }
                            } catch {
                                single(.failure(error))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .map { _ in
                        nil
                    }
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodSetMnemonic:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    guard let arguments = handler.0.arguments as? Dictionary<String, AnyObject>,
                                    let mnemonic = arguments[AppDelegate.protectionChannelArgumentMnemonic] as? String,
                                    let data = mnemonic.data(using: String.Encoding.utf8) else {
                                        throw FlutterBadArgumentsError()
                                    }
                                    
                                    try self.addSecItem(data: data, forKey: AppDelegate.secKeyMnemonic, withAccessControl: false)
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }

                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodGetEnv:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap{ (_: Void?) in
                        Single<String?>.create { single in
                            let env = UserDefaults.standard.string(forKey: AppDelegate.userDefaultsFieldEnv)
                            single(.success(env))
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { value in
                        handler.1(value)
                    }, onError: { error in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .map { _ in
                        nil
                    }
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodSetEnv:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                guard let arguments = handler.0.arguments as? Dictionary<String, AnyObject>,
                                      let env = arguments[AppDelegate.protectionChannelArgumentEnv] as? String else {
                                    throw FlutterBadArgumentsError()
                                }
                                UserDefaults.standard.set(env, forKey: AppDelegate.userDefaultsFieldEnv)
                                let result = UserDefaults.standard.synchronize()
                                if (result) {
                                    single(.success(nil))
                                } else {
                                    single(.failure(UserDefaultsError.unableToSynchronize))
                                }
                            } catch {
                                single(.failure(error))
                            }

                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodCanAuthenticate:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                let context = LAContext()
                                var error: NSError?
                                let canEvaluate = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
                                
                                if let error = error, !canEvaluate {
                                    throw error
                                }
                                single(.success(nil))
                            } catch {
                                single(.failure(error))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .map { _ in
                        nil
                    }
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodGetBiometricEnabled:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    let data = try self.readSecItemData(forKey: AppDelegate.secKeyBiometricEnabled)
                                    guard let _ = String(data: data, encoding: String.Encoding.utf8) else {
                                        throw InvalidMnemonicError();
                                    }
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .map { _ in
                        nil
                    }
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodEnableBiometric:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self](_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    let data = try self.readSecItemData(forKey: AppDelegate.secKeyMnemonic, with: "Unlock mnemonic")
                                    
                                    guard let enable = "".data(using: String.Encoding.utf8) else {
                                        throw FlutterBadArgumentsError()
                                    }
                                
                                    try self.addSecItem(data: enable, forKey: AppDelegate.secKeyBiometricEnabled, withAccessControl: false)
                                    
                                    try self.deleteSecItem(forKey: AppDelegate.secKeyPasscode)
                                    
                                    try self.addSecItem(data: data, forKey: AppDelegate.secKeyMnemonic, withAccessControl: true)
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }

                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodDisableBiometric:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    let data = try self.readSecItemData(forKey: AppDelegate.secKeyMnemonic, with: "Unlock mnemonic")
                                
                                    try self.deleteSecItem(forKey: AppDelegate.secKeyBiometricEnabled)
                                    
                                    try self.addSecItem(data: data, forKey: AppDelegate.secKeyMnemonic, withAccessControl: false)
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }
                            
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodGetPasscode:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<String>.create { single in
                            do {
                                if let self = self {
                                    let data = try self.readSecItemData(forKey: AppDelegate.secKeyPasscode)
                                    guard let passcode = String(data: data, encoding: String.Encoding.utf8) else {
                                        throw InvalidPasscodeError();
                                    }
                                    single(.success(passcode))
                                }
                            } catch {
                                single(.failure(error))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .map { _ in
                        nil
                    }
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodEnablePasscode:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    guard let arguments = handler.0.arguments as? Dictionary<String, AnyObject>,
                                          let passcode = arguments[AppDelegate.protectionChannelArgumentPasscode] as? String,
                                          let passcodeData = passcode.data(using: String.Encoding.utf8) else {
                                            throw FlutterBadArgumentsError()
                                        }
                                    let mnemonicData = try self.readSecItemData(forKey: AppDelegate.secKeyMnemonic, with: "Unlock mnemonic")
                                
                                    try self.addSecItem(data: passcodeData, forKey: AppDelegate.secKeyPasscode, withAccessControl: false)
                                    
                                    try self.deleteSecItem(forKey: AppDelegate.secKeyBiometricEnabled)
                                    
                                    try self.addSecItem(data: mnemonicData, forKey: AppDelegate.secKeyMnemonic, withAccessControl: false)
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }

                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodDisablePasscode:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    try self.deleteSecItem(forKey: AppDelegate.secKeyPasscode)
                                    
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }
                            
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodRequiresBackup:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        UserDefaults.standard.booleanSingle(forKey: AppDelegate.userDefaultsFieldIgnoresBackup)
                    }
                    .map { value in
                        !value
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .map { _ in
                        nil
                    }
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodIgnoreBackup:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        Single<Void?>.create { single in
                            UserDefaults.standard.set(true, forKey: AppDelegate.userDefaultsFieldIgnoresBackup)
                            let result = UserDefaults.standard.synchronize()
                            if (result) {
                                single(.success(nil))
                            } else {
                                single(.failure(UserDefaultsError.unableToSynchronize))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodClearStorage:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { [weak self] (_: Void?) in
                        Single<Void?>.create { single in
                            do {
                                if let self = self {
                                    try self.deleteSecItem()
                                    
                                    UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
                                    single(.success(nil))
                                }
                            } catch {
                                single(.failure(error))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodGetTutorialEnabled:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        UserDefaults.standard.booleanSingle(forKey: AppDelegate.userDefaultsFieldTutorialEnabled)
                    }
                    .flatMap({ (value) -> Single<Void?> in
                        value ? Single.just(nil) : Single.error(UserDefaultsError.nonExistingValue)
                    })
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { _ in
                        handler.1(nil)
                    }, onError: { error in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodEnableTutorial:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        Single<Void?>.create { single in
                            UserDefaults.standard.set(true, forKey: AppDelegate.userDefaultsFieldTutorialEnabled)
                            let result = UserDefaults.standard.synchronize()
                            if (result) {
                                single(.success(nil))
                            } else {
                                single(.failure(UserDefaultsError.unableToSynchronize))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            case AppDelegate.protectionChannelMethodDisableTutorial:
                return Single.just(nil)
                    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
                    .flatMap { (_: Void?) in
                        Single<Void?>.create { single in
                            UserDefaults.standard.set(false, forKey: AppDelegate.userDefaultsFieldTutorialEnabled)
                            let result = UserDefaults.standard.synchronize()
                            if (result) {
                                single(.success(nil))
                            } else {
                                single(.failure(UserDefaultsError.unableToSynchronize))
                            }
                            return Disposables.create()
                        }
                    }
                    .observe(on: MainScheduler.instance)
                    .do(onSuccess: { (value) in
                        handler.1(value)
                    }, onError: { (error) in
                        handler.1(FlutterError(code: "\(error)", message: nil, details: nil))
                    })
                    .catch { _ in
                        Single.just(nil)
                    }
            default: return Single.error(NotImplementedError())
                .do(onError: { (error) in
                    handler.1(FlutterMethodNotImplemented)
                })
                .catch { _ in
                    Single.just(nil)
                }
            }
        })
        .subscribe()
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    @objc
    func screenshotTaken() {
        self.utilsChannel.invokeMethod("screenshotTaken", arguments: nil)
    }
    
    private func readSecItemData(forKey name: String, with prompt: String? = nil) throws -> Data {
        var query: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
                                    kSecMatchLimit as String: kSecMatchLimitOne,
                                    kSecReturnAttributes as String: true,
                                    kSecAttrService as String: name,
                                    kSecReturnData as String: true]
        
        if let prompt = prompt {
            query[kSecUseOperationPrompt as String] = prompt
        }
        
        var item: CFTypeRef?
        let status = SecItemCopyMatching(query as CFDictionary, &item)
        guard status == errSecSuccess else { throw KeychainError.read }

        guard let existingItem = item as? [String: Any],
            let data = existingItem[kSecValueData as String] as? Data else {
            throw KeychainError.read
        }
        
        return data;
    }
    
    private func addSecItem(data: Data, forKey name: String, withAccessControl: Bool) throws -> Void {
        var query: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
                                    kSecAttrService as String: name,
                                    kSecValueData as String: data]
        if (withAccessControl) {
            query[kSecUseAuthenticationContext as String] = LAContext()
            
            var error: Unmanaged<CFError>?
            let access = SecAccessControlCreateWithFlags(
                nil,
                kSecAttrAccessibleWhenUnlockedThisDeviceOnly,
                .userPresence,
                &error)
            query[kSecAttrAccessControl as String] = access
            if let _ = error {
                throw KeychainError.add
            }
        }
        
        let spec: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
                                   kSecAttrService as String: name]
        let deleteStatus = SecItemDelete(spec as CFDictionary)
        guard deleteStatus == errSecSuccess || deleteStatus == errSecItemNotFound else {
            throw KeychainError.add
        }
        
        let addStatus = SecItemAdd(query as CFDictionary, nil)
        guard addStatus == errSecSuccess else {
            throw KeychainError.add
        }
    }
    
    private func deleteSecItem(forKey name: String? = nil) throws -> Void {
        var spec: [String: Any] = [kSecClass as String: kSecClassGenericPassword]
        if let name = name {
            spec[kSecAttrService as String] = name
        }
        
        let deleteStatus = SecItemDelete(spec as CFDictionary)
        guard deleteStatus == errSecSuccess || deleteStatus == errSecItemNotFound else {
            throw KeychainError.delete
        }
    }
    
    struct NotImplementedError : Error { }
    struct FlutterBadArgumentsError : Error { }
    struct InvalidMnemonicError : Error { }
    struct InvalidPasscodeError : Error { }
    enum KeychainError: Error {
        case read
        case add
        case delete
    }
}
