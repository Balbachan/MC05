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
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.title.text = nil
    }
    
    func configTextos(title: String) {
        self.title.text = title
        setTextos()
    }
    
    func setTextos() {
        self.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20),
        ])
    }
    
}

#Preview {
    return NoteCollectionViewCell()
}
