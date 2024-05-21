////
////  NoteCoverImageView.swift
////  MC05
////
////  Created by Laura C. Balbachan dos Santos on 17/05/24.
////
//
//import UIKit
//
//class NoteCoverImageView: UIImageView {
//    
//    let placeholderImage = UIImage(named: "purpleCover")! // Como está tudo em assets, tudo bem
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        configure()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func configure() {
//        layer.cornerRadius = 20
//        clipsToBounds = true
//        image = placeholderImage
//        translatesAutoresizingMaskIntoConstraints = false
//    }
//}
