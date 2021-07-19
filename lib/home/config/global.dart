import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

// Global logger is the app wide logging reference
var globalLogger = Logger();

// Global Storage is the app wide local persistant storage
late Box globalStorageBox;

String restApiEndPoint =
    "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=";
