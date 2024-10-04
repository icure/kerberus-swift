import KerberusKotlin

typealias ChallengeKotlin = KerberusKotlin.Challenge

public struct Challenge {
    let id: String
    let salts: [String]
    let difficultyFactor: Int32
    
    internal func toKotlin() -> ChallengeKotlin {
        return .init(id: id, salts: salts, difficultyFactor: difficultyFactor)
    }
}
