import 'package:jaspr/jaspr.dart';

import '../components/button.dart';
import '../components/contact_info.dart';
import '../components/cta.dart';
import '../components/icon_button.dart';
import '../components/page_header.dart';
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
      id: "contact-us",
      classes: "page col-start py-main",
      [
        section(classes: "col-start px-main", [
          PageHeader(header),
          div(classes: "col-start gap-10-30", [
            div(
              classes: "col-start p-20 gap-10-20 rounded-b-xl bg-dark-green-15 t:flex-row l:px-105 l:py-50  d:px-271",
              [const ContactButton()],
            ),
            div(
              id: "Form Container",
              classes: "col-start l:flex-row justify-center rounded-xl box-light-1 p-30 l:p-60 d:p-80 gap-10-30 ",
              [
                div(
                  id: "Form",
                  classes: "col-start grow gap-10-30 ",
                  [
                    form(
                      id: "Form Element",
                      classes: "col-start gap-10-20",
                      [
                        div(classes: "col-start l:flex-row gap-10-20", [
                          label(
                            classes: "col-start grow gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                            [
                              text("First Name"),
                              input(
                                classes: "row-center p-20 rounded-md box-light-4",
                                type: InputType.text,
                                attributes: {"placeholder": "Enter your First Name"},
                                name: "First Name",
                                [],
                              )
                            ],
                          ),
                          label(
                            classes: "col-start grow gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                            [
                              text("Last Name"),
                              input(
                                classes: "row-center p-20 rounded-md box-light-4",
                                type: InputType.text,
                                attributes: {"placeholder": "Enter your Last Name"},
                                name: "Last Name",
                                [],
                              )
                            ],
                          ),
                        ]),
                        label(
                          classes: "col-start gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                          [
                            text("Phone Number"),
                            input(
                              classes: "row-center p-20 rounded-md box-light-4",
                              type: InputType.number,
                              attributes: {"placeholder": "Enter your Phone Number"},
                              name: "Phone Number",
                              [],
                            )
                          ],
                        ),
                        label(
                          classes: "col-start gap-8 d:gap-10 text-[16px] font-semibold text-gray-30",
                          [
                            text("Message"),
                            textarea(
                              classes: "row-center p-20 rounded-md box-light-4",
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
                  classes: "col-start grow gap-10-20",
                  [
                    iframe(
                      classes: "flex self-stretch flex-1 bg-dark-green-15 rounded-md max-l:aspect-square",
                      src: "https://www.openstreetmap.org/export/embed.html?bbox=110.37651389837266%2C-7.770948205147681%2C110.37856847047807%2C-7.769449329031686&amp;layer=mapnik",
                      [],
                    ),
                    div(
                      classes: "flex self-end gap-10-20",
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
