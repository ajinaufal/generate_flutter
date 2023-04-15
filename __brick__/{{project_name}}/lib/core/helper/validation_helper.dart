// import 'package:{{project_name}}/core/domain/entities/validation_entity.dart';
// import 'package:{{project_name}}/core/domain/entities/validation_entity.dart';

// class ValidationHelper {
//   ValidationEntity validatingString({required String rule, String? data}) {
//     switch (rule.split(':')[0]) {
//       case 'min':
//         if (rule.split(':')[1] == '') return false;
//         if ((data?.length ?? 0) >= double.parse(rule.split(':')[1])) {
//           return ValidationEntity(messages: null, validation: true);
//         } else {
//           return ValidationEntity(
//             messages: 'Must be at least ${rule.split(':')[1]} characters.',
//             validation: false,
//           );
//         }
//       case 'max':
//         if ((data?.length ?? 0) <= double.parse(rule.split(':')[1])) {
//           return ValidationEntity(messages: null, validation: true);
//         } else {
//           return ValidationEntity(
//             messages: 'Must be at maximum ${rule.split(':')[1]} characters.',
//             validation: false,
//           );
//         }
//       // case 'same':
//       //   if (data == rule.split(':')[1]) {
//       //     return ValidationEntity(messages: null, validation: true);
//       //   } else {
//       //     return ValidationEntity(
//       //       messages: 'Must be at maximum ${rule.split(':')[1]} characters.',
//       //       validation: false,
//       //     );
//       //   }
//       case 'email':
//         return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(data ?? '');
//       case 'required':
//         return data != '' || data != null;
//       case 'lowercase':
//         return RegExp(r'^[a-z]+$').hasMatch(data ?? '');
//       case 'uppercase':
//         return RegExp(r'^[A-Z]+$').hasMatch(data ?? '');
//       case 'between':
//         return false;
//       case 'numeric':
//         return RegExp(r'^-?[0-9]+$').hasMatch(data ?? '');
//       default:
//         return data != '' || data != null;
//     }
//   }
// }
