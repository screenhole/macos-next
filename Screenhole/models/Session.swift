class Session {
    var token: String
    var apiBase: String?
    
    init(token: String, apiBase: String?) {
        self.token = token
        self.apiBase = apiBase
    }
    
    func authorizationHeader() -> String {
        return "Bearer \(token)"
    }
    
    func apiRootUrl() -> String {
        return apiBase ?? "https://api.screenhole.net"
    }
    
    func apiEndpointUrl(endpoint: String) -> String {
        return "\(apiRootUrl())\(endpoint)"
    }
}
