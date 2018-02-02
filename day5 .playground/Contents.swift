//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//classes
class employee{
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    
    //initializers
    init(){
        self.empID = 0
        self.empName = " "
        self.basicPay=0.0
    }
    init(ID: Int, nm:String, Pay:Double){
        self.empID = ID
        self.empName = nm
        self.basicPay = Pay
        
    }
    func display(){
        print("Employee ID : ",self.empID!)
        print("Employee Name : ",self.empName!)
        print("basic Pay : ",self.basicPay!)
    }
}


var emp1 = employee()
emp1.empID = 101
emp1.empName = "rajesh"
emp1.basicPay = 5000
emp1.display()



//inheriting from employee class
class PermanentEmployee : employee{
    var vacationWeeks : Int?
    
    //default initializer
    override init(){
        super.init()
        self.vacationWeeks = 0
}

    //Parametrized initializer of subclass
    init(eID: Int, eNM:String, ePay:Double, weeks:Int){
        super.init(ID: eID, nm: eNM, pay: ePay)
        self.vacationWeeks = weeks
    }
var obj2 = PermanentEmployee()
obj2.empID = 102
obj2.empName = "Tuan"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
obj2.display()
}

var emp3 = employee()
emp1.display()

var emp4 = employee(ID: 104, nm: "navneet", pay: 3409.89)
emp4.display()

var obj5 = PermanentEmployee()
//obj5.display()

var obj6 = PermanentEmployee(eID: 106, eNM: "navjot", ePay: 1320.77, weeks: 1)
obj6.display()

class payroll :  PermanentEmployee
{
    var netPay = Double{
        get{
            var vw = self.vacationWeeks!
            if vw > 5{
                return self.basicPay! - 100
            }
            else{
                return{
                    return self.basicPay!
                }
            }
    }
    override init()
    
}

//manipulate object array []
var janpayroll = [payroll]()
let noOfEmployees = 2
    for i in 0...<2{
    janpayroll.append(payroll(eID: 107, eNM: "JK", ePay: 5555.56, weeks: 7))
    janpayroll[i].display()
}
