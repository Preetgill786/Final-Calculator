//
//  ViewController.swift
//  calculator
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num1 = 0.0
    var num2 = 0.0
    var opp = false
    var aOperator = "+"
  
    @IBOutlet weak var result: UILabel!
   
 
       @IBAction  func numbers(_ sender: UIButton) {
        
        if result.text == "0"{
            result.text = ""
        }
      
        switch sender.tag {
        case 0:
            
            result.text = result.text! + "0"
            print("0")
            
            break
            
        case 1:
            result.text = result.text! + "1"
            print("1")
            
            
            break
        case 2:
            result.text = result.text! + "2"
            print("2")
            break
        case 3:
            result.text = result.text! + "3"
            print("3")
            break
        case 4:
            result.text = result.text! + "4"
            print("4")
            break
        case 5:
            result.text = result.text! + "5"
            print("5")
            break
        case 6:
            result.text = result.text! + "6"
            print("6")
            break
        case 7:
            result.text = result.text! + "7"
            print("7")
            break
        case 8:
            result.text = result.text! + "8"
            print("8")
            break
        case 9:
            result.text = result.text! + "9"
            print("9")
            break
        case 10:
            result.text = result.text! + "."
            print("dot")
            break
        case 11:
            
            // "=" for displaying result
            op(operatorName: aOperator)
            
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
            break
        default:
            print("")
            break
        }
        
    }
    
    
    func op(operatorName: String){
     
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
            num2 = num1 / operation
            
          roundfigure()
            
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
    if num2.rounded(.up) == num2.rounded(.down){
        let result1 = Int(self.num2)
    result.text = String(result1)
    self.num2 = Double(result1)
    }else{
    result.text = String(num2)
    }
        opp = false
        
    }
    
          override func viewDidLoad() {
       
        
        super.viewDidLoad()
       
            
       
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
   
    
}

