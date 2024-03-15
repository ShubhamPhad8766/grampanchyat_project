import 'package:dartz/dartz.dart';
import '../../constants/api_end_points.dart';
import '../../model/property_list_response_model/property_list_response_model.dart';
import '../../services/api/api_exceptions.dart';
import '../../services/api/api_manager.dart';
import '../../services/api/failure.dart';

class PropertyListRepo {
  final _apiManager = ApiManager();

  Future<Either<Failure, PropertyListResponseModel>> propertyListData(
      ) async {
    try {
      var jsonResponse = await _apiManager.get(
          "${ApiEndPoints.gpBaseUrl}${ApiEndPoints.propertyListing}");
      var response = PropertyListResponseModel.fromJson(jsonResponse);
      return right(response);
    } on AppException catch (error) {
      return left(ApiFailure(message: error.message));
    } catch (error) {
      return left(ApiFailure(message: error.toString()));
    }
  }
}
