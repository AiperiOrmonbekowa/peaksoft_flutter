import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchSettingWidget extends StatelessWidget {
  const SearchSettingWidget({
    super.key, 
  }); 
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
      SvgPicture.asset('assets/icons/search.svg'), 
      SvgPicture.asset('assets/icons/more_vert.svg'), 
    ], 
    );
  }
}
