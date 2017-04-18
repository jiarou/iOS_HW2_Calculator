//
//  ViewController.swift
//  Calculator
//
//  Created by jiarou on 2017/4/11.
//  Copyright © 2017年 jiarou. All rights reserved.
//

import UIKit
import Darwin



class ViewController: UIViewController {
    var currentNumber:Double = 0
    var total:Double = 0
    var operatorButton = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var display: UILabel!
        var firstTime = "+"
        var changeStage = "+"
    
        var currentValue = "0" {
        didSet{
            if firstTime == "-" && changeStage == "-"{
                 self.display.text = "-"
                 firstTime = "+"
            }else{
            self.display.text = "\(self.currentValue)"
        }
    }
}
    
    @IBAction func changeButton(_ sender: UIButton) {
        
        if  currentValue=="0" && changeStage=="+"{
            //first click
            firstTime = "-"
            changeStage = "-"
            currentValue = "0"
        }else if currentValue=="0" && changeStage=="-" {
            firstTime = "+"
            changeStage = "+"
            currentValue = "0"
        
        }else if total != 0 && changeStage=="-"{
            firstTime = "+"
            changeStage = "+"
            if total - Double(Int(total)) == 0.0 {
                total = Double(total)
                currentValue = String(Int(total))
            }else{
               
               total = Double(total)
               currentValue = String(total)
            }
            
        }else if total != 0 && changeStage=="+" {
            
            firstTime = "+"
            changeStage = "-"
            if total - Double(Int(total)) == 0.0 {
                total = -Double(total)
                currentValue = String(Int(total))
            }else{
               total = -Double(total)
               currentValue = String(total)
            }
        }else if currentValue != "0" && changeStage=="-"{
            firstTime = "+"
            changeStage = "+"
            if currentNumber - Double(Int(currentNumber)) == 0.0 {
                currentNumber = -Double(currentValue)!
                 currentValue = String(Int(currentNumber))
            }else{
                
                 currentNumber = -Double(currentValue)!
                  currentValue = String(-currentNumber)
            }
            
        }else if currentValue != "0" && changeStage=="+" {
            
            firstTime = "+"
            changeStage = "-"
            if currentNumber - Double(Int(currentNumber)) == 0.0 {
                 currentNumber = -Double(currentValue)!
                 currentValue = String(Int(currentNumber))
            }else{
                
                 currentNumber = -Double(currentValue)!
                currentValue = String(currentNumber)
            }
        }else{
            firstTime = "+"
            changeStage = "+"
            currentValue = "0"
        }

    }
    
    

   
    @IBAction func ZeroButton(_ sender: UIButton) {
        if currentValue == "0" && changeStage == "+"{
            currentValue = "0"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-0"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "0"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "0"
            currentNumber = Double(currentValue)!
        }
        
    }
    
    
    

