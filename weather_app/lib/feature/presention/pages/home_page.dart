import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/feature/presention/widgets/city_name_date_widget.dart';
import 'package:weather_app/feature/presention/widgets/search_setting_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
    bool isTrue = false;
    void logic() {
      setState(() {
        isTrue = !isTrue;
      });
    }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF16C4EA),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              const SearchSettingWidget(),
              const SizedBox(
                height: 20,
              ),
              const CityNmaeDateWidget(),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/cludy.svg',
                  ),
                  Column(
                    children: [
                      const Text(
                        '19',
                        style: TextStyle(
                            fontSize: 74.17,
                            color: Color(0xFF313341),
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                          

                          });
                        },
                        child: Text(
                          'Rainy',
                          style: TextStyle(
                            color: isTrue ? Colors.white : Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
