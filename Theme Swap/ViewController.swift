//
//  ViewController.swift
//  Theme Swap
//
//  Created by Michael Liang on 2024-01-04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
                view.backgroundColor = randomColor
    }
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
            label1.textColor = randomColor
            label2.textColor = randomColor
            label3.textColor = randomColor
    }
    
    @IBAction func changeTextSizePlus(_ sender: UIButton) {
        label1.font = UIFont.systemFont(ofSize: label1.font.pointSize + 1)
        label2.font = UIFont.systemFont(ofSize: label2.font.pointSize + 1)
        label3.font = UIFont.systemFont(ofSize: label3.font.pointSize + 1)
    }
    
    @IBAction func changeTextSizeMinus(_ sender: UIButton) {
        label1.font = UIFont.systemFont(ofSize: label1.font.pointSize - 1)
        label2.font = UIFont.systemFont(ofSize: label2.font.pointSize - 1)
        label3.font = UIFont.systemFont(ofSize: label3.font.pointSize - 1)
    }
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
}

