import 'package:jaspr/jaspr.dart';

import '../components/button.dart';
import '../components/contact_info.dart';
import '../components/cta.dart';
import '../components/icon_button.dart';
import '../components/page_header.dart';
import '../constants/styles.dart';
import '../data/contact_raw.dart';
import '../layout/page.dart';
import '../model/export.dart';

@client
class ContactUs extends StatelessComponent {
  const ContactUs({super.key});
  static Header get header => Header.fromMap(contactHeader);

  static Header get cta => Header.fromMap(contactCTA);

  static List<String> media = [
    "fa fa-facebook-square",
    "fa fa-linkedin-square",
    "fa fa-twitter",
  ];

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      classes: "page ${St.py_50}",
      [
        div(classes: "flex flex-col self-stretch", [
          PageHeader(header),
          section(classes: St.gap_30, [
            div(
              classes: "flex flex-col items-start self-stretch p-20 gap-20 rounded-b-xl bg-dark-green-15 t:flex-row l:gap-30 l:px-105 l:py-50 d:gap-40 d:px-271",
              [const ContactButton()],
            ),
            div(
              id: "Form Container",
              classes: "flex flex-col l:flex-row justify-center items-start self-stretch rounded-xl border border-green-85 bg-green-95 p-30 l:p-60 d:p-80 ${St.gap_30} ",
              [
                div(
                  id: "Form",
                  classes: "flex flex-1 flex-col items-start self-stretch gap-40 d:gap-50 ",
                  [
                    form(
                      id: "Form Element",
                      classes: "flex flex-col items-start self-stretch gap-20 d:gap-30",
                      [
                        div(classes: "flex items-start self-stretch gap-20 d:gap-30", [
                          label(
                            classes: "flex flex-1 flex-col items-start self-stretch gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                            [
                              text("First Name"),
                              input(
                                classes: "flex items-center self-stretch p-20 rounded-md border border-green-80 bg-green-90",
                                type: InputType.text,
                                attributes: {"placeholder": "Enter your First Name"},
                                name: "First Name",
                                [],
                              )
                            ],
                          ),
                          label(
                            classes: "flex flex-1  flex-col items-start self-stretch gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                            [
                              text("Last Name"),
                              input(
                                classes: "flex items-center self-stretch p-20 rounded-md border border-green-80 bg-green-90",
                                type: InputType.text,
                                attributes: {"placeholder": "Enter your Last Name"},
                                name: "Last Name",
                                [],
                              )
                            ],
                          ),
                        ]),
                        label(
                          classes: "flex flex-col items-start self-stretch gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                          [
                            text("Phone Number"),
                            input(
                              classes: "flex items-center self-stretch p-20 rounded-md border border-green-80 bg-green-90",
                              type: InputType.number,
                              attributes: {"placeholder": "Enter your Phone Number"},
                              name: "Phone Number",
                              [],
                            )
                          ],
                        ),
                        label(
                          classes: "flex flex-col items-start self-stretch gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                          [
                            text("Message"),
                            textarea(
                              classes: "flex items-center self-stretch p-20 rounded-md border border-green-80 bg-green-90",
                              placeholder: "Enter your Message",
                              attributes: {"maxlength": "250"},
                              rows: 4,
                              name: "Phone Number",
                              [],
                            ),
                            span(
                              classes: "self-end text-[14px] text-gray-40",
                              [text("Max 250 Chars")],
                            )
                          ],
                        ),
                      ],
                    ),
                    Button(
                      classes: "self-stretch",
                      type: ButtonType.submit,
                      [text("Submit")],
                    )
                  ],
                ),
                div(
                  id: "Sub Container",
                  classes: "flex flex-1 flex-col items-start self-stretch gap-20 d:gap-30",
                  [
                    iframe(
                      classes: "flex self-stretch flex-1 bg-dark-green-15 rounded-md",
                      src: "https://www.openstreetmap.org/export/embed.html?bbox=110.37651389837266%2C-7.770948205147681%2C110.37856847047807%2C-7.769449329031686&amp;layer=mapnik",
                      [],
                    ),
                    div(
                      classes: "flex self-end gap-20 d:gap-30",
                      [
                        for (var icon in media) MediaButton(classes: icon),
                      ],
                    )
                  ],
                ),
              ],
            )
          ]),
        ]),
        CTA(
          cta,
          buttonText: "Join us Now",
        ),
      ],
    );
  }
}
