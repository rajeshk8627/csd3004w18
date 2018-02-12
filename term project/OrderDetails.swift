//
//  OrderDetails.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class OrderDetails : Orders{
    
    var productId : Int
    var productName : String
    var quantity : Int
    var unitCost : Float
    var subtotal : Float
    
    override init ()
    {
        
        self.productId = 0
        self.productName = ""
        self.quantity = 0
        self.unitCost = 0
        self.subtotal = 0
        super.init ()
    }
    
    init (p_Id : Int, p_name : String, qn : Int, uc : Float, sub : Float,o_id : Int, dc : String, ds : String, c_Id : String, st : String, s_id : String, name : String, addr : String, em : String, credit : String, ship : String,u_id : String, pass : String, los : String)
    {
        
        self.productId = p_Id
        self.productName = p_name
        self.quantity = qn
        self.unitCost = uc
        self.subtotal = sub
        super.init (o_id : o_id, dc : dc, ds : ds, c_Id : c_Id, st : st, s_id : s_id, name : name, addr : addr, em : em, credit : credit, ship : ship,u_id : u_id, pass : pass, los : los)
    }
    
   func DisData() -> String {
        print("Product Id is: ",productId)
        print("Product Name is: ",productName)
        print("Quantity is: ",quantity)
        print("Cost of one item is: ",unitCost)
        print("Subtotal is: ",subtotal)
        return ""
    }
    func calcPrice(){

    }
}
    
    
    
    

