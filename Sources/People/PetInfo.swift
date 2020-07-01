//
//  File.swift
//  
//
//  Created by Terry Lee on 2020/6/30.
//

import Foundation

public struct PetInfo {
    
    public var pet: Pet
    public var name: String
    
    public init(pet: Pet = .none, name: String = "") {
        self.pet = pet
        self.name = name
    }
    
    public func description(people: People) -> String {
        return "\(people.name) has a \(pet.rawValue), named \(name)"
    }
}

public enum Pet: String {
    case none
    case dog
    case cat
}