    @IBAction func one(_ sender: UIButton) {
        if currentValue == "0" && changeStage == "+"{
            currentValue = "1"
            currentNumber = Double(currentValue)!

        }else if changeStage == "-" {
            if currentValue == "0" {
            currentValue = "-1"
            currentNumber = Double(currentValue)!
            }else{
                currentValue += "1"
                 currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "1"
            currentNumber = Double(currentValue)!
        }
    }
   

    @IBAction func two(_ sender: UIButton) {
        if currentValue == "0" && changeStage == "+"{
            currentValue = "2"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-2"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "2"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "2"
            currentNumber = Double(currentValue)!
        }
    }
    
    
    @IBAction func three(_ sender: UIButton) {
        
        if currentValue == "0" && changeStage == "+"{
            currentValue = "3"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-3"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "3"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "3"
            currentNumber = Double(currentValue)!
        }
    }

    
    
    @IBAction func four(_ sender: UIButton) {
        
        if currentValue == "0" && changeStage == "+"{
            currentValue = "4"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-4"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "4"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "4"
            currentNumber = Double(currentValue)!
        }
    
    }
    
    
    @IBAction func five(_ sender: UIButton) {
        if currentValue == "0" && changeStage == "+"{
            currentValue = "5"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-5"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "5"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "5"
            currentNumber = Double(currentValue)!
        }
        
        
        
    }
    
    
    @IBAction func six(_ sender: UIButton) {
        
        if currentValue == "0" && changeStage == "+"{
            currentValue = "6"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-6"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "6"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "6"
            currentNumber = Double(currentValue)!
        }
        
        
    }
    
    
    @IBAction func seven(_ sender: UIButton) {
        if currentValue == "0" && changeStage == "+"{
            currentValue = "7"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-7"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "7"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "7"
            currentNumber = Double(currentValue)!
        }
        
    
    
    
    }
    
    
    @IBAction func eight(_ sender: UIButton) {
        
        if currentValue == "0" && changeStage == "+"{
            currentValue = "8"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-8"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "8"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "8"
            currentNumber = Double(currentValue)!
        }
        
    }
    
    
    @IBAction func nine(_ sender: UIButton) {
        if currentValue == "0" && changeStage == "+"{
            currentValue = "9"
            currentNumber = Double(currentValue)!
            
        }else if changeStage == "-" {
            if currentValue == "0" {
                currentValue = "-9"
                currentNumber = Double(currentValue)!
            }else{
                currentValue += "9"
                currentNumber = Double(currentValue)!
            }
        }else{
            currentValue += "9"
            currentNumber = Double(currentValue)!
        }
        
        
    }
    
    
    
    
    
    @IBAction func zero(_ sender: UIButton) {
        
        total = 0
        currentNumber = 0
        operatorButton = "0"
        self.currentValue = "0"
        changeStage = "+"
    }
    
    
    @IBAction func dot(_ sender: UIButton) {
        if  operatorButton=="=" {
            currentValue = String(total)
        }else{
          currentValue += "."
        }
    }
    
    @IBAction func add(_ sender: UIButton) {
        changeStage = "+"
        if currentValue == "0"{
            currentValue = "0"
        }else{
            total += currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "+"

        }
    }
    
    
    @IBAction func subtract(_ sender: UIButton) {
        changeStage = "+"
        if currentValue == "0"{
            currentValue = "0"
        }else if total == 0 {
            total = currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "-"
        }else{
            total -= currentNumber
            currentNumber = 0
            currentValue = "0"
             operatorButton = "-"
        }
        
        
    }
    
    
    @IBAction func multiply(_ sender: UIButton) {
        changeStage = "+"

        if currentValue == "0"{
            currentValue = "0"
        }else if total == 0  {
            total = 1
            total *= currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "*"
        
        }else{
            currentNumber=1
            total *= currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "*"
        }
            }
 
    @IBAction func divide(_ sender: Any) {
          changeStage = "+"
        if currentValue == "0"{
            currentValue = "0"
        }else if total == 0  {
            
            total = currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "/"
            
        }else{
            currentNumber=1
            total /= currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "/"
        }
      
    }
    
    
    @IBAction func percentage(_ sender: UIButton) {

        if currentValue == "0"{
            currentValue = "0"
        }else if total == 0  {
            total = currentNumber*0.01
            currentValue = String(currentNumber*0.01)
            currentNumber = 0
         
        }else{
            total *= 0.01
            currentNumber = 0
            currentValue = String(total)
        }
        
    }
    
    @IBAction func powButton(_ sender: UIButton) {
        
        changeStage = "+"
        
        if currentValue == "0"{
            currentValue = "0"
        }else if total == 0  {
            total = currentNumber
            currentNumber = 0
            currentValue = "0"
            operatorButton = "^"
            
        }else if operatorButton=="="{
            total = Double(total)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "^"
        
        
        }else{
            total = pow(Double(total),Double(currentNumber))
            currentNumber = 0
            currentValue = "0"
            operatorButton = "^"
        }

    }
    
    
    @IBAction func squareButton(_ sender: UIButton) {
        changeStage = "+"
        if currentValue == "0"{
            total =  sqrt(Double(currentNumber))
            currentValue = "0"
            operatorButton = "sq"
        }else if total == 0  {
            total = Double(currentNumber)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "sq"
            
        }else if operatorButton=="="{
            total = Double(total)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "sq"
        }else{
          total =  sqrt(Double(currentNumber))
            currentValue = "0"
            operatorButton = "sq"
        }
    }
    
    @IBAction func logButton(_ sender: UIButton) {
        changeStage = "+"
        if currentValue == "0"{
            total =   log10(Double(currentNumber))
            currentValue = "0"
            operatorButton = "log10"
        }else if total == 0  {
            total = Double(currentNumber)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "log10"
            
        }else if operatorButton=="="{
            total = Double(total)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "log10"
        }else{
            total =  log10(Double(currentNumber))
            currentValue = "0"
            operatorButton = "log10"
        }

        
    }


    @IBAction func piButton(_ sender: UIButton) {
        if currentValue == "0"{
            currentValue = "3.14159265359"
             total = 3.14159265359
        }else if total == 0  {
            total = currentNumber*3.14159265359
            currentValue = String(currentNumber*3.14159265359)
            currentNumber = 0
            
        }else{
            
            total *= 3.14159265359
            currentNumber = 0
            currentValue = String(total)
            
        }
    }
    
    
    @IBAction func eButton(_ sender: UIButton) {
        changeStage = "+"
        if operatorButton=="e"{
            total *=  exp(Double(1))
            currentValue = "0"
            operatorButton = "e"
         
        }else if currentValue == "0"{
         
            total = exp(Double(1))
            currentValue = String(total)
            operatorButton = "e"
            
        }else if total == 0  {
            total = Double(currentNumber)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "e"
            
        }else if operatorButton=="="{
            total = Double(total)
            currentNumber = 0
            currentValue = "0"
            operatorButton = "e"
        }else{
            total *=  exp(Double(1))
            currentValue = "0"
            operatorButton = "e"
        }
        
    }
    
    func turnToInt(){
      var checkNumber = total - Double(Int(total))
        if checkNumber == 0.0 {
            currentValue = String(Int(total))
        }else{
            currentValue = String(total)
        
        }

    }

    
    @IBAction func answer(_ sender: UIButton) {
        if operatorButton == "+"{
        total += currentNumber
        turnToInt()
        }else if operatorButton == "-" {
            total -= currentNumber
          turnToInt()
        }else if operatorButton == "*"{
            total *=  currentNumber
            turnToInt()
        }else if operatorButton == "/"{
         total /=  currentNumber
          turnToInt()
        }else if operatorButton == "^"{
           
           total = pow(Double(total),Double(currentNumber))
            turnToInt()
           
        }else if operatorButton == "sq"{
            total =  sqrt(Double(currentNumber))
            turnToInt()
            
        }else if operatorButton == "e"{
            total *=  exp(Double(1))
            turnToInt()
            
        }else if operatorButton == "log10"{
            total =  log10(Double(currentNumber))
            turnToInt()
            
        }else if operatorButton == "=" {
            if total == 0 {
                if currentNumber == 0 {
                 
                }else{
                 currentValue = String(currentNumber)
                }
            }
            else{
               turnToInt()
            }
        }
        operatorButton = "="
        currentNumber = 0
        changeStage = "+"
        firstTime = "+"
        
        }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

