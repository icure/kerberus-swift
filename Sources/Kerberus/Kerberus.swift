import KerberusKotlin

public class Kerberus {
    public static func resolveChallenge(challenge: Challenge, serializedInput: String, onProgress: @escaping (Double) -> Void) async throws -> Solution {
        return try await KerberusKt.resolveChallenge(config: challenge.toKotlin(), serializedInput: serializedInput) { progress in onProgress(progress.doubleValue) }.toSwift()
    }

    public static func validateSolution(challenge: Challenge, solution: Solution, serializedInput: String) async throws -> Bool {
        return try await KerberusKt.validateSolution(config: challenge.toKotlin(), result: solution.toKotlin(), serializedInput: serializedInput).boolValue
    }
}
