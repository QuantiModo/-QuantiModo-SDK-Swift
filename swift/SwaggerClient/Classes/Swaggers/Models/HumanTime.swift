//
// HumanTime.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class HumanTime: JSONEncodable {
    /** date time */
    public var date: String?
    public var timezoneType: Int32?
    /** timezone of date time */
    public var timezone: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["date"] = self.date
        nillableDictionary["timezone_type"] = self.timezoneType?.encodeToJSON()
        nillableDictionary["timezone"] = self.timezone
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
