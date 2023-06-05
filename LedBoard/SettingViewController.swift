//
//  SettingViewController.swift
//  LedBoard
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tapTextColorBtn(_ sender: UIButton) {
        if sender == self.yellowBtn{
            self.changeTextColor(color: .yellow)
        } else if sender == self.purpleBtn{
            self.changeTextColor(color: .purple)
        } else {
            self.changeTextColor(color: .green)
        }
    }
    
    @IBAction func tapBackgroundColorBtn(_ sender: UIButton) {
        if sender == self.blackBtn{
            self.changeTextColor(color: .black)
        } else if sender == self.blueBtn{
            self.changeTextColor(color: .blue)
        } else {
            self.changeTextColor(color: .orange)
        }    }
    
    @IBAction func tapSaveBtn(_ sender: UIButton) {
    }
    private func changeTextColor(color:UIColor){
        self.yellowBtn.alpha = color == UIColor.yellow ? 1:0.2
        self.purpleBtn.alpha = color == UIColor.yellow ? 1:0.2
        self.greenBtn.alpha = color == UIColor.yellow ? 1:0.2
    }
    private func chageBackgroundColor(color: UIColor){
        self.blackBtn.alpha = color == UIColor.black ? 1: 0.2
        self.blackBtn.alpha = color == UIColor.black ? 1: 0.2
        self.orangeBtn.alpha = color == UIColor.black ? 1: 0.2
    }
}
