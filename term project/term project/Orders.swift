//
//  Orders.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Orders : Customer{
    var orderId : Int?
    var dateCreated : String?
    var dateShipped : String?
    var CustomerId : String?
    var status : String?
    var shippingId : String?
    
    override init ()
    {
        
        self.orderId = 0
        self.dateCreated = ""
        self.dateShipped = ""
        self.CustomerId = ""
        self.status = ""
        self.shippingId = ""
        super.init()
        
    }
    
    init (o_id : Int, dc : String, ds : String, c_Id : String, st : String, s_id : String, name : String, addr : String, em : String, credit : String, ship : String,u_id : String, pass : String, los : String)
    {
        
        self.orderId = o_id
        self.dateCreated = dc
        self.dateShipped = ds
        self.CustomerId = c_Id
        self.status = st
        self.shippingId = s_id
        super.init(name : name, addr : addr, em : em, credit : credit, ship : ship,u_id : u_id, pass : pass, los : los)
        
    }
    
    
    func placeOrder() {
        
    }
}
