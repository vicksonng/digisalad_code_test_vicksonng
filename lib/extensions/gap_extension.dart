import 'package:digisalad_code_test_vicksonng/style/unified_size.dart';
import 'package:gap/gap.dart';

extension GapExtension on Gap {
  Gap get xs => const Gap(xsSize);
  Gap get sm => const Gap(smSize);
  Gap get md => const Gap(mdSize);
  Gap get lg => const Gap(lgSize);
  Gap get xl => const Gap(xlSize);
}
