import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/provider/env_switch_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnvSwitchPage extends StatelessWidget {
  const EnvSwitchPage({Key? key}) : super(key: key);

  static const routeName = '/envSwitchPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Consumer(builder: (context, watch, _) {
          final envType = watch(envTypeProvider);
          return envType?.maybeWhen(data: (value) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await context.read(envSwitchProvider).setEnv("0");
                      },
                      child: ListTile(
                        title: const Text("Prod"),
                        leading: Radio(
                          value: 0,
                          groupValue: value,
                          onChanged: (value) async {
                            await context.read(envSwitchProvider).setEnv("0");
                          },
                          activeColor: AquaColors.topaz,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await context.read(envSwitchProvider).setEnv("1");
                      },
                      child: ListTile(
                        title: const Text("Regtest"),
                        leading: Radio(
                          value: 1,
                          groupValue: value,
                          onChanged: (value) async {
                            await context.read(envSwitchProvider).setEnv("1");
                          },
                          activeColor: AquaColors.topaz,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await context.read(envSwitchProvider).setEnv("2");
                      },
                      child: ListTile(
                        title: const Text("Testnet"),
                        leading: Radio(
                          value: 2,
                          groupValue: value,
                          onChanged: (value) async {
                            await context.read(envSwitchProvider).setEnv("2");
                          },
                          activeColor: AquaColors.topaz,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.sp),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        },
                        child: const Text('OK'),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: AquaColors.persianGreen),
                      ),
                    ),
                  ],
                );
              }, orElse: () {
                return Container();
              }) ??
              Container();
        }),
      ),
    );
  }
}
