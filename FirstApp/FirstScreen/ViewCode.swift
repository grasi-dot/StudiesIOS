//
//  ViewCode.swift
//  FirstApp
//
//  Created by Grasiela Eduarda Rodrigues Correa on 12/02/22.
//

import Foundation

protocol ViewCode {
    func setup()
    func setupHierarchy()
    func setupConstraints()
    
}

extension ViewCode {
    func setup(){
        setupHierarchy()
        setupConstraints()
    }
}
