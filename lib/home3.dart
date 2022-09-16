import 'package:agoco/result.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class home3 extends StatefulWidget {
  const home3({Key? key}) : super(key: key);

  @override
  _home3State createState() => _home3State();
}

class _home3State extends State<home3> {
  String m = 'متزوج';
  String a = 'أعزب';
  var nnn = '32';

  final TextEditingController _ra = TextEditingController();
  final TextEditingController _3a3 = TextEditingController();
  final TextEditingController _3gs = TextEditingController();
  final TextEditingController _33a = TextEditingController();
//  final TextEditingController _qm = TextEditingController();
  final TextEditingController _3sy = TextEditingController();
  final TextEditingController _qq = TextEditingController();
  final TextEditingController _3sm = TextEditingController();
  // final TextEditingController _7e = TextEditingController();
  final TextEditingController _3a = TextEditingController();
  var _dropDownValue = '32';
  var _dropDownValue2 = 'أعــزب';
  var fff7e = 1;

  bool visi0 = true;
  bool visi1 = false;

  void initState() {
    super.initState();
    _33a.text = 0.toString();
    _3sy.text = 2.toString();
    _qq.text = 0.toString();
    _3sm.text = 0.toString();
    _3a.text = 0.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(

          //backgroundColor: Colors.red,
            extendBody: true,
            bottomNavigationBar: CurvedNavigationBar(
              animationDuration: const Duration(milliseconds: 400),
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: const Color(0xff228B22),
              color: const Color(0xff3CB371),
              height: 55,
              items: const [
                ImageIcon(
                  AssetImage("assets/cal1.png"),
                  size: 40,
                  color: Colors.white,
                ),
                ImageIcon(
                  AssetImage("assets/sm1.png"),
                  size: 40,
                  color: Colors.white,
                ),

                //   Image.asset(
                //     'icons/cal.png',
                //     height: 40,
                //   ),
                //   Image.asset(
                //     'icons/sm.png',
                //     height: 40,
                //  ),
              ],
              onTap: (index) {
                setState(() {
                  if (index == 0) {
                    visi0 = true;
                    visi1 = false;
                  } else {
                    visi1 = true;
                    visi0 = false;
                  }
                });
              },
            ),
            //backgroundColor: Colors.tealAccent,
            appBar: AppBar(
              backgroundColor: const Color(0xff3CB371),
              title: Center(
                child: Stack(children: [
                  Visibility(
                    visible: visi0,
                    child: const Text('بيانات الراتب'),
                  ),
                  Visibility(
                    visible: visi1,
                    child: const Text('حول التطبيق'),
                  ),
                ]),
              ),
            ),
            body: Stack(children: [
              Visibility(
                visible: visi0,
                child: Container(
                  color: const Color(0xffCCFFCC),
                  width: double.infinity,
                  height: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            brow('الراتب الأساسي', _ra, 98.0,8),

                            sizBox(),

                            brow('عدد أيام العمل', _3a3, 106.0,2),
                            sizBox(),
                            brow('عدد الجمعة / السبت', _3gs, 71.0,2),
                            sizBox(),
                            brow('عدد العطلات والأعياد', _33a, 67.0,2),
                            sizBox(),
                            //brow('قيمة المبيت لليوم الواحد', _qm, 15.0),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 6, top: 2, bottom: 2, right: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xffB1EFBD),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xff00994C),
                                        spreadRadius: .5,
                                        blurRadius: 4,
                                        offset: Offset(
                                            3, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 4, right: 8, bottom: 5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'قيمة المبيت لليوم الواحد',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,color: Color(0xff195A09)),
                                      ),
                                      const SizedBox(
                                        width: 43.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black38,
                                                  width: 1),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 13),
                                            child: DropdownButton(
                                              alignment: Alignment.centerLeft,
                                              dropdownColor:
                                              const Color(0xff3CB371),
                                              underline: sizBox(),
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(20)),
                                              hint: _dropDownValue == null
                                                  ? const Text('32')
                                                  : Text(
                                                _dropDownValue,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff195A09),

                                                ),
                                              ),
                                              isExpanded: true,
                                              iconSize: 40.0,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              items: [
                                                '32',
                                                '39',
                                                '42',
                                                '46',
                                                '56',
                                                '68',
                                                '74',
                                                '81'
                                              ].map(
                                                    (val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    alignment:
                                                    AlignmentDirectional
                                                        .center,
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                },
                                              ).toList(),
                                              onChanged: (val) {
                                                setState(
                                                      () {
                                                    _dropDownValue =
                                                        val.toString();
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            sizBox(),
                            brow('عدد الساعات لليوم الواحد', _3sy, 42.0,2),
                            sizBox(),
                            brow('قسط القرض الشخصي', _qq, 55.0,8),
                            sizBox(),
                            brow('عدد الساعات المخصومة', _3sm, 50.0,2),
                            sizBox(),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 6, top: 2, bottom: 2, right: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xffB1EFBD),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xff00994C),
                                        spreadRadius: .5,
                                        blurRadius: 4,
                                        offset: Offset(
                                            3, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 4, right: 8, bottom: 5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'الحالة الإجتماعية',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,color: Color(0xff195A09)),
                                      ),
                                      const SizedBox(
                                        width: 100.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black38,
                                                  width: 1),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: DropdownButton(
                                              alignment: Alignment.centerLeft,
                                              dropdownColor:
                                              const Color(0xff3CB371),
                                              underline: sizBox(),
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(20)),
                                              hint: _dropDownValue2 == null
                                                  ? const Text('أعــزب')
                                                  : Text(
                                                _dropDownValue2,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff195A09),
                                                ),
                                              ),
                                              isExpanded: true,
                                              iconSize: 40.0,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              items: ['أعــزب', 'متزوج'].map(
                                                    (val2) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    alignment:
                                                    AlignmentDirectional
                                                        .center,
                                                    value: val2,
                                                    child: Text(val2),
                                                  );
                                                },
                                              ).toList(),
                                              onChanged: (val2) {
                                                setState(
                                                      () {
                                                    _dropDownValue2 =
                                                        val2.toString();
                                                    if (_dropDownValue2 ==
                                                        'أعــزب') {
                                                      _3a.text = '0';
                                                      fff7e = 1;
                                                    } else {
                                                      fff7e = 2;
                                                    }
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //brow('الحالة الإجتماعية', _7e, 50.0),
                            sizBox(),
                            brow('عدد الأبناء', _3a, 145.0,2),

                            const SizedBox(
                              height: 22.0,
                            ),
                              //    mm   ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom( shadowColor:  const Color(0xff00994C),
                                    backgroundColor: Colors.green, //background color of button
                                    side: const BorderSide(

                                        color: Colors.white54), //border width and color
                                    elevation: 10, //elevation of button
                                    shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                        borderRadius:
                                        BorderRadius.circular(150)),
                                    padding: const EdgeInsets.all(
                                        15) //content padding inside button
                                ),

                                //  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(const Color(0xff228B22)),
                                //     ),
                                onPressed: () {
                                  if (fff7e == 1) {
                                    _3a.text = 0.toString();
                                  }

                                  if ((_ra.text.isEmpty) ||
                                      (_3a3.text.isEmpty) ||
                                      (_3gs.text.isEmpty) ||
                                      (_33a.text.isEmpty) ||
                                      (_3sy.text.isEmpty) ||
                                      (_qq.text.isEmpty) ||
                                      (_3sm.text.isEmpty) ||
                                      (_3a.text.isEmpty)) {
                                    showAlertDialog(context);
                                  } else {
//###################//##########  أكواد المعادلات  #################################
                                    var r37m;
                                    double r3e;
                                    double rqgs;
                                    double rkht;
                                    double rkhd;
                                    double rkhg;
                                    double rkhdd = 0;
                                    double rqs;
                                    var rsr;
                                    //  double h3s3;
                                    // double h3sgs;

                                    double a3s3; // عدد الساعات العاديه
                                    double total; // الإجمالي
                                    double totalAfter;

                                    r37m = (int.parse(_3a3.text) *
                                        int.parse(
                                            _dropDownValue)); //  علاوه حقليه -- قيمة المبيت
                                    // _3a.text =(double.parse(_7e.text) + 2).toString();
                                    rqs = (((r37m + double.parse(_ra.text)) *
                                        12) /
                                        1950); // قيمة الساعه
                                    //_3a.text =nnn.toString();

                                    a3s3 = (double.parse(_3a3.text) -
                                        double.parse(_3gs.text) -
                                        double.parse(_33a.text)) *
                                        double.parse(_3sy.text) -
                                        double.parse(
                                            _3sm.text); //  عدد الساعات العاديه
                                    r3e = (rqs) *
                                        (((a3s3 * 1.5) +
                                            (double.parse(_33a.text) *
                                                16))); //  العمل الإضافي

                                    rqgs = (rqs) *
                                        (double.parse(_3gs.text) *
                                            8 *
                                            2); //  قيمة الجمع والأسبات
                                    String ffrqs = rqs.toStringAsFixed(3);

//الخصومات
                                    total = double.parse(_ra.text) +
                                        r37m +
                                        r3e +
                                        rqgs;

                                    rkht = total * 0.01; //  قيمة خصم التضامن

                                    rkhd = (total + 10) *
                                        0.0375; //  قيمة خصم الضمان

                                    rkhg = (total - rkht - rkhd) *
                                        0.03; //  قيمة خصم الجهاد
                                    String ffrkhg = rkhg.toStringAsFixed(3);
                                    String ffrkhd = rkhd.toStringAsFixed(3);
                                    String ffrkht = rkht.toStringAsFixed(3);
                                    String ffrqgs = rqgs.toStringAsFixed(3);
                                    String ffr3e = r3e.toStringAsFixed(3);
                                    //   _3a.text =fff7e.toString();

//*******************//***************************       خصم ضريبة الادخل      ****************
                                    totalAfter = (total -
                                        double.parse(ffrkht) -
                                        double.parse(ffrkhd));
                                    String fftotalAfter =
                                    totalAfter.toStringAsFixed(3);

                                    if (double.parse(fftotalAfter) <= 1000) {
                                      rkhdd = double.parse(fftotalAfter) * 0.05;
                                    } else {
                                      if (fff7e == 1) {
                                        //  _3a.text =5.toString();
                                        rkhdd = ((double.parse(fftotalAfter) -
                                            1150) *
                                            0.1) +
                                            50;
                                      } else {
                                        //  _3a.text =6.toString();

                                        rkhdd = ((double.parse(fftotalAfter) -
                                            1200 -
                                            (double.parse(_3a.text) *
                                                25)) *
                                            0.1) +
                                            50;
                                      }
                                    }
                                    String ffrkhdd = rkhdd.toStringAsFixed(3);

//*******************//***********************************

                                    rsr = (total -
                                        double.parse(ffrkht) -
                                        double.parse(ffrkhd) -
                                        double.parse(ffrkhg) -
                                        double.parse(ffrkhdd) -
                                        double.parse(_qq.text));

                                    rsr = rsr.toStringAsFixed(3);

                                    //   var nh = 5;
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return Result(
                                              fa7m: '$r37m',
                                              fae: ffr3e,
                                              fkt: ffrkht,
                                              fkg: ffrkhg,
                                              fkd: ffrkhd,
                                              fsr: '$rsr',
                                              fqs: ffrqs,
                                              fkdd: ffrkhdd,
                                              fgs: ffrqgs);
                                        }));

