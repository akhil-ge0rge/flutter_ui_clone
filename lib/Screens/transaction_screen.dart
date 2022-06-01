import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_clone/data/data.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.height / 1,
            height: MediaQuery.of(context).size.height / 1,
            color: const Color(0xff2e27d9),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 35, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                      Stack(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            size: 25,
                            color: Color(0xffa7b5bc),
                          ),
                          Positioned(
                            right: 3,
                            child: Container(
                              height: 12,
                              width: 12,
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfffb3e35),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Your Balance",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xff918eff),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "\$547,000.00",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color(0xffc4f3fe),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Image(
                              image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/5363/5363234.png",
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "\$5,000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff051f4c),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Expense",
                              style: TextStyle(
                                  color: Color(0xff5f909c),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color(0xffffe7d6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Image(
                              image: AssetImage("assets/piggy.png"),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "\$15,000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff051f4c),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Spend to Goals",
                              style: TextStyle(
                                  color: Color(0xff9e836f),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color(0xff2e27d9),
              child: Container(
                width: MediaQuery.of(context).size.height / 1,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Transactions",
                            style: TextStyle(
                              color: Color(0xff2e4866),
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 65,
                            decoration: BoxDecoration(
                              color: const Color(0xffeef1fe),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                                child: Text(
                              "See All",
                              style: TextStyle(
                                color: Color(0xff194791),
                                fontSize: 15,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 30, top: 0, right: 30, bottom: 5),
                      height: MediaQuery.of(context).size.height / 2.8,
                      width: MediaQuery.of(context).size.height / 1,
                      // color: Colors.amber,
                      child: ListView.builder(
                        itemCount:
                            transactions.length < 3 ? transactions.length : 3,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(bottom: 5, top: 5),
                                child: ListTile(
                                  style: ListTileStyle.list,
                                  leading: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      transactions[index]["icon"],
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: Text(
                                    transactions[index]['title'],
                                    style: const TextStyle(
                                        color: Color(0xff2a3d50), fontSize: 16),
                                  ),
                                  subtitle: Text(
                                    transactions[index]['subtitle'],
                                    style: const TextStyle(
                                        color: Color(0xff939fb0), fontSize: 15),
                                  ),
                                  trailing: Text(
                                    transactions[index]['amount'],
                                    style: const TextStyle(
                                        color: Color(0xff16283c), fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
