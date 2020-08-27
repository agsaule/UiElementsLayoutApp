//
//  ViewController.swift
//  UiElementsLayoutApp
//
//  Created by agnese.saulite on 26/08/2020.
//  Copyright © 2020 AS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLable: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       }
    
func styleUI(){
    mainImageView.layer.cornerRadius = 10
    mainImageView.layer.borderWidth = 2
    mainImageView.layer.borderColor = UIColor.black.cgColor
    
    myLable.layer.cornerRadius = 10
    myLable.layer.borderWidth = 2
    myLable.layer.borderColor = UIColor.black.cgColor
    
    
    styleOutletCollection.forEach { button in
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
    }
}

//MARK:- Logic Style to myLable, Buttons and Image
    
    func changeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: "home.png"), for: .normal)
        leftButtonUp.tintColor = .white
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 2, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.black
    }
    
    func changeTextLable(with message: String){
        let text = message
        myLable.text = text
        myLable.backgroundColor = UIColor.gray
        mainImageView.image = UIImage(systemName: "mic")
        
        
    }
    
//MARK:- IBAction for 3 more buttons
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print("touchDragOutsideTapped")
        changeButtonImage(with: "home.png")
    }
    
    @IBAction func leftBottomButtonTapped(_ sender: Any) {
        changeTextLable(with: "leftBottomButtonTapped")
    }
    
    
}
