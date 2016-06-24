//
// PairsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PairsAPI: APIBase {
    /**
     Get pairs
     
     - parameter cause: (query) Original variable name for the explanatory or independent variable 
     - parameter effect: (query) Original variable name for the outcome or dependent variable 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter causeSource: (query) Name of data source that the cause measurements should come from (optional)
     - parameter causeUnit: (query) Abbreviated name for the unit cause measurements to be returned in (optional)
     - parameter delay: (query) Delay before onset of action (in seconds) from the cause variable settings. (optional)
     - parameter duration: (query) Duration of action (in seconds) from the cause variable settings. (optional)
     - parameter effectSource: (query) Name of data source that the effectmeasurements should come from (optional)
     - parameter effectUnit: (query) Abbreviated name for the unit effect measurements to be returned in (optional)
     - parameter endTime: (query) The most recent date (in epoch time) for which we should return measurements (optional)
     - parameter startTime: (query) The earliest date (in epoch time) for which we should return measurements (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1PairsCsvGet(cause cause: String, effect: String, accessToken: String? = nil, causeSource: String? = nil, causeUnit: String? = nil, delay: String? = nil, duration: String? = nil, effectSource: String? = nil, effectUnit: String? = nil, endTime: String? = nil, startTime: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil, completion: ((data: [Pairs]?, error: ErrorType?) -> Void)) {
        v1PairsCsvGetWithRequestBuilder(cause: cause, effect: effect, accessToken: accessToken, causeSource: causeSource, causeUnit: causeUnit, delay: delay, duration: duration, effectSource: effectSource, effectUnit: effectUnit, endTime: endTime, startTime: startTime, limit: limit, offset: offset, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get pairs
     - GET /v1/pairsCsv
     - Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example=[ {
  "name" : "aeiou"
} ], contentType=application/json}]
     
     - parameter cause: (query) Original variable name for the explanatory or independent variable 
     - parameter effect: (query) Original variable name for the outcome or dependent variable 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter causeSource: (query) Name of data source that the cause measurements should come from (optional)
     - parameter causeUnit: (query) Abbreviated name for the unit cause measurements to be returned in (optional)
     - parameter delay: (query) Delay before onset of action (in seconds) from the cause variable settings. (optional)
     - parameter duration: (query) Duration of action (in seconds) from the cause variable settings. (optional)
     - parameter effectSource: (query) Name of data source that the effectmeasurements should come from (optional)
     - parameter effectUnit: (query) Abbreviated name for the unit effect measurements to be returned in (optional)
     - parameter endTime: (query) The most recent date (in epoch time) for which we should return measurements (optional)
     - parameter startTime: (query) The earliest date (in epoch time) for which we should return measurements (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)

     - returns: RequestBuilder<[Pairs]> 
     */
    public class func v1PairsCsvGetWithRequestBuilder(cause cause: String, effect: String, accessToken: String? = nil, causeSource: String? = nil, causeUnit: String? = nil, delay: String? = nil, duration: String? = nil, effectSource: String? = nil, effectUnit: String? = nil, endTime: String? = nil, startTime: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil) -> RequestBuilder<[Pairs]> {
        let path = "/v1/pairsCsv"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "cause": cause,
            "causeSource": causeSource,
            "causeUnit": causeUnit,
            "delay": delay,
            "duration": duration,
            "effect": effect,
            "effectSource": effectSource,
            "effectUnit": effectUnit,
            "endTime": endTime,
            "startTime": startTime,
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "sort": sort?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Pairs]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get pairs
     
     - parameter cause: (query) Original variable name for the explanatory or independent variable 
     - parameter effect: (query) Original variable name for the outcome or dependent variable 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter causeSource: (query) Name of data source that the cause measurements should come from (optional)
     - parameter causeUnit: (query) Abbreviated name for the unit cause measurements to be returned in (optional)
     - parameter delay: (query) Delay before onset of action (in seconds) from the cause variable settings. (optional)
     - parameter duration: (query) Duration of action (in seconds) from the cause variable settings. (optional)
     - parameter effectSource: (query) Name of data source that the effectmeasurements should come from (optional)
     - parameter effectUnit: (query) Abbreviated name for the unit effect measurements to be returned in (optional)
     - parameter endTime: (query) The most recent date (in epoch time) for which we should return measurements (optional)
     - parameter startTime: (query) The earliest date (in epoch time) for which we should return measurements (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1PairsGet(cause cause: String, effect: String, accessToken: String? = nil, causeSource: String? = nil, causeUnit: String? = nil, delay: String? = nil, duration: String? = nil, effectSource: String? = nil, effectUnit: String? = nil, endTime: String? = nil, startTime: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil, completion: ((data: [Pairs]?, error: ErrorType?) -> Void)) {
        v1PairsGetWithRequestBuilder(cause: cause, effect: effect, accessToken: accessToken, causeSource: causeSource, causeUnit: causeUnit, delay: delay, duration: duration, effectSource: effectSource, effectUnit: effectUnit, endTime: endTime, startTime: startTime, limit: limit, offset: offset, sort: sort).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get pairs
     - GET /v1/pairs
     - Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example=[ {
  "name" : "aeiou"
} ], contentType=application/json}]
     
     - parameter cause: (query) Original variable name for the explanatory or independent variable 
     - parameter effect: (query) Original variable name for the outcome or dependent variable 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter causeSource: (query) Name of data source that the cause measurements should come from (optional)
     - parameter causeUnit: (query) Abbreviated name for the unit cause measurements to be returned in (optional)
     - parameter delay: (query) Delay before onset of action (in seconds) from the cause variable settings. (optional)
     - parameter duration: (query) Duration of action (in seconds) from the cause variable settings. (optional)
     - parameter effectSource: (query) Name of data source that the effectmeasurements should come from (optional)
     - parameter effectUnit: (query) Abbreviated name for the unit effect measurements to be returned in (optional)
     - parameter endTime: (query) The most recent date (in epoch time) for which we should return measurements (optional)
     - parameter startTime: (query) The earliest date (in epoch time) for which we should return measurements (optional)
     - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
     - parameter offset: (query) Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
     - parameter sort: (query) Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. (optional)

     - returns: RequestBuilder<[Pairs]> 
     */
    public class func v1PairsGetWithRequestBuilder(cause cause: String, effect: String, accessToken: String? = nil, causeSource: String? = nil, causeUnit: String? = nil, delay: String? = nil, duration: String? = nil, effectSource: String? = nil, effectUnit: String? = nil, endTime: String? = nil, startTime: String? = nil, limit: Int32? = nil, offset: Int32? = nil, sort: Int32? = nil) -> RequestBuilder<[Pairs]> {
        let path = "/v1/pairs"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "cause": cause,
            "causeSource": causeSource,
            "causeUnit": causeUnit,
            "delay": delay,
            "duration": duration,
            "effect": effect,
            "effectSource": effectSource,
            "effectUnit": effectUnit,
            "endTime": endTime,
            "startTime": startTime,
            "limit": limit?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
            "sort": sort?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Pairs]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
