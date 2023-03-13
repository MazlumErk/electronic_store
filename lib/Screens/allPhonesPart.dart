import 'package:flutter/material.dart';
import 'package:electronic_store/Data/allPhones.dart';

// Style
import 'package:electronic_store/Styles/Colors.dart';
import 'package:electronic_store/Styles/TextStyles.dart';

class AllPhones extends StatelessWidget {
  const AllPhones({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 100),
      itemCount: allPhones.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: alerDialogBackgroundColor,
                    title: Text(allPhones[index].phoneName),
                    content: Column(
                      children: [
                        SizedBox(
                          height: 300,
                          child: Image(
                            image: AssetImage(
                                'assets/images/' + allPhones[index].phoneImage),
                          ),
                        ),
                        Divider(thickness: 5, color: seconColor),
                        Row(
                          children: [
                            Text(
                              'Ram: ',
                              style: phoneInfoTitleTextStyle,
                            ),
                            Text(allPhones[index].ram),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Storage: ', style: phoneInfoTitleTextStyle),
                            Text(allPhones[index].storage),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Inch: ', style: phoneInfoTitleTextStyle),
                            Text(allPhones[index].inch),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Fast Charge: ',
                                style: phoneInfoTitleTextStyle),
                            Text(allPhones[index].fastCharge),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Battery: ', style: phoneInfoTitleTextStyle),
                            Text(allPhones[index].battery),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Score: ', style: phoneInfoTitleTextStyle),
                            Text(allPhones[index].score),
                          ],
                        ),
                        Divider(thickness: 5, color: seconColor),
                      ],
                    ),
                    actions: [
                      TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: seconColor),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: themeColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image(
                        height: 130,
                        image: AssetImage(
                            'assets/images/${allPhones[index].phoneImage}'),
                      ),
                    ),
                    Text(
                      allPhones[index].phoneName,
                      style: phoneNameTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
