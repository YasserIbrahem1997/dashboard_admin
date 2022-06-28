import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../constants.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                height: 140,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'Top Student',
                      style:
                          TextStyle(fontSize: 18,color: bgColorDashbord),
                    ),
                    SizedBox(height: 10,),

                    Expanded(child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FixedTimeline.tileBuilder(
                          direction: Axis.horizontal,
                          builder: TimelineTileBuilder.connectedFromStyle(
                            connectionDirection: ConnectionDirection.before,
                            contentsAlign: ContentsAlign.alternating,
                            oppositeContentsBuilder: (context, index) =>
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius:20,
                                    child: Container(
                                      width: 30,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/man.webp',

                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            connectorStyleBuilder: (context, index) =>
                            ConnectorStyle.solidLine,
                            indicatorStyleBuilder: (context, index) =>
                            IndicatorStyle.dot,
                            firstConnectorStyle: ConnectorStyle.dashedLine,
                            lastConnectorStyle: ConnectorStyle.dashedLine,
                            itemCount: 8,
                          ),
                        )
                      ],
                    ), )

                  ],
                ))),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
              height: 140,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondaryColor,

              ),
              child: Column(
                children: [
                  Text(
                    'Top Author',
                    style: TextStyle(fontSize: 18,color: bgColorDashbord),
                  ),
                  SizedBox(height: 10,),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FixedTimeline.tileBuilder(
                        direction: Axis.horizontal,
                        builder: TimelineTileBuilder.connectedFromStyle(
                          connectionDirection: ConnectionDirection.before,
                          contentsAlign: ContentsAlign.alternating,
                          oppositeContentsBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 18,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/man.webp'
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          connectorStyleBuilder: (context, index) =>
                          ConnectorStyle.solidLine,
                          indicatorStyleBuilder: (context, index) =>
                          IndicatorStyle.dot,
                          firstConnectorStyle: ConnectorStyle.dashedLine,
                          lastConnectorStyle: ConnectorStyle.dashedLine,
                          itemCount: 8,
                        ),
                      )
                    ],
                  ), )

                ],
              )),
        ),
      ],
    );
  }
}
