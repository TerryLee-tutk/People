public struct People {
    
    public init(name: String, gender: Gender, age: Int) {
        self.name = name
        self.gender = gender
        self.age = age
    }
    
    public var text = "Hello, World!"
    
    public var name: String
    public var gender: Gender
    public var age: Int
    
    public func peopleInfo() -> String {
        return "\(name) is a \(gender.rawValue), \(gender.genderString) is \(age) years old."
    }
    
    public var petInfos = [PetInfo]()
    
    public mutating func addPet(pet: Pet, name: String) {
        let petInfo = PetInfo(pet: pet, name: name)
        petInfos.append(petInfo)
    }
}

public enum Gender: String {
    case male
    case female
    
    public var genderString: String {
        switch self {
        case .male:
            return "he"
        case .female:
            return "she"
        }
    }
}
