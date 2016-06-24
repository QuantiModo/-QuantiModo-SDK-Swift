//
// UserTokenSuccessfulResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserTokenSuccessfulResponse: JSONEncodable {
    /** Status code */
    public var code: Int32?
    /** Message */
    public var message: String?
    public var user: UserTokenSuccessfulResponseInnerUserField?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["code"] = self.code?.encodeToJSON()
        nillableDictionary["message"] = self.message
        nillableDictionary["user"] = self.user?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
