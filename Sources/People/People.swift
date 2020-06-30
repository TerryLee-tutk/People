public struct People {
    
    public init(name: String, gender: Gender, age: Int) {
        self.name = name
        self.gender = gender
        self.age = age
    }
    
    var text = "Hello, World!"
    
    var name: String
    var gender: Gender
    var age: Int
    
    public func peopleInfo() -> String {
        return "\(name) is a \(gender.rawValue), \(gender.genderString) is \(age) years old."
    }
    
    var petInfos = [PetInfo]()
    
    public mutating func addPet(pet: Pet, name: String) {
        let petInfo = PetInfo(pet: pet, name: name)
        petInfos.append(petInfo)
    }
}

public enum Gender: String {
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
