//
// TrackingReminder.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TrackingReminder: JSONEncodable {
    public enum CombinationOperation: String { 
        case Mean = "MEAN"
        case Sum = "SUM"
    }
    /** id */
    public var id: Int32?
    /** clientId */
    public var clientId: String?
    /** ID of User */
    public var userId: Int32?
    /** Id for the variable to be tracked */
    public var variableId: Int32?
    /** Default value to use for the measurement when tracking */
    public var defaultValue: Float?
    /** Earliest time of day at which reminders should appear in UTC HH:MM:SS format */
    public var reminderStartTime: String?
    /** Latest time of day at which reminders should appear in UTC HH:MM:SS format */
    public var reminderEndTime: String?
    /** String identifier for the sound to accompany the reminder */
    public var reminderSound: String?
    /** Number of seconds between one reminder and the next */
    public var reminderFrequency: Int32?
    /** True if the reminders should appear as a popup notification */
    public var popUp: Bool?
    /** True if the reminders should be delivered via SMS */
    public var sms: Bool?
    /** True if the reminders should be delivered via email */
    public var email: Bool?
    /** True if the reminders should appear in the notification bar */
    public var notificationBar: Bool?
    /** ISO 8601 timestamp for the last time a reminder was sent */
    public var lastReminded: NSDate?
    /** ISO 8601 timestamp for the last time a measurement was received for this user and variable */
    public var lastTracked: NSDate?
    /** Specific first time of day that the user should be reminded to track in UTC HH:MM:SS format */
    public var firstDailyReminderTime: String?
    /** Specific second time of day that the user should be reminded to track in UTC HH:MM:SS format */
    public var secondDailyReminderTime: String?
    /** Specific third time of day that the user should be reminded to track in UTC HH:MM:SS format */
    public var thirdDailyReminderTime: String?
    /** Earliest date on which the user should be reminded to track in YYYY-MM-DD format */
    public var startTrackingDate: String?
    /** Latest date on which the user should be reminded to track in YYYY-MM-DD format */
    public var stopTrackingDate: String?
    /** When the record in the database was last updated. Use ISO 8601 datetime format. Time zone should be UTC and not local. */
    public var updatedAt: NSDate?
    /** Name of the variable to be used when sending measurements */
    public var variableName: String?
    /** Name of the variable category to be used when sending measurements */
    public var variableCategoryName: String?
    /** Abbreviated name of the unit to be used when sending measurements */
    public var abbreviatedUnitName: String?
    /** The way multiple measurements are aggregated over time */
    public var combinationOperation: CombinationOperation?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["clientId"] = self.clientId
        nillableDictionary["userId"] = self.userId?.encodeToJSON()
        nillableDictionary["variableId"] = self.variableId?.encodeToJSON()
        nillableDictionary["defaultValue"] = self.defaultValue
        nillableDictionary["reminderStartTime"] = self.reminderStartTime
        nillableDictionary["reminderEndTime"] = self.reminderEndTime
        nillableDictionary["reminderSound"] = self.reminderSound
        nillableDictionary["reminderFrequency"] = self.reminderFrequency?.encodeToJSON()
        nillableDictionary["popUp"] = self.popUp
        nillableDictionary["sms"] = self.sms
        nillableDictionary["email"] = self.email
        nillableDictionary["notificationBar"] = self.notificationBar
        nillableDictionary["lastReminded"] = self.lastReminded?.encodeToJSON()
        nillableDictionary["lastTracked"] = self.lastTracked?.encodeToJSON()
        nillableDictionary["firstDailyReminderTime"] = self.firstDailyReminderTime
        nillableDictionary["secondDailyReminderTime"] = self.secondDailyReminderTime
        nillableDictionary["thirdDailyReminderTime"] = self.thirdDailyReminderTime
        nillableDictionary["startTrackingDate"] = self.startTrackingDate
        nillableDictionary["stopTrackingDate"] = self.stopTrackingDate
        nillableDictionary["updatedAt"] = self.updatedAt?.encodeToJSON()
        nillableDictionary["variableName"] = self.variableName
        nillableDictionary["variableCategoryName"] = self.variableCategoryName
        nillableDictionary["abbreviatedUnitName"] = self.abbreviatedUnitName
        nillableDictionary["combinationOperation"] = self.combinationOperation?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
