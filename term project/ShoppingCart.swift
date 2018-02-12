//
//  Shopping Cart.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShoppingCart : Customer{
    var cartId : Int
    var productId : Int
    var quantity : Int
    var dateAdded : Int
    
    override init ()
    {
        self.cartId = 0
        self.productId = 0
        self.quantity = 0
        self.dateAdded = 0
        super.init()
    }
    
    init (c_Id : Int, p_Id: Int, qn : Int, da : Int,name : String, addr : String, em : String, credit : String, ship : String,u_id : String, pass : String, los : String)
    {
       
        self.cartId = c_Id
        self.productId = p_Id
        self.quantity = qn
        self.dateAdded = da
         super.init (name : name, addr : addr, em : em, credit : credit, ship : ship,u_id : u_id, pass : pass, los : los)
    }
    
    
    func addCartItem() {
        var choice = "N"
        self.cartId = Int((arc4random()))
        repeat {
            print("\nEnter the Item ID: ")
            self.productId = (Int)(readLine()!)!
            print("Enter the quantity: ")
            self.quantity = (Int)(readLine()!)!
            
            self.dateAdded = (String)(describing: date)
            prod_list[self.productId] = [self.quantity,self.dateAdded]
            print("The Item is successfully added to your cart !")
            count = count + 1
            print("continue adding more items ? (Y/N)?")
            choice = readLine()!
        }
        while (choice == "Y")
        print("Total Item in the cart is: ",count)
        }
    
    
    
    func updateQuantity() {
        var updation_product_id :Int
        var updated_quantity : Int
        
        print("Enter the product id for updation: ")
        updation_product_id = (Int)(readLine()!)!
        
        if self.productId != updation_product_id
        {
            print("________________ RAJESH _____________-", self.productId,updation_product_id)
            print("Invalid product id !")
            return 0
        }
        else
        {
            print("The available quantity for this product is: ",self.quantity)
            print("Enter the new quantity")
            updated_quantity = (Int)(readLine()!)!
            self.quantity = updated_quantity
            date = date()
            self.dateAdded = (String)(describing: date)
            prod_list[self.productId] = [self.quantity,self.dateAdded]
            print("The product quantity is updated successfully.")
            return 1
        }
    
    func viewCartDetails() {
        print("Cart details")
        print("Cart ID : ",self.cartId)
        for (product, list) in prod_list{
            
            print("__", Product_id = ", product, "quantity = ", list(0), :date added = ".list[1])
        }
        
    }
    func checkOut() {
        var choice: String
        print("checkout for cart a",self.cartId)
        
        print("The total items : ",self.count)
        print("proceed to checkout ? (Y/N)")
        choice = readLine()!
        if choice == "Y"
        {
            print("Checkout is successful: ")
        }
        else
        {
            print("Checkout unsuccessful : please try again !")
            }
        }
    }

