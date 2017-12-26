//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//valid parenthasis #20
//class Solution {
//    func isValid(_ s: String) -> Bool {
//        var stack = [Character]()
//        for char in s {
//            switch char {
//            case "{", "[", "(":
//                stack.append(char)
//            case "}":
//                if stack.count == 0 || stack.popLast() != "{" {
//                    return false
//                }
//            case "]":
//                if stack.count == 0 || stack.popLast() != "[" {
//                    return false
//                }
//            case  ")":
//                if stack.count == 0 || stack.popLast() != "(" {
//                    return false
//                }
//            default:
//                continue
//
//            }
//
//        }
//        if !stack.isEmpty {
//            return false
//        }
//        return true
//    }
//}

// fib
func fibs(_ n: Int) -> Int {
    
    if n == 0 {
        return 0
    } else if n == 1{
        return 1
    }
    
    return fibs(n - 1) + fibs(n - 2)
}

//fibs(4)

//factorial

func factorial(n: Int) -> Int{
    if n == 1 {
        return 1
    }
    return n * factorial(n: n-1)
}
factorial(n: 3)


func largest(_ arr: [Int]) -> Int {
    var largest = Int.min
    for numb in arr {
        if numb > largest {
            largest = numb
        }
}
    return largest
}
