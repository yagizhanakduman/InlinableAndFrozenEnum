# 🧊 InlinableAndFrozenEnum

A practical Swift package demonstrating how to use `@frozen` and `@inlinable` attributes to write stable and high-performance public APIs.

These annotations are critical for library developers who care about **ABI stability**, **performance optimization**, and **clean module interfaces**.

---

## 📦 Overview

### ✅ `@frozen`

Marks a `public` `enum` or `struct` as layout-stable. Once frozen:

- New cases/properties **cannot be added**.
- Enables exhaustive `switch` statements in external modules without `@unknown default`.
- Helps the compiler optimize memory and dispatch.

### ✅ `@inlinable`

Marks a function or computed property as inlinable **across module boundaries**. This allows:

- Clients to see and compile the body of the function.
- The compiler to apply inline optimizations.
- Reduced call overhead in performance-sensitive APIs.

---

## 📁 Structure

InlinableAndFrozenEnum/
├── README.md
├── PaymentResult.swift /// @frozen enum
└── MessageHelper.swift /// @inlinable function

## 🛠 When to Use

| Scenario                                 | Use `@frozen` | Use `@inlinable` |
| ---------------------------------------- | ------------- | ---------------- |
| Building a public enum with fixed cases  | ✅             | ❌                |
| Struct with known and stable layout      | ✅             | ❌                |
| Public helper method needing performance | ❌             | ✅                |
| Exposing implementation to other modules | ❌             | ✅                |

## 📚 Learn More

Here are some official Swift resources to deepen your understanding of `@frozen`, `@inlinable`, and ABI stability:

- [`SE-0192: Non-Exhaustive Enums`](https://github.com/apple/swift-evolution/blob/main/proposals/0192-non-exhaustive-enums.md)  
  Discusses the implications of frozen vs non-frozen enums in public Swift APIs.

- [`SE-0193: Cross-module Inlining and Specialization`](https://github.com/apple/swift-evolution/blob/main/proposals/0193-cross-module-inlining-and-specialization.md)  
  Introduces the `@inlinable` keyword and its benefits for performance and cross-module optimization.

- [Swift Blog: Library Evolution in Swift](https://www.swift.org/blog/library-evolution/)  
  Explains how ABI and module stability are handled in Swift, and how attributes like `@frozen` fit in.
