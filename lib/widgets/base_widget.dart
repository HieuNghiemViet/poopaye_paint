import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:poopaye_paint/dialog_helper.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  Object? handleError(Object error) {
    switch (error.runtimeType) {
      case DioException _:
        final dioERR = error as DioException;
        switch (dioERR.type) {
          case DioException.connectionTimeout:
            DialogHelper.showAlert(
                context: context, message: 'Connect timeout');
            return error;
          default:
            return error;
        }
      default:
        DialogHelper.showAlert(
            context: context, message: 'Something went wrong!');
        return error;
    }
  }
}