//###################//############################################################

                                  }

                                  //       var nh = 5;
                                  //       Navigator.push(context,
                                  //           MaterialPageRoute(builder: (context) {
                                  //         return Result(text: _ra.text, v3a: '$nh');
                                  //       }));
                                },
                                child: const Text(
                                  'حساب الراتب',
                                  style: TextStyle(fontSize: 20),
                                )),
                            const SizedBox(
                              height: 70.0,
                            ),
                          ],
                        ),
                      )),
                ),
              ),
              Visibility(
                  visible: visi1,
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/about.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: const [

                        ],
                      ),
                    ),
                  ))
            ])));
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(backgroundColor: const Color(0xffB1EFBD),
      title: const Center(child: Text("تنبيه",style: TextStyle(fontSize: 18,color: Color(0xff195A09) ))),
      content: const Text("الرجــاء إدخال المدخلات بالكــامل",style: TextStyle(fontSize: 18,color: Color(0xff195A09) ),),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  ////////////////////////////     الدوال    /////////////////////////////
  SizedBox sizBox() {
    return const SizedBox(
      height: 5,
    );
  }

  Padding brow(lblName, tv, sizBoxValue,max) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, top: 2, bottom: 2, right: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffB1EFBD),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff00994C),
                spreadRadius: .8,
                blurRadius: 4,
                offset: Offset(2.5, 2.5), // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 10),
          child: Row(
            children: [
              Text(
                '$lblName',
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color(0xff195A09)),
              ),
              SizedBox(
                width: sizBoxValue - 5,
              ),
              Expanded(
                child: TextFormField(
                  maxLength: max,
                  textAlign: TextAlign.center,
                  textAlignVertical: const TextAlignVertical(y: 1),
                  cursorHeight: 22,
                  textInputAction: TextInputAction.next,
                  controller: tv,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: .3,
                      color: Color(0xff195A09)
                  ),
                  decoration: const InputDecoration(counterText: '',
                      //  contentPadding: EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      )),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
