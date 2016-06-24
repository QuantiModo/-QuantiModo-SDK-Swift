//
// UnitsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class UnitsAPI: APIBase {
    /**
     Get unit categories
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UnitCategoriesGet(completion: ((data: UnitCategory?, error: ErrorType?) -> Void)) {
        v1UnitCategoriesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get unit categories
     - GET /v1/unitCategories
     - Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "name" : "aeiou"
}, contentType=application/json}]

     - returns: RequestBuilder<UnitCategory> 
     */
    public class func v1UnitCategoriesGetWithRequestBuilder() -> RequestBuilder<UnitCategory> {
        let path = "/v1/unitCategories"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UnitCategory>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get all available units
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter id: (query) Unit id (optional)
     - parameter unitName: (query) Unit name (optional)
     - parameter abbreviatedUnitName: (query) Restrict the results to a specific unit by providing the unit abbreviation. (optional)
     - parameter categoryName: (query) Restrict the results to a specific unit category by providing the unit category name. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UnitsGet(accessToken accessToken: String? = nil, id: Int32? = nil, unitName: String? = nil, abbreviatedUnitName: String? = nil, categoryName: String? = nil, completion: ((data: [Unit]?, error: ErrorType?) -> Void)) {
        v1UnitsGetWithRequestBuilder(accessToken: accessToken, id: id, unitName: unitName, abbreviatedUnitName: abbreviatedUnitName, categoryName: categoryName).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get all available units
     - GET /v1/units
     - Get all available units
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example=[ {
  "maximumValue" : 1.3579000000000001069366817318950779736042022705078125,
  "category" : "aeiou",
  "abbreviatedName" : "aeiou",
  "minimumValue" : 1.3579000000000001069366817318950779736042022705078125,
  "name" : "aeiou",
  "conversionSteps" : [ {
    "operation" : "aeiou",
    "value" : 1.3579000000000001069366817318950779736042022705078125
  } ]
} ], contentType=application/json}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter id: (query) Unit id (optional)
     - parameter unitName: (query) Unit name (optional)
     - parameter abbreviatedUnitName: (query) Restrict the results to a specific unit by providing the unit abbreviation. (optional)
     - parameter categoryName: (query) Restrict the results to a specific unit category by providing the unit category name. (optional)

     - returns: RequestBuilder<[Unit]> 
     */
    public class func v1UnitsGetWithRequestBuilder(accessToken accessToken: String? = nil, id: Int32? = nil, unitName: String? = nil, abbreviatedUnitName: String? = nil, categoryName: String? = nil) -> RequestBuilder<[Unit]> {
        let path = "/v1/units"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "id": id?.encodeToJSON(),
            "unitName": unitName,
            "abbreviatedUnitName": abbreviatedUnitName,
            "categoryName": categoryName
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Unit]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Units for Variable
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter unitName: (query) Name of Unit you want to retrieve (optional)
     - parameter abbreviatedUnitName: (query) Abbreviated Unit Name of the unit you want (optional)
     - parameter categoryName: (query) Name of the category you want units for (optional)
     - parameter variable: (query) Name of the variable you want units for (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UnitsVariableGet(accessToken accessToken: String? = nil, unitName: String? = nil, abbreviatedUnitName: String? = nil, categoryName: String? = nil, variable: String? = nil, completion: ((data: [Unit]?, error: ErrorType?) -> Void)) {
        v1UnitsVariableGetWithRequestBuilder(accessToken: accessToken, unitName: unitName, abbreviatedUnitName: abbreviatedUnitName, categoryName: categoryName, variable: variable).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Units for Variable
     - GET /v1/unitsVariable
     - Get a list of all possible units to use for a given variable
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example=[ {
  "maximumValue" : 1.3579000000000001069366817318950779736042022705078125,
  "category" : "aeiou",
  "abbreviatedName" : "aeiou",
  "minimumValue" : 1.3579000000000001069366817318950779736042022705078125,
  "name" : "aeiou",
  "conversionSteps" : [ {
    "operation" : "aeiou",
    "value" : 1.3579000000000001069366817318950779736042022705078125
  } ]
} ], contentType=application/json}]
     
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter unitName: (query) Name of Unit you want to retrieve (optional)
     - parameter abbreviatedUnitName: (query) Abbreviated Unit Name of the unit you want (optional)
     - parameter categoryName: (query) Name of the category you want units for (optional)
     - parameter variable: (query) Name of the variable you want units for (optional)

     - returns: RequestBuilder<[Unit]> 
     */
    public class func v1UnitsVariableGetWithRequestBuilder(accessToken accessToken: String? = nil, unitName: String? = nil, abbreviatedUnitName: String? = nil, categoryName: String? = nil, variable: String? = nil) -> RequestBuilder<[Unit]> {
        let path = "/v1/unitsVariable"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "access_token": accessToken,
            "unitName": unitName,
            "abbreviatedUnitName": abbreviatedUnitName,
            "categoryName": categoryName,
            "variable": variable
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Unit]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
