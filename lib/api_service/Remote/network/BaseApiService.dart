///I am using the base url https://fakestoreapi.com/ so that my full url will be 'https://fakestoreapi.com/products'.
abstract class BaseApiService {
  // final String baseUrl = "https://fakestoreapi.com/";
  final String baseUrl = "http://pg.dailefresh.com/WebApi/";
  Future<dynamic> getResponse(String url);
}
