struct People {
    var text = "Hello, World!"
    
    var name: String
    var gender: Gender
    var age: Int
    
    func peopleInfo() -> String {
        return "\(name) is a \(gender.rawValue), \(gender.genderString) is \(age) years old."
    }
}

enum Gender: String {
    case male
    case female
    
    var genderString: String {
        switch self {
        case .male:
            return "he"
        case .female:
            return "she"
        }
    }
}
