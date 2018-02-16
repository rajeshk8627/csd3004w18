//
//  MySingleton.swift
//  new proj
//
//  Created by MacStudent on 2018-02-16.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Mysingleton{
    private static var instant = Mysingleton()
    
    private init()
    {}
    static func getInstant() -> Mysingleton{
        if instant != nil{
            return instant
        }else {
            instant = Mysingleton()
            return instant
        }
    }
    func getMyName() -> String{
        return "Rk"
    }
}
