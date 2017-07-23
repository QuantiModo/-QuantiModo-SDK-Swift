//
// UserTokenRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserTokenRequest: JSONEncodable {
    public var user: UserTokenRequestInnerUserField?
    /** Organization Access token */
    public var organizationAccessToken: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["user"] = self.user?.encodeToJSON()
        nillableDictionary["organizationAccessToken"] = self.organizationAccessToken
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
