import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start DroidConKe API Group Code

class DroidConKeAPIGroup {
  static String baseUrl = 'https://api.droidcon.co.ke/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Api-Authorization-Key': 'droidconKe-2020',
    'Authorization':
        'Bearer ZfbR9xctgNBRH5kSAqppbnwkvoJMarYdI2tf2yElGCitSaiAVQX5twHK8BWYjNLG9NNqqLv2FQ12ZTEB',
  };
  static SocialLoginCall socialLoginCall = SocialLoginCall();
  static OrganizingTeamCall organizingTeamCall = OrganizingTeamCall();
  static EventTypeCall eventTypeCall = EventTypeCall();
  static EventsLiveFeedsCall eventsLiveFeedsCall = EventsLiveFeedsCall();
  static FeedbackCall feedbackCall = FeedbackCall();
  static SpeakersCall speakersCall = SpeakersCall();
  static EventSponsorsCall eventSponsorsCall = EventSponsorsCall();
  static UserDetailsCall userDetailsCall = UserDetailsCall();
  static LogOutCall logOutCall = LogOutCall();
}

class SocialLoginCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Social Login',
      apiUrl: '${DroidConKeAPIGroup.baseUrl}/social_login/google',
      callType: ApiCallType.POST,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {
        'access_token': accessToken,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OrganizingTeamCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Organizing Team  ',
      apiUrl: '${DroidConKeAPIGroup.baseUrl}/organizers/droidcon-ke-645/team',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EventTypeCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Event Type',
      apiUrl: '${DroidConKeAPIGroup.baseUrl}/event_types',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EventsLiveFeedsCall {
  Future<ApiCallResponse> call({
    int? perPage,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Events Live Feeds',
      apiUrl: '${DroidConKeAPIGroup.baseUrl}/events/droidconke-2022-281/feeds',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FeedbackCall {
  Future<ApiCallResponse> call({
    String? feedback = '',
    int? rating,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Feedback',
      apiUrl:
          '${DroidConKeAPIGroup.baseUrl}/events/droidconke-2022-281/feedback',
      callType: ApiCallType.POST,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {
        'feedback': feedback,
        'rating': rating,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SpeakersCall {
  Future<ApiCallResponse> call({
    int? perPage,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Speakers',
      apiUrl:
          '${DroidConKeAPIGroup.baseUrl}/events/droidconke-2022-281/speakers',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EventSponsorsCall {
  Future<ApiCallResponse> call({
    int? perPage,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Event Sponsors',
      apiUrl:
          '${DroidConKeAPIGroup.baseUrl}/events/droidconke-2022-281/sponsors',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserDetailsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'User Details',
      apiUrl: '${DroidConKeAPIGroup.baseUrl}/details',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LogOutCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'LogOut',
      apiUrl: '${DroidConKeAPIGroup.baseUrl}/logout',
      callType: ApiCallType.POST,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End DroidConKe API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
