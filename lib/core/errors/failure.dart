import 'package:dio/dio.dart';

abstract class Failure{
  final String message;
  Failure(this.message);
}
class ServerFailure extends Failure{
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException message){
    switch(message.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      case DioExceptionType.badResponse:
        if(message.response?.statusCode==400){
          return ServerFailure('Bad request');
        }else if(message.response?.statusCode==401||message.response?.statusCode==403){
          return ServerFailure('Unauthorized request');
        }else if(message.response?.statusCode==404){
          return ServerFailure('Not found');
        }else if(message.response?.statusCode==500){
          return ServerFailure('Internal server error');
        }
        return ServerFailure('Received invalid status code: ${message.response?.statusCode}');
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection to ApiServer failed due to internet connection');
      case DioExceptionType.unknown:
        if(message.message?.contains('SocketException')==true){
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error occured');
      default:
        return ServerFailure('Opps there was an error, please try again later.');
    }
    
  }
}