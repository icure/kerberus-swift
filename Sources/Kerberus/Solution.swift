import KerberusKotlin

typealias SolutionKotlin = KerberusKotlin.Solution

public struct Solution: Sendable {
    public let id: String
    public let nonces: [String]
    
    public init(id: String, nonces: [String]) {
        self.id = id
        self.nonces = nonces
    }
    
    internal func toKotlin() -> SolutionKotlin {
        return .init(id: id, nonces: nonces)
    }
}


internal extension SolutionKotlin {
    func toSwift() -> Solution {
        return .init(id: id, nonces: nonces)
    }
}
