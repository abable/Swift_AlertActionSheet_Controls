//
//  ViewController.swift
//  Alert_ActionSheet
//
//  Created by Seungjun Lim on 26/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func show(_ sender: UIButton) {

        // Alert 으로 표시
//        let controller = UIAlertController(title: "Languages", message: "Choose one", preferredStyle: .alert)
        // ActionSheet 으로 표시
        let controller = UIAlertController(title: "Languages", message: "Choose one", preferredStyle: .actionSheet)
        
        
        
        let swiftAction = UIAlertAction(title: "Swift", style: .default) { [weak self] (action) in
            self?.resultLabel.text = action.title
        }
        controller.addAction(swiftAction)
        
        let javaAction = UIAlertAction(title: "Java", style: .default) { [weak self] (action) in
            self?.resultLabel.text = action.title
        }
        controller.addAction(javaAction)
        
        let pythonAction = UIAlertAction(title: "Python", style: .default) { [weak self] (action) in
            self?.resultLabel.text = action.title
        }
        controller.addAction(pythonAction)
        
        let cSharpAction = UIAlertAction(title: "C#", style: .default) { [weak self] (action) in
            self?.resultLabel.text = action.title
        }
        controller.addAction(cSharpAction)
        
        let clearAction = UIAlertAction(title: "Clear", style: .destructive) { [weak self] (action) in
            self?.resultLabel.text = nil
        }
        controller.addAction(clearAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        controller.addAction(cancelAction)
        
        // 이 속성이 nil 이 아니라면 popover 형태로 표시됩니다.
        if let pc = controller.popoverPresentationController{
            pc.sourceRect = sender.frame
            pc.sourceView = view
        }
        
        for action in controller.actions {
            if action.title == resultLabel.text {
                action.isEnabled = false
            }
        }
        
        
        present(controller, animated: true, completion: nil)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

