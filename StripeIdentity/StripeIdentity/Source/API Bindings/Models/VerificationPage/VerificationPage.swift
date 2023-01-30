//
// VerificationPage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
@_spi(STP) import StripeCore

extension StripeAPI {

    /// A VerificationPage contains the static content and initial state that is required for Stripe Identity's native mobile SDKs to render the verification flow.

    struct VerificationPage: Decodable, Equatable {
        enum Status: String, Codable, Equatable {
            case canceled = "canceled"
            case processing = "processing"
            case requiresInput = "requires_input"
            case verified = "verified"
        }
        let biometricConsent: VerificationPageStaticContentConsentPage
        let documentCapture: VerificationPageStaticContentDocumentCapturePage
        let documentSelect: VerificationPageStaticContentDocumentSelectPage
        /// The short-lived URL that can be used in the case that the client cannot support the VerificationSession.
        let fallbackUrl: String
        /// Unique identifier for the object.
        let id: String
        /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        let livemode: Bool
        let requirements: VerificationPageRequirements
        /// Static content for the selfie page
        let selfie: VerificationPageStaticContentSelfiePage?
        /// Status of the associated VerificationSession.
        let status: Status
        /// If true, the associated VerificationSession has been submitted for processing.
        let submitted: Bool
        let success: VerificationPageStaticContentTextPage
        /// If true, the client cannot support the VerificationSession.
        let unsupportedClient: Bool
    }

}
