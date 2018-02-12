//
//  ShippingInfo.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class ShippingInfo : Orders{
    var shippingType : String
    var shippingCost : Int
    var shippingRegionId : Int
    
    override init ()
    {
        self.shippingType = ""
        self.shippingCost = 0
        self.shippingRegionId = 0
        super.init ()
        
    }
    
    init (s_Type : String, s_Cost : Int, s_rid : Int,o_id : Int, dc : String, ds : String, c_Id : String, st : String, s_id : String, name : String, addr : String, em : String, credit : String, ship : String,u_id : String, pass : String, los : String)
    {
        self.shippingType = s_Type
        self.shippingCost = s_Cost
        self.shippingRegionId = s_rid
        super.init (o_id : o_id, dc : dc, ds : ds, c_Id : c_Id, st : st, s_id : s_id, name : name, addr : addr, em : em, credit : credit, ship : ship, u_id : u_id, pass : pass, los : los)
        
    }
    
    
    func updateShippingInfo() {
        print("Update options \n")
        print("1] Update shipping type")
        print("2] Update shipping cost")
        print("3] Update Region ID")
        
        let Choice = (Int)(readLine()!)
        
        switch Choice {
        case 1? :
            print("YOur recent item is :  \(shippingType)\n")
            print("YOur new item is : ")
            shippingType = readLine()!
            print("YOur recent item is :  \(shippingType)\n")
            print("/n")
            
            
        case 2? :
            print("Your recent shopping cost is : \(shippingCost)")
            print("\n")
            print("Enter your new shipping cost")
            shippingCost = (Int)(readLine()!)!
            print("Your new shipping cost is : \(shippingCost)")
            print("\n")
            
        case 3? :
            
            print("Your recent shopping region ID is : \(shippingRegionId)")
            print("\n")
            print("Enter your new shipping region Id")
            shippingRegionId = (Int)(readLine()!)!
            print("Your new shipping region id is : \(shippingRegionId)")
            print("\n")
            
            
        default :
            print("Invalid Choice")
        }
    }
}
