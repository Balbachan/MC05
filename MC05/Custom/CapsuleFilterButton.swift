//
//  CapsuleFilterButton.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 17/05/24.
//

import UIKit

class CapsuleFilterButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Aqui que configura o que vai passar de parâmetro
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 20
        titleLabel?.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 17)
        titleLabel?.textColor = .textBackground
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}

#Preview {
    return CapsuleFilterButton(backgroundColor: .superLightPink, title: "All")
}
