//
//  ViewController.swift
//  calculator
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    var num1 = 0.0 // to store first value
    var num2 = 0.0 // for storing result
    var opp = false  // Bool to handle multiple operators at same time
    var aOperator = "+" // to store current operator
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction  func numbers(_ sender: UIButton) {
        // Action names 'numbers' to which all buttons are linked
        
        //using switch on the sender.tag
        switch sender.tag {
        case 0:
            
            result.text = result.text! + "0"
            print("0")
            
            break
            
        case 1:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "1"
            print("1")
            
            break
            
        case 2:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "2"
            print("2")
            break
            
        case 3:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "3"
            print("3")
            break
            
        case 4:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "4"
            print("4")
            break
            
        case 5:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "5"
            print("5")
            break
            
        case 6:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "6"
            print("6")
            break
            
        case 7:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "7"
            print("7")
            break
            
        case 8:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "8"
            print("8")
            break
            
        case 9:
            if result.text == "0"{
                result.text = ""
            }
            result.text = result.text! + "9"
            print("9")
            break
            
        case 10:
            if (result.text?.contains("."))!{
                return
            }
            result.text = result.text! + "."
            print("dot")
            break
            
        case 11:
            
            // "=" for displaying result
           action(operatorName: aOperator)
            opp = false
            break
            
        case 12:
            
            // + operator
            aOperator  = "+"
            if(opp){
                
            }else{
                num1 = Double(result.text!) ?? 0
                result.text = ""
                num2 = Double("0") ?? 0
                opp = true
            }
            break
            
        case 13:
            // - operator
            aOperator  = "-"
            if(opp){
                
            }else{
                num1 = Double(result.text!) ?? 0
                result.text = ""
                num2 = Double("0") ?? 0
                opp = true
            }
            break
            
        case 14:
            // * operator
            aOperator  = "*"
            if(opp){
                
            }else{
                num1 = Double(result.text!) ?? 0
                result.text = ""
                num2 = Double("0") ?? 0
                opp = true
            }
            break
            
        case 15:
            // "/"operartor
            aOperator  = "/"
            if(opp){
                
            }else{
                num1 = Double(result.text!) ?? 0
                result.text = ""
                num2 = Double("0") ?? 0
                opp = true
            }
            break
            
        case 16:
            // % operator
            aOperator = "%"
            if(opp){
                
            }else{
                num1 = Double(result.text!) ?? 0
                result.text = ""
                num2 = Double("0") ?? 0
                opp = true
            }
            break
            
            
            
        case 18:
            // clear C
            result.text = "0"
            opp = false
            num1 = 0.0
            num2 = 0.0
            break
        default:
            print("")
            break
        }
        
    }
    
    // function action to perform different operations
    func action(operatorName: String){
        // using switch case on aoperator
        switch aOperator {
            
        case "+":
            
            aOperator = "+"
            guard let operation = Double(result.text ?? "") else {
                return
            }
            
            num2 = num1 + operation
            roundfigure()
            
            break
            
        case "*":
            
            aOperator = "*"
            
            guard let operation = Double(result.text ?? "") else {
                return
            }
            num2 = num1 * operation
            
            roundfigure()
            
            break
            
        case "/":
            
            aOperator = "/"
            
            guard let operation = Double(result.text ?? "") else {
                return
            }
            if operation == 0
            {
                self.result.text = "cannot divide by 0 "
            } else{
                num2 = num1 / operation
                
                
                roundfigure()
            }
            break
            
        case "-":
            
            aOperator = "-"
            guard let operation = Double(result.text ?? "") else {
                return
            }
            
            num2 = num1 - operation
            
            roundfigure()
            
            break
            
        case "%":
            aOperator = "%"
            
            guard let operation = Double(result.text ?? "") else {
                return
            }
            
            
            num2 = num1.truncatingRemainder(dividingBy: operation )
            roundfigure()
            break
            
            
        default:
            
            break
            
        }
    }
    
    
    
    func roundfigure(){
        if (num2 < 2147483646 && num2.rounded(.up) == num2.rounded(.down)){
            let result1 = Int(self.num2)
            result.text = String(result1)
            self.num2 = Double(result1)
        }else{
            result.text = String(num2)
        }
        opp = false
        
        
    }
    
    override func viewDidLoad() {
        result.layer.masksToBounds = true
        result.layer.cornerRadius = 30
        super.viewDidLoad()
       
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    
}

