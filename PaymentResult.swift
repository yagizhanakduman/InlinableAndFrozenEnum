//
//  PaymentResult.swift
//  InlineAndFrozenEnum
//

import Foundation

/// A frozen enumeration representing the result of a payment operation.
///
/// This enum is marked as `@frozen` to guarantee its layout will not change in future versions,
/// enabling compiler optimizations and allowing exhaustive `switch` statements without the need
/// for `@unknown default` when used outside the module.
///
/// - Important: Only use `@frozen` when you're certain that no new cases will be added.
///
@frozen
public enum PaymentResult {
    
    /// Indicates that the payment completed successfully with a specified amount.
    case success(amount: Double)
    
    /// Indicates that the payment failed with an associated error reason.
    case failure(reason: String)
    
    /// Indicates that the user cancelled the payment process.
    case cancelled
}
