//
//  CategoryButton.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 14/05/24.
//

import UIKit

class CategoryButton: UIButton {
    
    init(frame: CGRect = .zero, background: UIColor, text: String?) {
        super.init(frame: frame)
        self.setView(background: background, text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    private func setView(background: UIColor, text: String?) {
        self.backgroundColor = background
        self.setTitle(text, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
