import Testing
import Foundation
@testable import Kerberus

@available(iOS 15.0, *)
@Test func example() async throws {
    let difficultyFactor: Int32 = 5000
    let salts: [String] = [UUID().uuidString, UUID().uuidString]
    let phrase: String = UUID().uuidString
    
    let challenge = Challenge(id: UUID().uuidString, salts: salts, difficultyFactor: difficultyFactor)

    let solution = try await Kerberus.resolveChallenge(challenge: challenge, serializedInput: phrase) {
        print($0)
    }
    
    let isValid = try await Kerberus.validateSolution(challenge: challenge, solution: solution, serializedInput: phrase)
    
    print(isValid)
    #expect(isValid)
}
