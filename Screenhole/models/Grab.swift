import Foundation

class Grab {
    var fileUrl: URL
    var description: String?
    
    init(fileUrl: URL, description: String?) {
        self.fileUrl = fileUrl
        self.description = description
    }
}
