
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

errorSnackBar(BuildContext context,String message,{String title = "Error"}){
 var snackBar = SnackBar(

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message:message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.failure,
    ),
  );
 globalSnackBar(context, message, snackBar);
}

successSnackBar(BuildContext context,String message,{String title = "Success"}){
  var snackBar = SnackBar(

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message:message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.success,
    ),
  );
  globalSnackBar(context, message, snackBar);
}

warningSnackBar(BuildContext context,String message,{String title = "Warning"}){
  var snackBar = SnackBar(

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message:message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.warning,
    ),
  );
  globalSnackBar(context, message, snackBar);
}

helpSnackBar(BuildContext context,String message,{String title = "Help"}){
  var snackBar = SnackBar(

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message:message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.help,
    ),
  );
  globalSnackBar(context, message, snackBar);
}

globalSnackBar(BuildContext context,String message, SnackBar snackBar){
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}