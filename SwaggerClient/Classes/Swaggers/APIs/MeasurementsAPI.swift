//
// MeasurementsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class MeasurementsAPI: APIBase {
    /**
     Get measurement sources
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementSourcesGet(completion: ((data: MeasurementSource?, error: ErrorType?) -> Void)) {
        v1MeasurementSourcesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get measurement sources
     - GET /v1/measurementSources
     - Returns a list of all the apps from which measurement data is obtained.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "name" : "aeiou"
}, contentType=application/json}]

     - returns: RequestBuilder<MeasurementSource> 
     */
    public class func v1MeasurementSourcesGetWithRequestBuilder() -> RequestBuilder<MeasurementSource> {
        let path = "/v1/measurementSources"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<MeasurementSource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add a data source
     
     - parameter body: (body) An array of names of data sources you want to add. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementSourcesPost(body body: MeasurementSource, accessToken: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1MeasurementSourcesPostWithRequestBuilder(body: body, accessToken: accessToken).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add a data source
     - POST /v1/measurementSources
     - Add a life-tracking app or device to the QuantiModo list of data sources.
     - OAuth:
       - type: oauth2
       - name: oauth2
     
     - parameter body: (body) An array of names of data sources you want to add. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1MeasurementSourcesPostWithRequestBuilder(body body: MeasurementSource, accessToken: String? = nil) -> RequestBuilder<Void> {
        let path = "/v1/measurementSources"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get daily measurements for this user
     
     - parameter variableName: (query) Name of the variable you want measurements for 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter abbreviatedUnitName: (query) The unit your want the measurements in (optional)
     - parameter startTime: (query) The lower limit of measurements returned (Iso8601) (optional)
     - parameter endTime: (query) The upper limit of measurements returned (Iso8601) (optional)
     - parameter groupingWidth: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter groupingTimezone: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementsDailyGet(variableName variableName: String, accessToken: String? = nil, abbreviatedUnitName: String? = nil, startTime: String? = nil, endTime: String? = nil, groupingWidth: Int32? = nil, groupingTimezone: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil, completion: ((data: Measurement?, error: ErrorType?) -> Void)) {
        v1MeasurementsDailyGetWithRequestBuilder(variableName: variableName, accessToken: accessToken, abbreviatedUnitName: abbreviatedUnitName, startTime: startTime, endTime: endTime, groupingWidth: groupingWidth, groupingTimezone: groupingTimezone, limit: limit, offset: offset, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get daily measurements for this user
     - GET /v1/measurements/daily
     - Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "startTime" : "aeiou",
  "unit" : "aeiou",
  "source" : "aeiou",
  "humanTime" : {
    "timezone" : "aeiou",
    "timezone_type" : "",
    "date" : "aeiou"
  },
  "storedAbbreviatedUnitName" : "aeiou",
  "value" : 1.3579000000000001069366817318950779736042022705078125,
  "storedValue" : 1.3579000000000001069366817318950779736042022705078125,
  "abbreviatedUnitName" : "aeiou",
  "originalValue" : "",
  "originalAbbreviatedUnitName" : "aeiou",
  "variable" : "aeiou",
  "note" : "aeiou"
}, contentType=application/json}]
     
     - parameter variableName: (query) Name of the variable you want measurements for 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter abbreviatedUnitName: (query) The unit your want the measurements in (optional)
     - parameter startTime: (query) The lower limit of measurements returned (Iso8601) (optional)
     - parameter endTime: (query) The upper limit of measurements returned (Iso8601) (optional)
     - parameter groupingWidth: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter groupingTimezone: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)

     - returns: RequestBuilder<Measurement> 
     */
    public class func v1MeasurementsDailyGetWithRequestBuilder(variableName variableName: String, accessToken: String? = nil, abbreviatedUnitName: String? = nil, startTime: String? = nil, endTime: String? = nil, groupingWidth: Int32? = nil, groupingTimezone: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil) -> RequestBuilder<Measurement> {
        let path = "/v1/measurements/daily"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "variableName": variableName,
            "abbreviatedUnitName": abbreviatedUnitName,
            "startTime": startTime,
            "endTime": endTime,
            "groupingWidth": groupingWidth?.encodeToJSON(),
            "groupingTimezone": groupingTimezone,
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "sort": sort?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Measurement>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Delete a measurement
     
     - parameter body: (body) The startTime and variableId of the measurement to be deleted. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementsDeletePost(body body: MeasurementDelete, completion: ((data: CommonResponse?, error: ErrorType?) -> Void)) {
        v1MeasurementsDeletePostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Delete a measurement
     - POST /v1/measurements/delete
     - Delete a previously submitted measurement
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "message" : "aeiou",
  "status" : "",
  "success" : true
}, contentType=application/json}]
     
     - parameter body: (body) The startTime and variableId of the measurement to be deleted. 

     - returns: RequestBuilder<CommonResponse> 
     */
    public class func v1MeasurementsDeletePostWithRequestBuilder(body body: MeasurementDelete) -> RequestBuilder<CommonResponse> {
        let path = "/v1/measurements/delete"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CommonResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get measurements for this user
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter variableName: (query) Name of the variable you want measurements for (optional)
     - parameter variableCategoryName: (query) Name of the variable category you want measurements for (optional)
     - parameter source: (query) Name of the source you want measurements for (supports exact name match only) (optional)
     - parameter value: (query) Value of measurement (optional)
     - parameter lastUpdated: (query) The time that this measurement was created or last updated in the format \&quot;YYYY-MM-DDThh:mm:ss\&quot; (optional)
     - parameter unit: (query) The unit you want the measurements returned in (optional)
     - parameter startTime: (query) The lower limit of measurements returned (Epoch) (optional)
     - parameter createdAt: (query) The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
     - parameter updatedAt: (query) The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
     - parameter endTime: (query) The upper limit of measurements returned (Epoch) (optional)
     - parameter groupingWidth: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter groupingTimezone: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementsGet(accessToken accessToken: String? = nil, variableName: String? = nil, variableCategoryName: String? = nil, source: String? = nil, value: String? = nil, lastUpdated: String? = nil, unit: String? = nil, startTime: String? = nil, createdAt: String? = nil, updatedAt: String? = nil, endTime: String? = nil, groupingWidth: Int32? = nil, groupingTimezone: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil, completion: ((data: Measurement?, error: ErrorType?) -> Void)) {
        v1MeasurementsGetWithRequestBuilder(accessToken: accessToken, variableName: variableName, variableCategoryName: variableCategoryName, source: source, value: value, lastUpdated: lastUpdated, unit: unit, startTime: startTime, createdAt: createdAt, updatedAt: updatedAt, endTime: endTime, groupingWidth: groupingWidth, groupingTimezone: groupingTimezone, limit: limit, offset: offset, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get measurements for this user
     - GET /v1/measurements
     - Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "startTime" : "aeiou",
  "unit" : "aeiou",
  "source" : "aeiou",
  "humanTime" : {
    "timezone" : "aeiou",
    "timezone_type" : "",
    "date" : "aeiou"
  },
  "storedAbbreviatedUnitName" : "aeiou",
  "value" : 1.3579000000000001069366817318950779736042022705078125,
  "storedValue" : 1.3579000000000001069366817318950779736042022705078125,
  "abbreviatedUnitName" : "aeiou",
  "originalValue" : "",
  "originalAbbreviatedUnitName" : "aeiou",
  "variable" : "aeiou",
  "note" : "aeiou"
}, contentType=application/json}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter variableName: (query) Name of the variable you want measurements for (optional)
     - parameter variableCategoryName: (query) Name of the variable category you want measurements for (optional)
     - parameter source: (query) Name of the source you want measurements for (supports exact name match only) (optional)
     - parameter value: (query) Value of measurement (optional)
     - parameter lastUpdated: (query) The time that this measurement was created or last updated in the format \&quot;YYYY-MM-DDThh:mm:ss\&quot; (optional)
     - parameter unit: (query) The unit you want the measurements returned in (optional)
     - parameter startTime: (query) The lower limit of measurements returned (Epoch) (optional)
     - parameter createdAt: (query) The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
     - parameter updatedAt: (query) The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
     - parameter endTime: (query) The upper limit of measurements returned (Epoch) (optional)
     - parameter groupingWidth: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter groupingTimezone: (query) The time (in seconds) over which measurements are grouped together (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)

     - returns: RequestBuilder<Measurement> 
     */
    public class func v1MeasurementsGetWithRequestBuilder(accessToken accessToken: String? = nil, variableName: String? = nil, variableCategoryName: String? = nil, source: String? = nil, value: String? = nil, lastUpdated: String? = nil, unit: String? = nil, startTime: String? = nil, createdAt: String? = nil, updatedAt: String? = nil, endTime: String? = nil, groupingWidth: Int32? = nil, groupingTimezone: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil) -> RequestBuilder<Measurement> {
        let path = "/v1/measurements"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "variableName": variableName,
            "variableCategoryName": variableCategoryName,
            "source": source,
            "value": value,
            "lastUpdated": lastUpdated,
            "unit": unit,
            "startTime": startTime,
            "createdAt": createdAt,
            "updatedAt": updatedAt,
            "endTime": endTime,
            "groupingWidth": groupingWidth?.encodeToJSON(),
            "groupingTimezone": groupingTimezone,
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "sort": sort?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Measurement>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Post a new set or update existing measurements to the database
     
     - parameter body: (body) An array of measurements you want to insert. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementsPost(body body: MeasurementSet, accessToken: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        v1MeasurementsPostWithRequestBuilder(body: body, accessToken: accessToken).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Post a new set or update existing measurements to the database
     - POST /v1/measurements
     - You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"startTime\":1439389320,\"value\":\"3\"}, {\"startTime\":1439389319,\"value\":\"2\"}],\"name\":\"Acne (out of 5)\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]
     - OAuth:
       - type: oauth2
       - name: oauth2
     
     - parameter body: (body) An array of measurements you want to insert. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func v1MeasurementsPostWithRequestBuilder(body body: MeasurementSet, accessToken: String? = nil) -> RequestBuilder<Void> {
        let path = "/v1/measurements"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get measurements range for this user
     
     - parameter sources: (query) Enter source name to limit to specific source (varchar) (optional)
     - parameter user: (query) If not specified, uses currently logged in user (bigint) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1MeasurementsRangeGet(sources sources: String? = nil, user: Int32? = nil, completion: ((data: MeasurementRange?, error: ErrorType?) -> Void)) {
        v1MeasurementsRangeGetWithRequestBuilder(sources: sources, user: user).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get measurements range for this user
     - GET /v1/measurementsRange
     - Get Unix time-stamp (epoch time) of the user's first and last measurements taken.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "upperLimit" : "",
  "lowerLimit" : ""
}, contentType=application/json}]
     
     - parameter sources: (query) Enter source name to limit to specific source (varchar) (optional)
     - parameter user: (query) If not specified, uses currently logged in user (bigint) (optional)

     - returns: RequestBuilder<MeasurementRange> 
     */
    public class func v1MeasurementsRangeGetWithRequestBuilder(sources sources: String? = nil, user: Int32? = nil) -> RequestBuilder<MeasurementRange> {
        let path = "/v1/measurementsRange"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "sources": sources,
            "user": user?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<MeasurementRange>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Measurements CSV
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsCsvGet(accessToken accessToken: String? = nil, completion: ((data: NSURL?, error: ErrorType?) -> Void)) {
        v2MeasurementsCsvGetWithRequestBuilder(accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Measurements CSV
     - GET /v2/measurements/csv
     - Download a CSV containing all user measurements
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{output=none}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<NSURL> 
     */
    public class func v2MeasurementsCsvGetWithRequestBuilder(accessToken accessToken: String? = nil) -> RequestBuilder<NSURL> {
        let path = "/v2/measurements/csv"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<NSURL>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Delete Measurement
     
     - parameter id: (path) id of Measurement 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsIdDelete(id id: Int32, accessToken: String? = nil, completion: ((data: InlineResponse20012?, error: ErrorType?) -> Void)) {
        v2MeasurementsIdDeleteWithRequestBuilder(id: id, accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Delete Measurement
     - DELETE /v2/measurements/{id}
     - Delete Measurement
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
     
     - parameter id: (path) id of Measurement 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<InlineResponse20012> 
     */
    public class func v2MeasurementsIdDeleteWithRequestBuilder(id id: Int32, accessToken: String? = nil) -> RequestBuilder<InlineResponse20012> {
        var path = "/v2/measurements/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse20012>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Measurement
     
     - parameter id: (path) id of Measurement 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsIdGet(id id: Int32, accessToken: String? = nil, completion: ((data: InlineResponse20011?, error: ErrorType?) -> Void)) {
        v2MeasurementsIdGetWithRequestBuilder(id: id, accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Measurement
     - GET /v2/measurements/{id}
     - Get Measurement
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{example={
  "data" : {
    "startTime" : "aeiou",
    "unit" : "aeiou",
    "source" : "aeiou",
    "humanTime" : {
      "timezone" : "aeiou",
      "timezone_type" : "",
      "date" : "aeiou"
    },
    "storedAbbreviatedUnitName" : "aeiou",
    "value" : 1.3579000000000001069366817318950779736042022705078125,
    "storedValue" : 1.3579000000000001069366817318950779736042022705078125,
    "abbreviatedUnitName" : "aeiou",
    "originalValue" : "",
    "originalAbbreviatedUnitName" : "aeiou",
    "variable" : "aeiou",
    "note" : "aeiou"
  },
  "success" : true
}, contentType=application/json}]
     
     - parameter id: (path) id of Measurement 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<InlineResponse20011> 
     */
    public class func v2MeasurementsIdGetWithRequestBuilder(id id: Int32, accessToken: String? = nil) -> RequestBuilder<InlineResponse20011> {
        var path = "/v2/measurements/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse20011>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update Measurement
     
     - parameter id: (path) id of Measurement 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter body: (body) Measurement that should be updated (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsIdPut(id id: Int32, accessToken: String? = nil, body: Measurement? = nil, completion: ((data: InlineResponse20012?, error: ErrorType?) -> Void)) {
        v2MeasurementsIdPutWithRequestBuilder(id: id, accessToken: accessToken, body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update Measurement
     - PUT /v2/measurements/{id}
     - Update Measurement
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
     
     - parameter id: (path) id of Measurement 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter body: (body) Measurement that should be updated (optional)

     - returns: RequestBuilder<InlineResponse20012> 
     */
    public class func v2MeasurementsIdPutWithRequestBuilder(id id: Int32, accessToken: String? = nil, body: Measurement? = nil) -> RequestBuilder<InlineResponse20012> {
        var path = "/v2/measurements/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse20012>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Post Request for Measurements CSV
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsRequestCsvPost(accessToken accessToken: String? = nil, completion: ((data: Int32?, error: ErrorType?) -> Void)) {
        v2MeasurementsRequestCsvPostWithRequestBuilder(accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Post Request for Measurements CSV
     - POST /v2/measurements/request_csv
     - Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{example="", contentType=application/json}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<Int32> 
     */
    public class func v2MeasurementsRequestCsvPostWithRequestBuilder(accessToken accessToken: String? = nil) -> RequestBuilder<Int32> {
        let path = "/v2/measurements/request_csv"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Int32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Post Request for Measurements PDF
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsRequestPdfPost(accessToken accessToken: String? = nil, completion: ((data: Int32?, error: ErrorType?) -> Void)) {
        v2MeasurementsRequestPdfPostWithRequestBuilder(accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Post Request for Measurements PDF
     - POST /v2/measurements/request_pdf
     - Use this endpoint to schedule a PDF export containing all user measurements to be emailed to the user within 24 hours.
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{example="", contentType=application/json}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<Int32> 
     */
    public class func v2MeasurementsRequestPdfPostWithRequestBuilder(accessToken accessToken: String? = nil) -> RequestBuilder<Int32> {
        let path = "/v2/measurements/request_pdf"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Int32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Post Request for Measurements XLS
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v2MeasurementsRequestXlsPost(accessToken accessToken: String? = nil, completion: ((data: Int32?, error: ErrorType?) -> Void)) {
        v2MeasurementsRequestXlsPostWithRequestBuilder(accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Post Request for Measurements XLS
     - POST /v2/measurements/request_xls
     - Use this endpoint to schedule a XLS export containing all user measurements to be emailed to the user within 24 hours.
     - OAuth:
       - type: oauth2
       - name: quantimodo_oauth2
     - examples: [{example="", contentType=application/json}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<Int32> 
     */
    public class func v2MeasurementsRequestXlsPostWithRequestBuilder(accessToken accessToken: String? = nil) -> RequestBuilder<Int32> {
        let path = "/v2/measurements/request_xls"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Int32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
