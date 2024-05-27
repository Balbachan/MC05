//
//  CircleFilterButton.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 17/05/24.
//

import UIKit

class CircleFilterButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // Aqui é coisa de inicialiação de Storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Aqui é tudo que é passado como parâmetro
    init(backgroundColor: UIColor) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        configure()
    }
    
    // Aqui é o que não muda
    private func configure() {
        layer.cornerRadius = frame.size.height / 2
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }

}

#Preview {
    return CircleFilterButton(backgroundColor: .darkPurple)
}
