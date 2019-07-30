import UIKit

/*
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
*/
let numbers: [Int] = [10, 15, 3, 7]
let sum: Int = 17

// **** Method 1 Start
// **** Sorting
// ****
/*
let sortedNumbers = numbers.sorted()
var startPointer: Int = 0
var endPointer: Int = sortedNumbers.count - 1

var iteration: Int = 0

while(startPointer < endPointer) {
    iteration = iteration + 1
    let num1 = sortedNumbers[startPointer]
    let num2 = sortedNumbers[endPointer]
    let newSum = num1 + num2

    if newSum == sum {
        print("Sorting Method: \(num1) + \(num2) = \(sum)")
        break
    }
    else if newSum > sum {
        endPointer = endPointer - 1
    }
    else if newSum < sum {
        startPointer = startPointer + 1
    }
}
*/
// **** Method 1 End
// **** Sorting
// ****


// **** Method 2 Start
// **** Hashing
// ****

var hash: [String: Int] = [:]

for i in 0..<numbers.count {
    let num = numbers[i]
    
    let otherNumber = sum - num
    
    if hash["\(otherNumber)"] == 1 {
        print("\(numbers[i]),\(otherNumber)")
    }
    
    hash["\(num)"]  = 1
    
}

// **** Method 2 End
// **** Hashing
// ****


