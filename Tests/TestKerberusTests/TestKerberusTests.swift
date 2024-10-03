import Testing
import Foundation
@testable import TestKerberus

@available(iOS 15.0, *)
@Test func example() async throws {
    let difficultyFactor: Int32 = 5000
    let salt: UInt8 = UInt8.random(in: UInt8.min...UInt8.max)
    let phrase: String = UUID().uuidString
    
    let pow = try await Kerberus.genPoW(salt: salt.formatted(), phrase: phrase.data(using: .utf8)!, difficultyFactor: difficultyFactor)
    print(pow)
    
    let isValid = try await Kerberus.isValidPoW(salt: salt.formatted(), phrase: phrase.data(using: .utf8)!, proofOfWork: pow, difficultyFactor: difficultyFactor)
    print(isValid)
    #expect(isValid)
}
