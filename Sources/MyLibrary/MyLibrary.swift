public struct MyLibrary {
    public private(set) var text = "Hello, World!"

    public init() {
        print("MyLibrary iniciou")
    }
    
    public func welcome(name: String) -> String {
        return "\(name), bem vindo!"
    }
}
