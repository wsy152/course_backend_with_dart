import 'dart:developer';

import 'package:shelf/shelf_io.dart' as  shelf_io;

import 'server_handler.dart';

void main()async {

  var server1  = ServerHandle();



  final server =  await shelf_io.serve(server1.handler,'localhost', 8080);


  log('Nosso servidor foi iniciado http://localhost:8080');
  
}
