//
//  ViewController.swift
//  Multiply
//
//  Created by Andrew James Kinsey on 9/14/16.
//  Copyright © 2016 Andrew Kinsey. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var textFieldFirst: UITextField!
    @IBOutlet weak var textFieldSecond: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad()
    { super.viewDidLoad()
    
        if textFieldFirst.text != nil
        {
            textFieldFirst.text = "0"

                }
        if textFieldSecond.text != nil
        {
            textFieldSecond.text = "0"
        
                }
    }

    
    @IBAction func indexChanged(_ sender: UISegmentedControl)
    {
        switch mySegmentedControl.selectedSegmentIndex
        {
        case 0:
            signLabel.text = "+";
        case 1:
            signLabel.text = "-";
        case 2:
            signLabel.text = "X";
        case 3:
            signLabel.text = "/";
        default:
            break;
        }
    }
    


    
    @IBAction func buttonClicked(_ sender: AnyObject)
    {
        if textFieldFirst.text == ""
        {
        textFieldFirst.text = "0"
        
        }
        if textFieldSecond.text == ""
        {
            textFieldSecond.text = "0"
        }
    }
    
    @IBAction func calculateButtonTapped(_ sender: AnyObject)
        {
    let firstNumberString = textFieldFirst.text
    let secondNumberString = textFieldSecond.text
    let firstNumber = Double(firstNumberString!)
    let secondNumber = Double(secondNumberString!)

                
    if mySegmentedControl.selectedSegmentIndex == 0
    {
    let result = firstNumber! + secondNumber!
    answerLabel.text = "\(result)"
    if result.truncatingRemainder(dividingBy: 2) == 0
        {
        imageView.image = UIImage(named: "hillary")
        }
    if result.truncatingRemainder(dividingBy: 2) != 0
        {
        imageView.image = UIImage(named: "trump")
        }
    if result == 64
        {
        imageView.image = UIImage(named: "yoshi")
        }
    }
    
    if mySegmentedControl.selectedSegmentIndex == 1
    {
    let result = firstNumber! - secondNumber!
    answerLabel.text = "\(result)"
    if result.truncatingRemainder(dividingBy: 2) == 0
        {
        imageView.image = UIImage(named: "hillary")
        }
    if result.truncatingRemainder(dividingBy: 2) != 0
        {
        imageView.image = UIImage(named: "trump")
        }
    if result == 64
        {
        imageView.image = UIImage(named: "yoshi")
        }
    }
    
    if mySegmentedControl.selectedSegmentIndex == 2
    {
    let result = firstNumber! * secondNumber!
    answerLabel.text = "\(result)"
    if result.truncatingRemainder(dividingBy: 2) == 0
        {
        imageView.image = UIImage(named: "hillary")
        }
    if result.truncatingRemainder(dividingBy: 2) != 0
        {
        imageView.image = UIImage(named: "trump")
        }
    if result == 64
        {
        imageView.image = UIImage(named: "yoshi")
        }
    }
            
    if mySegmentedControl.selectedSegmentIndex == 3
    {
    let result = firstNumber! / secondNumber!
    answerLabel.text = "\(result)"
    if result.truncatingRemainder(dividingBy: 2) == 0
        {
        imageView.image = UIImage(named: "hillary")
        }
    if result.truncatingRemainder(dividingBy: 2) != 0
        {
        imageView.image = UIImage(named: "trump")
        }
    if result == 64
        {
        imageView.image = UIImage(named: "yoshi")
        }
    }
textFieldFirst.resignFirstResponder()
textFieldSecond.resignFirstResponder()
            }
}
