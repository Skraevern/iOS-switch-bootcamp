Make a folder named Secrets with a Secrets swift file.
import Foundation

struct Secrets {
    let apiKey = ""
    func getApiKey() -> String {
        return apiKey
    }
}
