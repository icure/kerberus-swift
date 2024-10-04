import KerberusKotlin

typealias SolutionKotlin = KerberusKotlin.Solution

public struct Solution {
    public let id: String
    public let nonces: [String]
    
    internal func toKotlin() -> SolutionKotlin {
        return .init(id: id, nonces: nonces)
    }
}


internal extension SolutionKotlin {
    func toSwift() -> Solution {
        return .init(id: id, nonces: nonces)
    }
}
