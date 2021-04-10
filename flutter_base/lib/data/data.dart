import 'package:flutter_base/data/local/db/local_db.dart';
import 'package:flutter_base/data/local/db/local_db_impl.dart';
import 'package:flutter_base/data/remote/api/api.dart';
import 'package:flutter_base/data/remote/api/api_impl.dart';

final LocalDb localDb = LocalDbImpl();
final Api api = ApiImpl();