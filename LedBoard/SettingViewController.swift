//
//  SettingViewController.swift
//  LedBoard
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
  }

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    

    var ledText: String?
    var textColor:UIColor = .systemYellow
    var backgroundColor:UIColor = .black
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    private func configureView(){
        if let ledText = self.ledText{
            self.textField?.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.chageBackgroundColor(color: self.backgroundColor)
    }

    @IBAction func tapTextColorBtn(_ sender: UIButton) {
        if sender == yellowBtn{
            self.changeTextColor(color: .systemYellow)
            self.textColor = .systemYellow
        } else if sender == purpleBtn{
            self.changeTextColor(color: .systemPurple)
            self.textColor = .systemPurple
        } else {
            self.changeTextColor(color: .systemGreen)
            self.textColor = .systemGreen
        }
    }
    
    @IBAction func tapBackgroundColorBtn(_ sender: UIButton) {
        if sender == self.blackBtn{
            self.chageBackgroundColor(color: .black)
            self.textColor = .black
        } else if sender == self.blueBtn{
            self.chageBackgroundColor(color: .systemBlue)
            self.textColor = .systemBlue
        } else {
            self.chageBackgroundColor(color: .systemOrange)
            self.textColor = .systemOrange
        }

    }
    
    @IBAction func tapSaveBtn(_ sender: Any) {
        self.delegate?.changedSetting(
          text: self.textField?.text,
          textColor: self.textColor,
          backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
      }


    private func changeTextColor(color: UIColor){
        self.yellowBtn.alpha = color == UIColor.systemYellow ? 1 : 0.2
        self.purpleBtn.alpha = color == UIColor.systemPurple ? 1 : 0.2
        self.greenBtn.alpha = color == UIColor.systemGreen ? 1 : 0.2
    }
    private func chageBackgroundColor(color: UIColor){
        self.blackBtn.alpha = color == UIColor.black ? 1: 0.2
        self.blueBtn.alpha = color == UIColor.systemBlue ? 1: 0.2
        self.orangeBtn.alpha = color == UIColor.systemOrange ? 1: 0.2
    }
}
