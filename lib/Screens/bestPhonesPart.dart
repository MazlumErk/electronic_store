import 'package:flutter/material.dart';
import 'package:electronic_store/Data/bestPhones.dart';
//Style
import 'package:electronic_store/Styles/Colors.dart';
import 'package:electronic_store/Styles/TextStyles.dart';

class BestPhones extends StatelessWidget {
  const BestPhones({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 100),
      itemCount: bestPhones.length,
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
                    title: Text(bestPhones[index].phoneName),
                    content: Column(
                      children: [
                        SizedBox(
                          height: 300,
                          child: Image(
                            image: AssetImage('assets/images/${bestPhones[index].phoneImage}'),
                          ),
                        ),
                        const Divider(thickness: 5, color: seconColor),
                        Row(
                          children: [
                            const Text(
                              'Ram: ',
                              style: phoneInfoTitleTextStyle,
                            ),
                            Text(bestPhones[index].ram),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Storage: ', style: phoneInfoTitleTextStyle),
                            Text(bestPhones[index].storage),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Inch: ', style: phoneInfoTitleTextStyle),
                            Text(bestPhones[index].inch),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Fast Charge: ',
                                style: phoneInfoTitleTextStyle),
                            Text(bestPhones[index].fastCharge),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Battery: ', style: phoneInfoTitleTextStyle),
                            Text(bestPhones[index].battery),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Score: ', style: phoneInfoTitleTextStyle),
                            Text(bestPhones[index].score),
                          ],
                        ),
                        const Divider(thickness: 5, color: seconColor),
                      ],
                    ),
                    actions: [
                      TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: seconColor),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
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
                            'assets/images/${bestPhones[index].phoneImage}'),
                      ),
                    ),
                    Text(
                      bestPhones[index].phoneName,
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
