import UIKit

func calculateArea (x: Double, y: Double) -> Double? {
    guard x != 0, y != 0 else { return nil }
    return x * y
}

calculateArea(x: 2, y: 1.2)
calculateArea(x: 2, y: 0)

func add (firstNum: Int?, secondNum: Int?) -> Int? {
    guard firstNum != nil, secondNum != nil else { return nil }
    return firstNum! + secondNum!
}

add(firstNum: 5, secondNum: nil)


struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"

func createUser() -> User? {
    guard firstNameTextField.text != nil, lastNameTextField.text != nil, ageTextField.text != nil else { return nil }
    return User(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, age: ageTextField.text!)
}

print(createUser()!)

struct WorkoutTime {
    var startTime: Double
    var endTime: Double
    
    init?(startTime: Double, endTime: Double) {
        guard endTime - startTime > 10 else { return nil }
            self.startTime = startTime
            self.endTime = endTime
    }
}

let firstWorkout = WorkoutTime(startTime: 36000, endTime: 41400)
let secondWorkout = WorkoutTime(startTime: 36000, endTime: 36005)

struct Food {
    var name: String
    var calories: Int
}

let foodTextField = UITextField()
let caloriesTextField = UITextField()

foodTextField.text = "Banana"
caloriesTextField.text = "23"

func logFood() -> Food? {
    guard let food = foodTextField.text, let calories = caloriesTextField.text, let intCalories = Int(calories) else { return nil }
    return Food(name: food, calories: intCalories)
}

print(logFood()!)

let oneFruit = logFood()
if let banana = oneFruit {
    print("A \(banana.name) contains \(banana.calories) calories per serving.")
}
