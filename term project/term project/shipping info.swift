//
//  shipping info.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShippingInfo{
    var shippingId : Int?
    var shippingType : String?
    var shippingCost : Int?
    var shippingRegionId : Int?
    
    init (s_Id : Int, s_Type : String, s_Cost : Int, s_rid : Int)
    {
        self.shippingId = s_Id
        self.shippingType = s_Type
        self.shippingCost = s_Cost
        self.shippingRegionId = s_rid
        
    }
}

func updateShippingInfo() {
    
}
