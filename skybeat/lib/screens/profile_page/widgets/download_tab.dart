import 'package:flutter/material.dart';
import 'package:skybeat/utils/size_config.dart';

class DownloadTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Color(0xFF131017),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xFF1B181F),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.blockSizeVertical * 22,),
            Text(
              "You haven\'t downloaded songs yet",
              style: TextStyle(
                color: Color(0xFF6D6977),
                fontSize: SizeConfig.safeBlockHorizontal * 3.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
