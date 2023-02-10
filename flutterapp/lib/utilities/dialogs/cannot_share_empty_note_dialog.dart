import 'package:flutter/material.dart';
import 'package:flutterapp/extensions/buildcontext/loc.dart';
import 'package:flutterapp/utilities/dialogs/generic_dialog.dart';

Future<void> showCannotShareEmptyNoteDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: context.loc.sharing,
    content: context.loc.cannot_share_empty_note_prompt,
    optionsBuilder: () => {
      context.loc.ok: null,
    },
  );
}
