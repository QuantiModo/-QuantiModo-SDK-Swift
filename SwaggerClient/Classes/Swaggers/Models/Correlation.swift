//
// Correlation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Correlation: JSONEncodable {
    /** Pearson correlation coefficient between cause and effect measurements */
    public var correlationCoefficient: Double?
    /** ORIGINAL variable name of the cause variable for which the user desires correlations. */
    public var cause: String?
    /** original name of the cause. */
    public var originalCause: String?
    /** ORIGINAL variable name of the effect variable for which the user desires correlations. */
    public var effect: String?
    /** effect variable original name. */
    public var originalEffect: String?
    /** User estimated or default time after cause measurement before a perceivable effect is observed */
    public var onsetDelay: Double?
    /** Time over which the cause is expected to produce a perceivable effect following the onset delay */
    public var durationOfAction: Double?
    /** Number of points that went into the correlation calculation */
    public var numberOfPairs: Double?
    /** Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful. */
    public var effectSize: String?
    /** A function of the effect size and sample size */
    public var statisticalSignificance: String?
    /** Time at which correlation was calculated */
    public var timestamp: Double?
    /** Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation. */
    public var reverseCorrelation: Double?
    /**  */
    public var causalityFactor: Double?
    /** Variable category of the cause variable. */
    public var causeCategory: String?
    /** Variable category of the effect variable. */
    public var effectCategory: String?
    /** cause value that predicts an above average effect value (in default unit for cause variable) */
    public var valuePredictingHighOutcome: Double?
    /** cause value that predicts a below average effect value (in default unit for cause variable) */
    public var valuePredictingLowOutcome: Double?
    /** Optimal Pearson Product */
    public var optimalPearsonProduct: Double?
    /** Average Vote */
    public var averageVote: Double?
    /** User Vote */
    public var userVote: Double?
    /** Unit of the predictor variable */
    public var causeUnit: String?
    /** Unit Id of the predictor variable */
    public var causeUnitId: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["correlationCoefficient"] = self.correlationCoefficient
        nillableDictionary["cause"] = self.cause
        nillableDictionary["originalCause"] = self.originalCause
        nillableDictionary["effect"] = self.effect
        nillableDictionary["originalEffect"] = self.originalEffect
        nillableDictionary["onsetDelay"] = self.onsetDelay
        nillableDictionary["durationOfAction"] = self.durationOfAction
        nillableDictionary["numberOfPairs"] = self.numberOfPairs
        nillableDictionary["effectSize"] = self.effectSize
        nillableDictionary["statisticalSignificance"] = self.statisticalSignificance
        nillableDictionary["timestamp"] = self.timestamp
        nillableDictionary["reverseCorrelation"] = self.reverseCorrelation
        nillableDictionary["causalityFactor"] = self.causalityFactor
        nillableDictionary["causeCategory"] = self.causeCategory
        nillableDictionary["effectCategory"] = self.effectCategory
        nillableDictionary["valuePredictingHighOutcome"] = self.valuePredictingHighOutcome
        nillableDictionary["valuePredictingLowOutcome"] = self.valuePredictingLowOutcome
        nillableDictionary["optimalPearsonProduct"] = self.optimalPearsonProduct
        nillableDictionary["averageVote"] = self.averageVote
        nillableDictionary["userVote"] = self.userVote
        nillableDictionary["causeUnit"] = self.causeUnit
        nillableDictionary["causeUnitId"] = self.causeUnitId?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
