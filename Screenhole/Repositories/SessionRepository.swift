import Foundation

class SessionRepository {
    let defaults = UserDefaults.standard
    
    func get() -> Session {
        let token = defaults.string(forKey: "jwt")!
        let apiBase = defaults.string(forKey: "api-base")
        
        return Session(token: token, apiBase: apiBase)
    }
    
    func set(session: Session) {
        defaults.set(session.token, forKey: "jwt")
        defaults.set(session.apiBase, forKey: "api-base")
    }
    
    func clear() {
        defaults.removeObject(forKey: "jwt")
        defaults.removeObject(forKey: "api-base")
    }
}

