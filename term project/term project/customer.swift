//
//  customer.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Customer : User{
    var customerName : String
    var address : String
    var email : String
    var creditCardInfo : String
    var shippingInfo : String
    
    override init ()
    {
        
        self.customerName = ""
        self.address = ""
        self.email = ""
        self.creditCardInfo = ""
        self.shippingInfo = ""
        super.init()
    }
    
    
    init (name : String, addr : String, em : String, credit : String, ship : String,u_id : String, pass : String, los : String)
    {
        
        
        self.customerName = name
        self.address = addr
        self.email = em
        self.creditCardInfo = credit
        self.shippingInfo = ship
        super.init (u_id : u_id, pass : pass, los : los)
    }
    
    func Option() {
        print("Select your choice from below given options")
        print("1 New Register")
        print("2 Login")
        print("3 Update Profile")
        
        let UserInput = Int(readLine()!)
        if UserInput == 1 {
            register()
        }
            
        else if UserInput == 2 {
            login()
        }
        else if UserInput == 3 {
            updateProfile()
        }
    }
    
    func register() {
        print("Enter your Name")
        customerName = readLine()!
        print("Enter your user Id")
        userId = readLine()!
        print("Enter your address")
        address = readLine()!
        print("Enter your email")
        email = readLine()!
        print("Enter your password")
        super.password = readLine()!
        print("Enter your ")
        customerName = readLine()!
        print("\n")
        print("Full name = \(customerName)")
        print("Userid = \(userId)")
        print("Address = \(address)")
        print("email address = \(email)")
        print("Password = \(password)")
        
    }
    
    func login() {
        print("Enter your Id")
        let inputUserId = readLine()
        print("Enter your password")
        let inputPassword = readLine()
        let validateLogin = +verifyLogin(inputUserId: inputUserId!, inputPassword: inputPassword!)
    }
    func InAccount(inputUserId: String ){
        print("hello, inputUserId) welcome to your shopping mart account")
        print("\n")
        print("select cateogries from below")
        print("1] orders")
        print("2] shopping cart")
        
        let userInput = Int(readLine()!)
        if userInput == 1 {
            let yourOrders = Orders()
            yourOrders.placeOrder()
        }
        else if userInput == 2
        {
            print("select what you are interestred in ")
            print("1] add item to cart")
            print("2] update  quantity")
            print("3] vieew cart details")
            print("4] checkout")
            
            let yourInput = Int(readLine()!)
            if yourInput == 1{
                let addItem = ShoppingCart()
                addItem.addCartItem()
            }else if yourInput == 2{
                let UpdateItem = ShoppingCart()
                UpdateItem.UpdateCartItem()
            }else if yourInput == 3{
                let ViewItem = ShoppingCart()
                ViewItem.ViewCartItem()
            }else if yourInput == 4{
                let checkout = ShoppingCart()
                checkout.checkout()
            }
        }
    }
    
    
    func updateProfile() {
        
    }
}
