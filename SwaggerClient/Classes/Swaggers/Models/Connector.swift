//
// Connector.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class Connector: JSONEncodable {

    /** Connector ID number */
    var id: Int!
    /** Connector lowercase system name */
    var name: String!
    /** Connector pretty display name */
    var displayName: String!
    /** URL to the image of the connector logo */
    var image: String!
    /** URL to a site where one can get this device or application */
    var getItUrl: String!
    /** True if the authenticated user has this connector enabled */
    var connected: String!
    /** URL and parameters used when connecting to a service */
    var connectInstructions: String!
    /** Epoch timestamp of last sync */
    var lastUpdate: Int!
    /** Number of measurements obtained during latest update */
    var latestData: Int!
    /** True if user has no measurements for this connector */
    var noDataYet: Bool!
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["displayName"] = self.displayName
        nillableDictionary["image"] = self.image
        nillableDictionary["getItUrl"] = self.getItUrl
        nillableDictionary["connected"] = self.connected
        nillableDictionary["connectInstructions"] = self.connectInstructions
        nillableDictionary["lastUpdate"] = self.lastUpdate
        nillableDictionary["latestData"] = self.latestData
        nillableDictionary["noDataYet"] = self.noDataYet
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
