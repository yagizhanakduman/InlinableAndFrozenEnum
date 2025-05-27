//
//  MessageHelper.swift
//  InlineAndFrozenEnum
//

import Foundation

/// Returns a human-readable string based on the payment result status.
///
/// This function is marked as `@inlinable`, meaning its implementation is exposed across module boundaries
/// and can be inlined by the compiler into client code. This can improve performance and eliminate function call overhead
/// when used in performance-critical paths.
///
/// - Parameters:
///
///   - result: The `PaymentResult` enum value to be evaluated.
///
/// - Returns: A formatted `String` describing the payment status.
///
/// - Example Usage:
///
/// ```swift
/// let result = PaymentResult.success(amount: 59.99)
/// let message = message(for: result)
/// print(message) // "✅ Payment successful: 59.99 USD"
/// ```
///
/// - Thread Safety: This function is stateless and thread-safe.
///
@inlinable
public func message(for result: PaymentResult) -> String {
    switch result {
    case .success(let amount):
        return "✅ Payment successful: \(amount) USD"
    case .failure(let reason):
        return "❌ Payment failed: \(reason)"
    case .cancelled:
        return "⚠️ Payment was cancelled"
    }
}
