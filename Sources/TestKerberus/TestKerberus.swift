import Kerberus

class Kerberus {
    static func resolveChallenge(config: Challenge, serializedInput: String, onProgress: @escaping (Double) -> Void) async throws -> Solution {
        return try await KerberusKt.resolveChallenge(config: config, serializedInput: serializedInput) { progress in onProgress(progress.doubleValue) }
    }

    static func validateSolution(config: Challenge, result: Solution, serializedInput: String) async throws -> Bool {
        return try await KerberusKt.validateSolution(config: config, result: result, serializedInput: serializedInput).boolValue
    }
}
