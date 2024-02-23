import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/components/app_bar.dart';
import 'package:flutter_10hr_tutorial/components/app_text_field.dart';
import 'package:flutter_10hr_tutorial/components/user_avatar.dart';
import 'package:flutter_10hr_tutorial/styles/app_colors.dart';
import 'package:flutter_10hr_tutorial/styles/app_text.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.male;
  //we can use this in radio button to link them
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToolWidget(
        title: "Edit Profile",
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //allows you to position widgets on top of each othrt
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const AppTextField(hint: "First name"),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: "Last name"),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: "Phone number"),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: "Location"),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: "Birthday"),

              const SizedBox(
                height: 16,
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //see inheritint text from bdy1 but adding extra text
                    Text(
                      "Gender",
                      style: AppText.body1.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Male"),
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.male,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Female"),
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Other"),
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.other,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
