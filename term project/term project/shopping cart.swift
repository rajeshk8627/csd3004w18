//
//  shopping cart.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShoppingCart{
    var cartId : Int?
    var productId : Int?
    var quantity : Int?
    var dateAdded : Int?
    
    init (c_Id : Int, p_Id: Int, qn : Int, da : Int)
    {
        self.cartId = c_Id
        self.productId = p_Id
        self.quantity = qn
        self.dateAdded = da
        
    }
}

func addCartItem() {
    
}

func updateQuantity() {
    
}
func viewCartDetails() {
    
}
func checkOut() {
    
}
