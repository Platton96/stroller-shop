import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stroller_shop/services/assistant/obj/chat_request_body_obj.dart';
import 'package:stroller_shop/services/assistant/response/chat_response_obj.dart';

export 'obj/chat_action_obj.dart';
export 'obj/chat_action_type_obj.dart';
export 'obj/chat_request_body_obj.dart';
export 'obj/chat_search_obj.dart';
export 'response/chat_response_obj.dart';

part 'assistant_service.g.dart';

@lazySingleton
@RestApi()
abstract class AssistantService {
  @factoryMethod
  factory AssistantService(Dio dio) = _AssistantService;

  @POST('/api/v1/chat')
  Future<ChatResponseObj> chat(@Body() ChatRequestBodyObj body, @DioOptions() Options options);
}
