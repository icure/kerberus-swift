import KerberusKotlin

typealias ChallengeKotlin = KerberusKotlin.Challenge

public struct Challenge {
    public let id: String
    public let salts: [String]
    public let difficultyFactor: Int32
    
    internal func toKotlin() -> ChallengeKotlin {
        return .init(id: id, salts: salts, difficultyFactor: difficultyFactor)
    }
}
