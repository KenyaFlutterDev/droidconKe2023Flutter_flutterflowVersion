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
  static EventSessionsCall eventSessionsCall = EventSessionsCall();
}

class SocialLoginCall {
  Future<ApiCallResponse> call({
    String? accessToken =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IjFlOTczZWUwZTE2ZjdlZWY0ZjkyMWQ1MGRjNjFkNzBiMmVmZWZjMTkiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiRXJpYyBNdWxpIiwicGljdHVyZSI6Imh0dHBzOi8vbGg2Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tTG1nRnNOQ0lfQ2MvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUNIaTNyZTNWMDVCaGlEdy1QZUVma1MxQnY4MXhyTGdvdy9zOTYtYy9waG90by5qcGciLCJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vZHJvaWRjb25rZS03MGQ2MCIsImF1ZCI6ImRyb2lkY29ua2UtNzBkNjAiLCJhdXRoX3RpbWUiOjE2NzkzMjgyMzYsInVzZXJfaWQiOiJsdVIwUlBxUFNIYlYxYXdLVVpIclZXekNHRDAzIiwic3ViIjoibHVSMFJQcVBTSGJWMWF3S1VaSHJWV3pDR0QwMyIsImlhdCI6MTY3OTMyODIzNiwiZXhwIjoxNjc5MzMxODM2LCJlbWFpbCI6ImVyaWNraW9rb21AZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZ29vZ2xlLmNvbSI6WyIxMDgwMDA3MzA4OTEyNzQyMjM0NzgiXSwiZW1haWwiOlsiZXJpY2tpb2tvbUBnbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJnb29nbGUuY29tIn19.pmwAu5HIwrrrrBoRJIAnkANUExPzAxC0laX4k1kKkMbg2vtxU1enX1WA-CdiyMTdZiFqo-_6x7RJFwiLRVfiHsWzP8fKXR2LpJ2Zj5xx2Ao0AWBWSkCpjaHgDT-EfgI82v_RGrGECAtF9vHSlZUFTCvuXr6QRg6uT0nI8X2MkU5jRu3b3irPQnMRJ8UZVsoU5d68FvQnzaJhMHsNiKHuzTf9cKlGXkwvBPjSgGA6HYatMsVrMEX3144E61ksjdTw5i_gstegWXdJfi58arC8hzthDA85mJJg38i2oXoOWb8rd-V4tH20iLw_ejElL2mWJA2G1tw7Exk0v6piKWk3dQ',
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

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.user.name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.user.email''',
      );
  dynamic avatar(dynamic response) => getJsonField(
        response,
        r'''$.user.avatar''',
      );
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
      params: {
        'include': "123k",
      },
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
    int? page,
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
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic speakersData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic speakerName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      );
  dynamic speakerTagline(dynamic response) => getJsonField(
        response,
        r'''$.data[:].tagline''',
        true,
      );
  dynamic speakerBiography(dynamic response) => getJsonField(
        response,
        r'''$.data[:].biography''',
        true,
      );
  dynamic speakerAvatar(dynamic response) => getJsonField(
        response,
        r'''$.data[:].avatar''',
        true,
      );
  dynamic speakersPerPage(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.per_page''',
      );
  dynamic speakerNextPage(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.next_page''',
      );
  dynamic speakerCurrentPage(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.current_page''',
      );
  dynamic speakersHasMorePages(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.has_more_pages''',
      );
  dynamic speakerNextPageUrl(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.next_page_url''',
      );
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

class EventSessionsCall {
  Future<ApiCallResponse> call({
    int? perPage,
    int? page,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Event Sessions',
      apiUrl:
          '${DroidConKeAPIGroup.baseUrl}/events/droidconke-2022-281/sessions',
      callType: ApiCallType.GET,
      headers: {
        ...DroidConKeAPIGroup.headers,
      },
      params: {
        'per_page': perPage,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic sessionTitle(dynamic response) => getJsonField(
        response,
        r'''$.data[:].title''',
        true,
      );
  dynamic sessionData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic sessionDescription(dynamic response) => getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      );
  dynamic sessionFormat(dynamic response) => getJsonField(
        response,
        r'''$.data[:].session_format''',
        true,
      );
  dynamic sessionLevel(dynamic response) => getJsonField(
        response,
        r'''$.data[:].session_level''',
        true,
      );
  dynamic sessioIsKeynote(dynamic response) => getJsonField(
        response,
        r'''$.data[:].is_keynote''',
        true,
      );
  dynamic sessionImage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].session_image''',
        true,
      );
  dynamic sessionSpeakers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].speakers''',
        true,
      );
  dynamic sessionSpeakersName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].speakers[:].name''',
        true,
      );
  dynamic sessionSpeakersTagline(dynamic response) => getJsonField(
        response,
        r'''$.data[:].speakers[:].tagline''',
        true,
      );
  dynamic sessionsSpeakersBiography(dynamic response) => getJsonField(
        response,
        r'''$.data[:].speakers[:].biography''',
        true,
      );
  dynamic sessionSpeakersAvatar(dynamic response) => getJsonField(
        response,
        r'''$.data[:].speakers[:].avatar''',
        true,
      );
  dynamic sessionPageCount(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.count''',
      );
  dynamic sessionNextPage(dynamic response) => getJsonField(
        response,
        r'''$.meta.paginator.next_page''',
      );
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
