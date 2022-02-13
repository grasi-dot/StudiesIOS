//
//  FirstScreenViewController.swift
//  FirstApp
//
//  Created by Grasiela Eduarda Rodrigues Correa on 12/02/22.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    private let lblTitle: UILabel = {
        let label = UILabel()
        label.text = "My first screen!"
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.tintColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FirstScreenTableViewCell.self, forCellReuseIdentifier: "FirstScreenTableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
        
    }()

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Exit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 24
        button.layer.masksToBounds = false
        button.addTarget(self, action: #selector(dismissScreen), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        setup()

    }
    
    @objc private func dismissScreen(){
        self.dismiss(animated: true, completion: nil)
    }
}

extension FirstScreenViewController: ViewCode {
    func setupHierarchy() {
        self.view.addSubview(lblTitle)
        self.view.addSubview(tableView)
        self.view.addSubview(button)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 16),
            lblTitle.leadingAnchor.constraint (equalTo: self.view.leadingAnchor, constant: 16),
            lblTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            
            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16),
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 48),
            
            tableView.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16)
            
        ])
    }
    
}

extension FirstScreenViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstScreenTableViewCell", for: indexPath) as? FirstScreenTableViewCell ?? FirstScreenTableViewCell()
        
        return cell
    }
}
