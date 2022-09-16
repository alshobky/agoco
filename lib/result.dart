
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final TextEditingController a7m = TextEditingController();
  final TextEditingController ae = TextEditingController();
  final TextEditingController gs = TextEditingController();
  final TextEditingController kd = TextEditingController();
  final TextEditingController kt = TextEditingController();
  final TextEditingController kg = TextEditingController();
  final TextEditingController kdd = TextEditingController();
  final TextEditingController qs = TextEditingController();
  final TextEditingController sr = TextEditingController();

  final String fa7m;
  final String fae;
  final String fgs;
  final String fkd;
  final String fkt;
  final String fkg;
  final String fkdd;
  final String fqs;
  final String fsr;
//String bb ='Colors.black';

  Result(
      {Key? key,
        required this.fa7m,
        required this.fae,
        required this.fgs,
        required this.fkd,
        required this.fkt,
        required this.fkg,
        required this.fkdd,
        required this.fqs,
        required this.fsr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    a7m.text = fa7m;
    ae.text = fae;
    gs.text = fgs;
    kd.text = fkd;
    kt.text = fkt;
    kg.text = fkg;
    kdd.text = fkdd;
    qs.text = fqs;
    sr.text = fsr;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff3CB371),
          title: Row(
            children: const [SizedBox(width: 100,),
              Text('الراتب'),
            ],
          ),
        ),
        body: Visibility(
          child: Container(
            height: double.infinity,
            color: const Color(0xffCCFFCC),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    sizBox(),
                    sizBox(),

                    Container(

                      width: 250,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffB1EFBD),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff00994C),
                              spreadRadius: .5,
                              blurRadius: 4,
                              offset: Offset(2, 2), // changes position of shadow
                            ),
                          ]),

                      child: Column(
                        children:  [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'صـــافي الراتـب',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff195A09)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 45,
                              ),
                              Expanded(
                                child: TextFormField( enableInteractiveSelection: false,
                                  textAlignVertical: const TextAlignVertical(y: .7),
                                  textAlign: TextAlign.center,
                                  readOnly: true,
                                  controller: sr,
                                  style: const TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.bold,color: Color(0xff006600)),
                                  decoration:  const InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff006600),width: 2),borderRadius:  BorderRadius.all(Radius.circular(15.0)),



                                    ),

                                    //    border: OutlineInputBorder(

                                    //    borderRadius:
                                    //        BorderRadius.all(Radius.circular(15.0)),
                                    //          borderSide: BorderSide(
                                    //            color: Colors.black,
//
                                    //          ),


                                    //  )
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              const SizedBox(
                                width: 45,
                              ),
                            ],
                          ),  const SizedBox(
                            height: 10,
                          ),],
                      ),
                    ),
                    sizBox(),
                    sizBox(),


                    sizBox(),
                    sizBox(),
                    brow1('علاوة الحقل', a7m, 103.0),
                    sizBox(),
                    brow1('العمل الإضافي', ae, 78.0),
                    sizBox(),
                    brow1('جمعة / سبت', gs, 96.0,),
                    sizBox(),
                    brow2('خصم الضمان', kd, 92.0),
                    sizBox(),
                    brow2('خصم التضامن', kt, 87.0),
                    sizBox(),
                    brow2('خصم الجهاد', kg, 105.0),
                    sizBox(),
                    brow2('خصم ضريبة الدخل', kdd, 55.0),
                    sizBox(),
                    brow1('قيمة الساعة', qs, 100.0),
                    sizBox()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //////////////////////////   الدوال    //////////////////////////////

  SizedBox sizBox() {
    return const SizedBox(
      height: 5,
    );
  }

  Padding brow1(lblName, tv, sizBoxValue) {

    return Padding(
      padding: const EdgeInsets.only(left: 6, top: 2, bottom: 2, right: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffB1EFBD),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff00994C),
                spreadRadius: .5,
                blurRadius: 4,
                offset: Offset(3, 3), // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 10),
          child: Row(
            children: [
              Text(
                '$lblName',
                style:
                const TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color:  Color(0xff195A09)),
              ),
              SizedBox(
                width: sizBoxValue,
              ),
              Expanded(
                child: TextFormField(
                  enableInteractiveSelection: false,
                  textAlignVertical: const TextAlignVertical(y: 1),
                  textAlign: TextAlign.center,
                  readOnly: true,
                  controller: tv,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: .4,
                      color: Color(0xff195A09)

                  ),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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

  Padding brow2(lblName, tv, sizBoxValue) {

    return Padding(
      padding: const EdgeInsets.only(left: 6, top: 2, bottom: 2, right: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffB1EFBD),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff00994C),
                spreadRadius: .5,
                blurRadius: 4,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 10),
          child: Row(
            children: [
              Text(
                '$lblName',
                style:
                const TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Color(0xff195A09)),
              ),
              SizedBox(
                width: sizBoxValue,
              ),
              Expanded(
                child: TextFormField(
                  enableInteractiveSelection: false,
                  textAlignVertical: const TextAlignVertical(y: 1),
                  textAlign: TextAlign.center,
                  readOnly: true,
                  controller: tv,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: .4,
                    color: Color(0xffCC0000),
                  ),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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

////////////////////////////////////   الدوال //////////////////////////////////
