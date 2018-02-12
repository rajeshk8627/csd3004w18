//
//  order details.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class OrderDetails{
    var orderId : Int?
    var productId : Int?
    var productName : String?
    var quantity : Int?
    var unitCost : Float?
    var subtotal : Float?
    
    init (o_id : Int, p_Id : Int, p_name : String, qn : Int, uc : Float, sub : Float)
    {
        self.orderId = o_id
        self.productId = p_Id
        self.productName = p_name
        self.quantity = qn
        self.unitCost = uc
        self.subtotal = sub
        
    }
}

func calcPrice() {
    
}
