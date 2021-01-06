//
//  ViewController.swift
//  UINavigation
//
//  Created by TPPham on 1/6/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
    }
    @IBAction func showDetailView(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let detailView = mainStoryBoard.instantiateViewController(identifier: "DetailViewController")
        
        let navigationController = Customise(detailView, label: "Hello", barTint: .black, navBarIsHidden: false)
        navigationController.hideNavigationBar()
        present(navigationController, animated: true, completion: nil)
    }
}

class Customise: UINavigationController {
    
    var isHidden: Bool
    
    init(_ rootView: UIViewController, label: String, barTint: UIColor, navBarIsHidden: Bool) {
        self.isHidden = navBarIsHidden
        super.init(rootViewController: rootView)
        self.title = label
        self.navigationBar.tintColor = barTint
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func hideNavigationBar() {
        navigationBar.isHidden = isHidden
    }
}

