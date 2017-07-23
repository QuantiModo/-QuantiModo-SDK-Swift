//
// Update.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Update: JSONEncodable {
    /** id */
    public var id: Int32?
    /** userId */
    public var userId: Int32?
    /** connectorId */
    public var connectorId: Int32?
    /** numberOfMeasurements */
    public var numberOfMeasurements: Int32?
    /** success */
    public var success: Bool?
    /** message */
    public var message: String?
    /** When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format */
    public var createdAt: NSDate?
    /** When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format */
    public var updatedAt: NSDate?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["userId"] = self.userId?.encodeToJSON()
        nillableDictionary["connectorId"] = self.connectorId?.encodeToJSON()
        nillableDictionary["numberOfMeasurements"] = self.numberOfMeasurements?.encodeToJSON()
        nillableDictionary["success"] = self.success
        nillableDictionary["message"] = self.message
        nillableDictionary["createdAt"] = self.createdAt?.encodeToJSON()
        nillableDictionary["updatedAt"] = self.updatedAt?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
