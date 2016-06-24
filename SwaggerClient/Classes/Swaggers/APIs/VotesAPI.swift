//
// VotesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class VotesAPI: APIBase {
    /**
     Delete vote
     
     - parameter body: (body) The cause and effect variable names for the predictor vote to be deleted. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1VotesDeletePost(body body: VoteDelete, accessToken: String? = nil, completion: ((data: CommonResponse?, error: ErrorType?) -> Void)) {
        v1VotesDeletePostWithRequestBuilder(body: body, accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Delete vote
     - POST /v1/votes/delete
     - Delete previously posted vote
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "message" : "aeiou",
  "status" : "",
  "success" : true
}, contentType=application/json}]
     
     - parameter body: (body) The cause and effect variable names for the predictor vote to be deleted. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<CommonResponse> 
     */
    public class func v1VotesDeletePostWithRequestBuilder(body body: VoteDelete, accessToken: String? = nil) -> RequestBuilder<CommonResponse> {
        let path = "/v1/votes/delete"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CommonResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Post or update vote
     
     - parameter body: (body) Contains the cause variable, effect variable, and vote value. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func v1VotesPost(body body: PostVote, accessToken: String? = nil, completion: ((data: CommonResponse?, error: ErrorType?) -> Void)) {
        v1VotesPostWithRequestBuilder(body: body, accessToken: accessToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Post or update vote
     - POST /v1/votes
     - This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
     - OAuth:
       - type: oauth2
       - name: oauth2
     - examples: [{example={
  "message" : "aeiou",
  "status" : "",
  "success" : true
}, contentType=application/json}]
     
     - parameter body: (body) Contains the cause variable, effect variable, and vote value. 
     - parameter accessToken: (query) User&#39;s OAuth2 access token (optional)

     - returns: RequestBuilder<CommonResponse> 
     */
    public class func v1VotesPostWithRequestBuilder(body body: PostVote, accessToken: String? = nil) -> RequestBuilder<CommonResponse> {
        let path = "/v1/votes"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CommonResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
