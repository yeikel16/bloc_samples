import 'package:formz/formz.dart';

/// Validation error for Biography [FormzInput]
enum BiographyValidationError {
  /// Biography is empty
  empty,

  /// Biography is too long
  tooLong,
}

/// {@template biography_form_input}
/// Biography form input.
/// {@endtemplate}
class BiographyFormInput extends FormzInput<String, BiographyValidationError> {
  /// {@macro Biography_form_input}
  const BiographyFormInput.pure() : super.pure('');

  /// {@macro Biography_form_input}
  const BiographyFormInput.dirty([String value = '']) : super.dirty(value);

  @override
  BiographyValidationError? validator(String value) {
    if (value.isEmpty) return BiographyValidationError.empty;
    if (value.length > 140) return BiographyValidationError.tooLong;
  }
}
