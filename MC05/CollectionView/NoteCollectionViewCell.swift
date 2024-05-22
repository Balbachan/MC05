//
//  NoteCollectionViewCell.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 17/05/24.
//
import UIKit

class NoteCollectionViewCell: UICollectionViewCell {
    static let identifier = "NoteCell"
    
    var title: UILabel = {
        let title = UILabel()
        title.textColor = .textBackground
        title.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 24)
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    var card: UIView = {
        let card = UIView(frame: .zero)
        card.clipsToBounds = true
        card.layer.cornerRadius = 20
        card.translatesAutoresizingMaskIntoConstraints = false
        
        return card
    }()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.title.text = nil
        self.card.backgroundColor = nil
    }
    
    func configCard(title: String, color: UIColor) {
        self.title.text = title
        self.card.backgroundColor = color
    
        setElements()
    }
    
    func setElements() {
        self.addSubview(card)
        card.addSubview(title)
        
        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            card.bottomAnchor.constraint(equalTo: card.topAnchor, constant: 165),
            card.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            card.trailingAnchor.constraint(equalTo: card.leadingAnchor, constant: 165),
            
            title.topAnchor.constraint(equalTo: card.bottomAnchor, constant: -40),
            title.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 10),
            title.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -10)
        ])
    }
}

#Preview {
    return NoteCollectionViewCell()
}
