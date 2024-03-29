import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IlluminationConfig extends StatefulWidget {
  static const routeName = '/illumination-config';

  @override
  _IlluminationConfigState createState() => _IlluminationConfigState();
}

class _IlluminationConfigState extends State<IlluminationConfig> {
  bool illuminationStatus = false;
  var _isLoading = false;

  @override
  void initState() {
    _isLoading = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 420.0;
    double defaultScreenHeight = 830.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
        body: Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius:
              new BorderRadius.only(bottomRight: const Radius.circular(150.0)),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(0),
            color: Color.fromRGBO(144, 201, 82, 1),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment(ScreenUtil.instance.setWidth(-0.8),
                      ScreenUtil.instance.setHeight(0)),
                  margin: EdgeInsets.only(
                      top: ScreenUtil.instance.setHeight(40.0),
                      left: ScreenUtil.instance.setWidth(0)),
                  child: Text(
                    "Iluminação",
                    style: TextStyle(
                        fontSize: ScreenUtil.instance.setSp(45),
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: ScreenUtil.instance.setWidth(350),
                  height: ScreenUtil.instance.setHeight(75),
                  alignment: Alignment(ScreenUtil.instance.setWidth(-0.5),
                      ScreenUtil.instance.setHeight(0)),
                  color: Color.fromRGBO(166, 166, 166, 1),
                  margin:
                      EdgeInsets.only(top: ScreenUtil.instance.setHeight(50.0)),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(
                                  left: ScreenUtil.instance.setWidth(0.0)),
                              width: ScreenUtil.instance.setWidth(60.0),
                              child: Checkbox(
                                activeColor: Color.fromRGBO(144, 201, 82, 1),
                                checkColor: Colors.white,
                                value: illuminationStatus,
                                onChanged: (bool value) {
                                  setState(() {
                                    illuminationStatus = value;
                                  });
                                },
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: ScreenUtil.instance.setWidth(05.0)),
                            width: ScreenUtil.instance.setWidth(250.0),
                            child: Text(
                              'Iluminação sob demanda',
                              style: TextStyle(
                                  fontSize: ScreenUtil.instance.setSp(24.0),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(ScreenUtil.instance.setWidth(-0.5),
                          ScreenUtil.instance.setHeight(0)),
                      color: Colors.white,
                      margin: EdgeInsets.only(
                          top: ScreenUtil.instance.setHeight(0.0),
                          left: ScreenUtil.instance.setWidth(35.0)),
                      padding: EdgeInsets.all(ScreenUtil.instance.setWidth(30)),
                      width: ScreenUtil.instance.setWidth(350),
                      height: ScreenUtil.instance.setHeight(220),
                      child: Text(
                        'A iluminação sempre é ativada quando os sensores detectam a falta de luz.\n\nVocê será notificado quando a iluminação for ativada.',
                        style: TextStyle(
                            fontSize: ScreenUtil.instance.setSp(23.0),
                            fontWeight: FontWeight.w400,
                            color: Color(0xff575757)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
