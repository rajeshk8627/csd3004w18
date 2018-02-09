//
//  main.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Welcome to shopping mart")
print("\n")
print("Please select who you are")
print("1 Admin")
print("2 Customer")
let Choice = Int(readLine()!)
switch Choice
{
    
case 1? :
    print("You are admin")
    let adm = Administrator()
    adm.updateCatalog()
    
case 2? :
    print("You are Customer")
    let cus = Customer()
    cus.Option()
default:
    print("Invalid choice")

}
