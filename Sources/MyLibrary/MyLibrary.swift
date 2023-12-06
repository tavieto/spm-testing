import SwiftyJSON
import Foundation

public struct MyLibrary {
    public private(set) var text = "Hello, World!"

    public init() {
        print("MyLibrary iniciou")
    }
    
    public func welcome(name: String) -> String {
        return "\(name), bem vindo!"
    }
    
    public func nameToJson(name: String) -> String {
        let nameStruct: Data = Data()
        do {
            let json = try JSON(data: nameStruct)
        } catch {
            
        }
        return ""
    }
}

class NameTest: NSObject, NSCoding {
    var name: String

    init(name: String) {
        self.name = name
    }

    // MARK: - NSCoding

    required init(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
}
