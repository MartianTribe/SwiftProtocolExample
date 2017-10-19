//
//  DogType.swift
//  ProtocolExample
//
//  Created by Steven Suranie on 10/19/17.
//  Copyright © 2017 Steven Suranie. All rights reserved.
//

import Foundation

//MARK: Dog Protocols
protocol BarkingDog {
    func speak() -> String
}

protocol DrugSniffingDog {
    func sniffDrugs() -> String
}

protocol SwimmingDog {
    func swim() -> String
}

protocol LazyDog {
    func sleep() -> String
}

protocol ActiveDog {
    func destroy() -> String
}

//MARK: - Dog Classes

class Dog {
    
    var name:String
    var age:Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

class GermanShepherd: Dog, BarkingDog, DrugSniffingDog {}
class LabradorRetriever: Dog, BarkingDog, DrugSniffingDog, SwimmingDog { }
class Pug: Dog, BarkingDog, SwimmingDog, LazyDog { }
class Basenji: Dog, ActiveDog { }

//MARK:- Dog Types Extensions

extension BarkingDog {
    
    func speak() -> String {
        print("Bark!")
        return "I can bark!"
    }
}

extension DrugSniffingDog {
    func sniffDrugs() -> String  {
        print("I found drugs!")
        return "I can sniff drugs!"
    }
}

extension SwimmingDog {
    
    func swim() -> String {
        print("Splash!")
        return "I can swim!"
    }
}

extension LazyDog {
    
    func sleep()  -> String{
        print("Zzzzzz!")
        return "I like to sleep!"
    }
}

extension ActiveDog  {
    
    func destroy() -> String {
        print("Chew, nom, nom!")
        return "I like to chew!"
    }
}



