
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServerHandle {

  Handler get handler {
    final router = Router();

    router.get('/', (Request request){
      return Response(200,body: 'Primeira Rota');

    });

    router.get('/ola/mundo/<usuario>/<sobrenome>',(Request req,String usuario, String sobrenome){
      return Response.ok('Ola Mundo!!! $usuario  $sobrenome');
    });


    // http://localhost:8080/query?nome=Edvaldo

    router.get('/query',(Request req){

      String? name = req.url.queryParameters['name'];
      String? idade = req.url.queryParameters['idade'];


      return Response.ok('Query eh: $name $idade');


    });



    return router;

  }

}