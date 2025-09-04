import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ValueListenableBuilder<bool>(
        valueListenable: _dark,
        builder: (context, color, child) {
          return ValueListenableBuilder<double>(
            valueListenable: _widthFactor,
            builder: (context, factor, child) {
              return Scaffold(
                backgroundColor: _dark.value ? Colors.black : Colors.white,
                appBar: AppBar(
                  actions: [
                    Switch(
                      value: _dark.value,
                      onChanged: (value) {
                        _dark.value = value;
                      },
                    ),
                    DropdownButton<double>(
                      value: _widthFactor.value,
                      onChanged: (value) {
                        _widthFactor.value = value!;
                      },
                      items: [
                        DropdownMenuItem<double>(
                          value: 0.5,
                          child: Text('Size: 50%'),
                        ),
                        DropdownMenuItem<double>(
                          value: 0.75,
                          child: Text('Size: 75%'),
                        ),
                        DropdownMenuItem<double>(
                          value: 1.0,
                          child: Text('Size: 100%'),
                        ),
                      ],
                    ),
                  ],
                ),
                body: Center(
                  child: Container(
                    width:
                        MediaQuery.of(context).size.width * _widthFactor.value,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [StitchDesign()],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class StitchDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 844,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 705,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 16,
                              right: 16,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 18,
                                                height: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 23,
                                    padding: const EdgeInsets.only(right: 48),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            '게임 설명',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF161611),
                                              fontSize: 18,
                                              fontFamily: 'Plus Jakarta Sans',
                                              height: 0.07,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 537,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 358,
                                          height: 537,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://picsum.photos/358/537",
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 64,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 16,
                              right: 16,
                              bottom: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    '당신이 아기 고양이를 발견했습니다. 고양이를 키우세요. 고양이는 사실 사람의 말을 조금 할 수 있어요.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF161611),
                                      fontSize: 16,
                                      fontFamily: 'Plus Jakarta Sans',
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 84,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF4D63D),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '닫기',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF161611),
                                                  fontSize: 14,
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  height: 0.11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 20,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
