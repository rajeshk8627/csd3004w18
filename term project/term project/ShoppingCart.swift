//
//  Shopping Cart.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShoppingCart : Customer{
    var cartId : Int?
    var productId : Int?
    var quantity : Int?
    var dateAdded : Int?
    override init ()
    {
        super.init ()
        self.cartId = 0
        self.productId = 0
        self.quantity = 0
        self.dateAdded = 0
        
    }
    
    init (c_Id : Int, p_Id: Int, qn : Int, da : Int,name : String, addr : String, em : String, credit : String, ship : String,u_id : String, pass : String, los : String)
    {
        super.init (name : name, addr : addr, em : em, credit : credit, ship : ship,u_id : u_id, pass : pass, los : los)
        self.cartId = c_Id
        self.productId = p_Id
        self.quantity = qn
        self.dateAdded = da
        
    }
    
    
    func addCartItem() {
        
    }
    
    func updateQuantity() {
        
    }
    func viewCartDetails() {
        
    }
    func checkOut() {
        
    }
    
}
