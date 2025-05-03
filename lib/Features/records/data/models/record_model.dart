import 'dart:io';

import 'package:uuid/uuid.dart';

class RecordModel {
   String  id;
   File ? image;
   String  ?note;
   String ?date;

  RecordModel({
    String? id,
     this.date,
     this.note,
     this.image,
  }) : id = id ?? const Uuid().v4();
}
