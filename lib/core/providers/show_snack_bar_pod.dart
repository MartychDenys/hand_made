import 'package:flutter/material.dart';
import 'package:hand_made/core/shared/show_snack_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final showSnackBarPod = Provider.family<void, BuildContext>(
  (ref, context) => ShowSnackBar.show(context),
);
