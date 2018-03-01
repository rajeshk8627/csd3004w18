//
//  RegisterVC.swift
//  NRK_PARKING
//
//  Created by MacStudent on 2018-02-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var dateOfBirth: UIDatePicker!
    @IBOutlet weak var cityPicker: UIPickerView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPostalCode: UITextField!
        @IBOutlet weak var txtContactNumber: UITextField!
        var cityList: [String] = ["Vancouver","Ottawa","Toronto","Calgary","Windsor","Ajax","Pickering","Admenton","Jasper","Quebec","Alberta","British Columbia","Montreal"]
        var selectedCityIndex: Int = 0
        
        override func viewWillAppear(_ animated: Bool) {
            self.navigationController!.setNavigationBarHidden(false, animated: true)
            self.title = "Register"
            
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action:   #selector(displayValues))
            self.navigationItem.rightBarButtonItem = doneButton
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //add data in picker
            self.cityPicker.delegate = self
            self.cityPicker.dataSource = self
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        @objc private func displayValues(){
            self.selectedCityIndex = self.cityPicker.selectedRow(inComponent: 0)
            
            let allData: String = "\(self.txtName.text!) \n \(self.txtContactNumber.text!) \n \(self.dateOfBirth.date) \n \(self.cityList[selectedCityIndex]) \n \(self.txtPostalCode.text!) \n \(self.txtEmail.text!)"
            
            //let infoAlert = UIAlertController(title: "Verify your details", message: allData, preferredStyle: .alert)
            
            //Action sheet
            let infoAlert = UIAlertController(title: "Verify your details", message: allData, preferredStyle: .actionSheet)
            
            infoAlert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
            infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {_ in self.displayMenuScreen()}))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
        
        
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return self.cityList.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return self.cityList[row]
        }
        
        
        @objc func displayMenuScreen() {
            let newCustomer = Customer(self.txtName.text!, self.txtContactNumber.text!, self.dateOfBirth.date, self.cityList[selectedCityIndex], self.txtPostalCode.text!, self.txtEmail.text!, self.txtPassword.text!)
            
            if Customer.addCustomer(cust: newCustomer){
                let menuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let menuVC = menuSB.instantiateViewController(withIdentifier: "MenuScreen")
                navigationController?.pushViewController(menuVC, animated: true)}
            else{
                print("Something goes wrong")
            }
        }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
}
    
  /*
 
 class RegisterVC: UIViewController {
 
 @IBOutlet var txtName: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "REGISTER"
        
        let btnSubmit = UIBarButtonItem(title: "SUBMIT", style: .plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    @objc private func displayValues(){
        let infoAlert = UIAlertController(title: "ALERT: VERIFY", message: "PLEASE CHECHKOUT YOUR DETAILS ONCE AGAIN", preferredStyle: .alert)
        infoAlert.addAction(UIAlertAction(title: "CONFIRM", style: .default, handler: {_ in self.displayWelcomeScreen()}))
        
        self.present(infoAlert, animated: true)
    }
    
    func displayWelcomeScreen(){
        let welcomeSB: UIStoryboard = UIStoryboard(name: "LOGIN", bundle: nil)
        let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "GO TO WELCOME SACREEN") as! WelcomeVC
        
        
        welcomeVC.welcomeTitle = txtName.text!
        navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
 
 */
