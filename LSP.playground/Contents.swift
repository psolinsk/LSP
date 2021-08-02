import UIKit

protocol Car {
    
    func firstExampleMethod()
    
    func secondExampleMethod()
    
}

class smallCar: Car {
    
    func firstExampleMethod() {
    }
    
    func secondExampleMethod() {
    }
}

class bigCar: Car {
    
    func firstExampleMethod() {
    }
    
    func secondExampleMethod() {
    }
}

class SomeObject {
    
    let car: Car
    
    init(exampleObject: Car) {
        self.car = exampleObject
    }
}

class SomeViewController: UIViewController {
    
    var someObject: SomeObject?
    
    override func viewDidLoad() {
        
        let smallExample = smallCar()
        
        someObject = SomeObject(exampleObject: smallExample)
    }
}

class SomeAnotherViewController: UIViewController {
    
    var someObject: SomeObject?
    
    override func viewDidLoad() {
        
        let bigExample = bigCar()
        
        someObject = SomeObject(exampleObject: bigExample)
    }
}
