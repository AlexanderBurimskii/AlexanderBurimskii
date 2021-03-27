//
//  ViewController.swift
//  Calculator FREE
//
//  Created by Alexandr Burimskii on 22.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelDigits: UILabel!
    

    
    
    // поле результат ввода/вычисления - табло калькулятора
    
    
    
    var commaSign: Bool = false
    var operation: Int = 0
    var numberFromLabel: Float = 0 //то что отображается на табло калькулятора
    var firstNumber: Float = 0
    var minusSign: Bool = false
    var mathSign: Bool = false // для определения нажали или нет на умн/дел/слож/вычит
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func buttons(_ sender: UIButton) {// соединил остальные кнопки и через tag настраиваю операции
        if labelDigits.text != "" && sender.tag != 10 && sender.tag != 11 && sender.tag != 12 && sender.tag != 17 && sender.tag != 18 {// проверка на пустоту
            firstNumber = Float(labelDigits.text!)!
            if sender.tag == 13 { // кнопка деления
                labelDigits.text = "/"
            }
            else if sender.tag == 14 { // кнопка умножения
                labelDigits.text = "x"
            }
            else if sender.tag == 15 { // кнопка вычитания
                labelDigits.text = "-"
            }
            else if sender.tag == 16 { // кнопка сложения
                labelDigits.text = "+"
            }
            operation = sender.tag // получаем теги 13-16 и дальше их превратим в математические знаки
            mathSign = true // был нажат математический знак и все дальше будет с новой строки
        } else if sender.tag == 17 { // кнопка равно
            if operation == 13 {
                labelDigits.text = String(firstNumber / numberFromLabel)
            }else if operation == 14 {
                labelDigits.text = String(firstNumber * numberFromLabel)
            }else if operation == 15 {
                labelDigits.text = String(firstNumber - numberFromLabel)
            }else if operation == 16 {
                labelDigits.text = String(firstNumber + numberFromLabel)
            }
            
        } else if sender.tag == 11 {
            if minusSign == false {
            labelDigits.text = "-" + labelDigits.text!
            minusSign = true
            }
        } else if sender.tag == 18 {
            if commaSign == false {
            labelDigits.text = labelDigits.text! + "."
            commaSign = true
            }
        } else if sender.tag == 10 {
            numberFromLabel = 0
            labelDigits.text = ""
            operation = 0
            firstNumber = 0
        } else if sender.tag == 12 {
            labelDigits.text = String(firstNumber * numberFromLabel / 100)
            numberFromLabel = Float(labelDigits.text!)!
            if sender.tag == 17 { // кнопка равно
                if operation == 13 {
                    labelDigits.text = String(firstNumber / numberFromLabel)
                }else if operation == 14 {
                    labelDigits.text = String(firstNumber * numberFromLabel)
                }else if operation == 15 {
                    labelDigits.text = String(firstNumber - numberFromLabel)
                }else if operation == 16 {
                    labelDigits.text = String(firstNumber + numberFromLabel)
                }
        }
    }
    }
    
    @IBAction func digits(_ sender: UIButton) { //соединили с этой функцией все кнопки 0-9 и через tag получаем цифру нажания
        if mathSign == true { //если нажат знак то начинаем с читой строки
            labelDigits.text = String(sender.tag)
            mathSign = false
        } else {
            labelDigits.text = labelDigits.text! + String(sender.tag)
        }
        
        
        
        numberFromLabel = Float(labelDigits.text!)! //сохраняем для дальнейших вычислений то что на табло калькулятора
    }
    
    
    
}

