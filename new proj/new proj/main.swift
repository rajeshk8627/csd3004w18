//
//  main.swift
//  new proj
//
//  Created by MacStudent on 2018-02-16.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation/Users/macstudent/Downloads/Rajesh_C0728535_MAD3004_FP/TermProject2

var obj1 = Mysingleton()
Mysingleton.instant.getMyName();

print(Mysingleton.getInstant().getMyName())

var obj2 = Mysingleton.getInstant()
print(obj2.getMyName())


var obj3 = Mysingleton.getInstant()
print(obj3.getMyName)









func swapTwoValues<T>(_ a: inout T, _ b:inout T){
    //func swapTWoValues(_ a: inout T, _ b:inout T){
    let temporaryA = a
    a = b
    b = temporaryA
}

var num1 = 3
var num2 = 107
print("num1 = \(num1) num2 = \(num2)")

swapTwoValues(&num1, &num2)
print("after swapping num1 = \(num1) num2 = \(num2)")


var str1 = "HI"
var str2 = "BYE"

swapTwoValues(&str1, &str2)
print("after swaping str1 = \(str1) str2 = \(str2)")







//stack
