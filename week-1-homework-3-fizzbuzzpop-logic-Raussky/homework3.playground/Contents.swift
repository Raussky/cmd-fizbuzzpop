import UIKit

// 3 ways

// 1 way with if/else
func fizzBuzz(n: Int) -> [String] {
    var arr = [String]()
    
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            arr.append("FizzBuzz")
        } else if i % 3 == 0 && i % 7 == 0 {
            arr.append("FizzPop")
        } else if i % 3 == 0 {
            arr.append("Fizz")
        } else if i % 5 == 0 {
            arr.append("Buzz")
        } else if i % 7 == 0 {
            arr.append("Pop")
        } else {
            arr.append("\(i)")
        }
    }
    return arr
}

fizzBuzz(n: 15)


//2 way switch case tuple

func fizzBuzz2(n: Int) -> [String] {
    
    var result = [String]()
    
    for i in 1...n {
        switch(i % 3,i % 5,i % 7) {
        case (0, 0, _):
            result.append("FizzBuzz")
        case (0,_,0):
            result.append("FizzPop")
        case(0,_,_):
            result.append("Fizz")
        case(_,0,_):
            result.append("Buzz")
        case(_,_,0):
            result.append("Pop")
        default:
            result.append("\(i)")
        }
    }
    
    return result
}

fizzBuzz2(n: 15)


//3 way switch case where

func fizzBuzz3(n : Int) -> [String] {
    
    var array = [String]()
    
    for i in 1...n {
        switch i {
        case _ where i % 3 == 0 && i % 5 == 0:
            array.append("FizzBuzz")
        case _ where i % 3 == 0 && i % 7 == 0:
            array.append("FizzPop")
        case _ where i % 3 == 0:
            array.append("Fizz")
        case _ where i % 5 == 0:
            array.append("Buzz")
        case _ where i % 7 == 0:
            array.append("Pop")
        default:
            array.append("\(i)")
        }
    }
    
    return array
}

fizzBuzz3(n: 15)

