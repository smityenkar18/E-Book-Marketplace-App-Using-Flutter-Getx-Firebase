import 'package:e_book_marketplace/Components/BackButton.dart';
import 'package:e_book_marketplace/Components/MultiLineTextFormField.dart';
import 'package:e_book_marketplace/Components/MyTextFormField.dart';
import 'package:flutter/material.dart';

class AddNewBookPage extends StatelessWidget {
  const AddNewBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 450,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyBackButton(),
                          Text(
                            "ADD NEW BOOK",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                          ),
                          SizedBox(width: 70)
                        ],
                      ),
                      SizedBox(height: 60),
                      Container(
                        height: 190,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        child: Icon(
                          Icons.add,
                          size:30,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                   Row(children: [
                    
                     Expanded(
                       child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                              Icons.upload_sharp,
                              color: Theme.of(context).colorScheme.surface,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Book PDF",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ],
                          ),
                       ),
                     ),
                     SizedBox(width: 10),
                     Expanded(
                       child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                              Icons.upload_sharp,
                              color: Theme.of(context).colorScheme.surface,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Book Audio",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ],
                          ),
                       ),
                     ),
                   ],),
                   SizedBox(height: 10),
                   MyTextFormField(
                    hintText:  "Book Title",
                    icon: Icons.book,
                    controller: controller,
                  ),
                  SizedBox(height: 10),
                  MultiLineTextField(
                    hintText: "Book Description", controller: controller),
                  SizedBox(height: 10),
                   MyTextFormField(
                    hintText:  "Author Name",
                    icon: Icons.person,
                    controller: controller,
                  ),
                   SizedBox(height: 10),
                   MyTextFormField(
                    hintText:  "About Author",
                    icon: Icons.person,
                    controller: controller,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Price", 
                          icon: Icons.currency_rupee, 
                          controller: controller,
                        ),
                      ),
                      SizedBox(width: 10),
                       Expanded(
                        child: MyTextFormField(
                          hintText: "Pages", 
                          icon: Icons.book, 
                          controller: controller,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Language", 
                          icon: Icons.language, 
                          controller: controller,
                        ),
                      ),
                      SizedBox(width: 10),
                       Expanded(
                        child: MyTextFormField(
                          hintText: "Audio Length", 
                          icon: Icons.audiotrack, 
                          controller: controller,
                        ),
                      ),
                    ],
                  ),
                 SizedBox(height: 20),
                    Row(children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:  Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.primary,
                            )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                              Icons.close,
                              color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "CANCEL",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                       ),
                     ),
                     SizedBox(width: 10),
                     Expanded(
                       child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                              Icons.upload_sharp,
                              color: Theme.of(context).colorScheme.surface,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "POST",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ],
                          ),
                       ),
                     ),
                   ],),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
