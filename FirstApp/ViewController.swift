//
//  ViewController.swift
//  FirstApp
//
//  Created by Grasiela Eduarda Rodrigues Correa on 12/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openClicked(_ sender: UIButton) {
        let vc = FirstScreenViewController()
        self.present(vc, animated: true, completion: nil)
    }
}

