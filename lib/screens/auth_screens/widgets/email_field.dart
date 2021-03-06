// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

import '../../../business/auth_manager.dart';
import '../../../constants/strings/text_strings.dart';
import '../../../helper/validator.dart';
import '../../common_widgets/in_text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InTextFormField(
      label: const Text(TextStrings.EMAIL),
      validator: MultiValidator([
        Validations.validator.emailValidator,
        Validations.validator.requiredValidator
      ]),
      prefixIcon: const Icon(Icons.mail),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onChanged: (value) => context.read<AuthManager>().setEmail = value,
    );
  }
}
