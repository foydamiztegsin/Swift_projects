//
//  ViewController.swift
//  CalculatorTutorial
//
//  Created by aaa on 06/10/23.
//

import UIKit

class ViewController: UIViewController 
{
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorRusults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
    func clearAll()
    {
        workings = ""
        calculatorWorkings.text = ""
        calculatorRusults.text = ""
    }
    
    @IBAction func equalsTap(_ sender: Any) 
    {
        if(validInput())
        {
            let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorRusults.text = resultString
        }
        else
        {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Calculator unable to do math based on input",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func validInput() -> Bool
    {
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in  workings
        {
            if(specialCharather(char: char))
            {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        
        var previous: Int = -1
        
        for index in funcCharIndexes
        {
            if(index == 0)
            {
                return false
            }
            if(index == workings.count - 1)
            {
                return false
            }
            if(previous != -1)
            {
                if(index - previous == 1)
                {
                    return false
                }
            }
            previous = index
        }
        return true
    }
    
    func specialCharather (char: Character) -> Bool
    {
        if(char == "*")
        {
            return true
        }
        if(char == "/")
        {
            return true
        }
        if(char == "+")
        {
            return true
        }
        return true
        
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func allClearTap(_ sender: Any) 
    {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) 
    {
        if(!workings.isEmpty)
        {
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }
    
    func addtoWorkings(value: String)
    {
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    @IBAction func percentTap(_ sender: Any) 
    {
        addtoWorkings(value: "%")
    }
    
    @IBAction func divideTap(_ sender: Any) 
    {
        addtoWorkings(value: "/")
    }
    
    @IBAction func timesTap(_ sender: Any) 
    {
        addtoWorkings(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) 
    {
        addtoWorkings(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) 
    {
        addtoWorkings(value: "+")
    }
    
    @IBAction func decimalTap(_ sender: Any) 
    {
        addtoWorkings(value: "/")
    }
    
    @IBAction func zeroTap(_ sender: Any) 
    {
        addtoWorkings(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any) 
    {
        addtoWorkings(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) 
    {
        addtoWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) 
    {
        addtoWorkings(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) 
    {
        addtoWorkings(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) 
    {
        addtoWorkings(value: "5")
    }
    
    
    @IBAction func sixTap(_ sender: Any) 
    {
        addtoWorkings(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) 
    {
        addtoWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) 
    {
        addtoWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) 
    {
        addtoWorkings(value: "9")
    }
    
    
    
}

