//
//  ViewController.swift
//  Calculator
//
//  Created by jiarou on 2017/4/11.
//  Copyright © 2017年 jiarou. All rights reserved.
//

import UIKit


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
        
        }else if currentValue != "0" && changeStage=="-"{
            firstTime = "+"
            changeStage = "+"
            if currentNumber - Double(Int(currentNumber)) == 0.0 {
                
                currentValue = String(Int(-currentNumber))
                currentNumber = Double(currentValue)!
            }else{
                  currentValue = String(-currentNumber)
                 currentNumber = Double(currentValue)!
            }
            
        }else if currentValue != "0" && changeStage=="+" {
            
            firstTime = "+"
            changeStage = "-"
            if currentNumber - Double(Int(currentNumber)) == 0.0 {
                
                currentValue = String(Int(-currentNumber))
                 currentNumber = Double(currentValue)!
            }else{
                currentValue = String(currentNumber)
                 currentNumber = Double(currentValue)!
            }
            
        
        }else{
            firstTime = "+"
            changeStage = "+"
            currentValue = "0"
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
        if currentValue == "0"{
            currentValue = "2"
            currentNumber = Double(currentValue)!
       

        }else{
            currentValue += "2"
            currentNumber = Double(currentValue)!
        }
    }
    
    
    @IBAction func three(_ sender: UIButton) {
        
        if currentValue == "0"{
            currentValue = "3"
            currentNumber = Double(currentValue)!
        }else{
            currentValue += "3"
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
    
    func turnToInt(){
      var  checkNumber = total - Double(Int(total))
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

