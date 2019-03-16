class GrabRepository {
    private let apiClient: ApiClient
    
    init(session: Session) {
        self.apiClient = ApiClient(session: session)
    }
    
    func create(grab: Grab) {
        // TODO: Upload via `ApiClient`
    }
}
