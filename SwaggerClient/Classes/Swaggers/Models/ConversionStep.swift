//
// ConversionStep.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConversionStep: JSONEncodable {
    public enum Operation: String { 
        case Multiply = "MULTIPLY"
        case Add = "ADD"
    }
    /** ADD or MULTIPLY */
    public var operation: Operation?
    /** This specifies the order of conversion steps starting with 0 */
    public var value: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["operation"] = self.operation?.rawValue
        nillableDictionary["value"] = self.value
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
