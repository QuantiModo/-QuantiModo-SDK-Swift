//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class UserAPI: APIBase {
    /**
     Get user tokens for existing users, create new users
     
     - parameter organizationId: (path) Organization ID 
     - parameter body: (body) Provides organization token and user ID 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1OrganizationsOrganizationIdUsersPost(organizationId organizationId: Int32, body: UserTokenRequest, accessToken: String? = nil, completion: ((data: UserTokenSuccessfulResponse?, error: ErrorType?) -> Void)) {
        v1OrganizationsOrganizationIdUsersPostWithRequestBuilder(organizationId: organizationId, body: body, accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get user tokens for existing users, create new users
     - POST /v1/organizations/{organizationId}/users
     - Get user tokens for existing users, create new users
     - OAuth:
       - type: oauth2
       - name: oauth2
     - API Key:
       - type: apiKey api_key 
       - name: internalApiKey
     - examples: [{example={
  "message" : "aeiou",
  "code" : "",
  "user" : {
    "id" : "",
    "access_token" : "aeiou"
  }
}, contentType=application/json}]
     
     - parameter organizationId: (path) Organization ID 
     - parameter body: (body) Provides organization token and user ID 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<UserTokenSuccessfulResponse> 
     */
    public class func v1OrganizationsOrganizationIdUsersPostWithRequestBuilder(organizationId organizationId: Int32, body: UserTokenRequest, accessToken: String? = nil) -> RequestBuilder<UserTokenSuccessfulResponse> {
        var path = "/v1/organizations/{organizationId}/users"
        path = path.stringByReplacingOccurrencesOfString("{organizationId}", withString: "\(organizationId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UserTokenSuccessfulResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get all available units for variableGet authenticated user
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1UserMeGet(completion: ((data: User?, error: ErrorType?) -> Void)) {
        v1UserMeGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get all available units for variableGet authenticated user
     - GET /v1/user/me
     - Returns user info for the currently authenticated user.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "id" : "",
  "token" : "aeiou",
  "email" : "aeiou",
  "administrator" : true,
  "displayName" : "aeiou",
  "wpId" : "",
  "loginName" : "aeiou"
}, contentType=application/json}]

     - returns: RequestBuilder<User> 
     */
    public class func v1UserMeGetWithRequestBuilder() -> RequestBuilder<User> {
        let path = "/v1/user/me"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
