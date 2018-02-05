//
//  orders.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Orders{
    var orderId : Int?
    var dateCreated : String?
    var dateShipped : String?
    var customerName : String?
    var CustomerId : String?
    var status : String?
    var shippingId : String?
    
    
    
    init (o_id : Int, dc : String, ds : String, name : String, c_Id : String, st : String, s_id : String)
    {
        self.orderId = o_id
        self.dateCreated = dc
        self.dateShipped = ds
        self.customerName = name
        self.CustomerId = c_Id
        self.status = st
        self.shippingId = s_id
        
    }
}

func placeOrder() {
    
}
