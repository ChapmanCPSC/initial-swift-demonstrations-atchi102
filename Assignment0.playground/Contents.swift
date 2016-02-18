//: Playground - noun: a place where people can play

import UIKit

//**********Swift Introduction**********
//Two types of variables
var a = "This variable can be changed (the type must stay the same)"
let b = "This variable cannot be changed"

//Object Members
class Me
{
    //name and age are properties of the Me class
    let name = "Abby"
    var age = 18
    
    //incrementAge and sayHello are methods of Me
    func incrementAge() -> Int
    {
        return ++age
    }
    
    func sayHello()
    {
        print(name + " says hi!")
    }
}

//**********Swift Functions**********

//Basic function
func checkAge(age:Int)->Bool{
    if(age>=18)
    {
        return true;
    }
    else
    {
        return false;
    }
}
//Void function
func sayHello(name:String)->Void{
    print("Hello "+name+"!")
}
//Externalized Parameters
func sum(x:Int, plus y:Int)
{
    print(x+y)
}
sum(1,plus:8)
//Default Parameters
func animalSounds(animal:String = "Cow", goes sound:String = "moo")->String
{
    return animal + " goes " + sound.uppercaseString
}
print(animalSounds())
print(animalSounds("Sheep", goes: "baa"))


//Modifiable Parameters (inout)
func doubleThis(inout var1: Int)
{
    var1 = var1 * 2
}
var d = 3
doubleThis(&d)


print(sum)
//Anonymous Functions
func isThisTrue(givenFunction:(str1 : String, str2 : String)->Bool)->Bool
{
    let result = givenFunction(str1: "Hello",str2:"Goodbye")
    return result
}

let comparing =
{
    (str1: String, str2:String)->Bool in
    return str1 == str2
}

print(isThisTrue(comparing))


//**********Swift Variables**********

//Variadic Parameters
func add(nums:Int...)->Int
{
    var sum = 0
    for num in nums
    {
        sum += num
    }
    return sum
}
//Funcations as Values
var sum = add(1,2,3)
print(add(1,2,3,4))

//implicit variables
var e = "helloVar"
//explicit variables
var f : String = "this has to be a string"
//enums
enum gender{
    case Male
    case Female
}
let thisGender = gender.Female

//computed initializers
var Greeting : String =
{
    if(thisGender == gender.Female)
    {
        return "Wassup girl"
    }
    else if(thisGender == gender.Male)
    {
        return "Hey dude"
    }
    else
    {
        return "Hello"
    }
}()
class Family
{
    private var _totalMembers = 2
    var totalMembers : Int {
        get {
            return self._totalMembers
        }
        set {
            if newValue < 2
            {
                print("A family needs more than 1 member. Sad for you")
            }
            else
            {
                self._totalMembers = newValue
            }
        }
    }
}

//internal getters and setters
class Schedule
{
    private var _numCredits = 12
    var numCredits : Int {
        get{
            return self._numCredits
        }
        set{
            if(newValue>18)
            {
                print("Your schedule is too full")
            }
            else
            {
                self._numCredits = newValue
            }
        }
    }
    //willSet and didSet
    var favoriteSubject : String = "lunch"{
        willSet{
            //string interpolation
            print("Your new favorite subject is \(newValue)")
        }
        didSet{
            if(self.favoriteSubject == "Computer Science")
            {
                print("Yay! Welcome to the club")
            }
            else if(oldValue == "Computer Science")
            {
                print("Um...")
            }
        }
    }
}

let mySched = Schedule()
mySched._numCredits = 13
mySched.favoriteSubject = "Computer Science"

//Range type and random generator
var j : Int32 = rand()
for i in 1...10
{
    //user guesses number
    j = rand()
    if(j % 2 == 0)
    {
        print("Even")
    }
    else
    {
        print("Odd")
    }
    
}

//Tuples

func countType(nums : Int...) ->(numOdd: Int, numEven: Int)
{
    var even = 0
    var odd = 0
    for num in nums
    {
        if(num % 2 == 0)
        {
            even += 1
        }
        else
        {
            odd += 1
        }
        
    }
    return(even, odd)
}

let output = countType(1,2,3,4,5,6,7,8,9,10,33)
output.numEven
output.numOdd





