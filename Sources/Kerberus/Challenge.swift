import KerberusKotlin

typealias ChallengeKotlin = KerberusKotlin.Challenge

public struct Challenge {
    public let id: String
    public let salts: [String]
    public let difficultyFactor: Int32
    
    public init(id: String, salts: [String], difficultyFactor: Int32) {
        self.id = id
        self.salts = salts
        self.difficultyFactor = difficultyFactor
    }
    
    internal func toKotlin() -> ChallengeKotlin {
        return .init(id: id, salts: salts, difficultyFactor: difficultyFactor)
    }
}
