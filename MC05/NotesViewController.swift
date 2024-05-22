//
//  NotesViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 16/05/24.
//

import UIKit

class NotesViewController: UIViewController {
    
    // MARK: Visual Creation
    let titleLabel: UITextField = {
        let text = UITextField()
        
        text.placeholder = "Notes"
        text.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 34)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    let keywordLabel: UITextField = {
        let keyword = UITextField()
        
        keyword.placeholder = "Keywords"
        keyword.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 17)
        keyword.translatesAutoresizingMaskIntoConstraints = false
        
        return keyword
    }()
    
    let noteDivider: UIView = {
        let divider = UIView(frame: .zero)
        
        divider.backgroundColor = .black
        divider.translatesAutoresizingMaskIntoConstraints = false
        
        return divider
    }()
    
    // Subject Block
    let subjectTitle: UITextField = {
        let subjectTitle = UITextField()
        
        subjectTitle.placeholder = "Subject's Name"
        subjectTitle.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 24)
        subjectTitle.translatesAutoresizingMaskIntoConstraints = false
        
        return subjectTitle
    }()
    
    let subjectText: UITextView = {
        let subjectText = UITextView()
        let attributeText = NSMutableAttributedString(string: "Describe what is the subject", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 17)])
        
        subjectText.attributedText = attributeText
//        subjectText.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 17)
        subjectText.textColor = .textBackground
        subjectText.backgroundColor = .lightPurple
        subjectText.textAlignment = .center
        subjectText.isEditable = false
        subjectText.isScrollEnabled = false
        subjectText.translatesAutoresizingMaskIntoConstraints = false
        
        return subjectText
    }()
    
    // Configures the visual basics of the view
    func setView() {
        self.view.backgroundColor = .lightPurple
    }
    
    // MARK: Calls
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setUITextLabel()
    }
    
    // MARK: Functionallity and Constrains
    func setUITextLabel() {
        self.view.addSubview(titleLabel)
        titleLabel.addSubview(keywordLabel)
        
        self.view.addSubview(noteDivider)
        self.view.addSubview(subjectTitle)
        self.view.addSubview(subjectText)
        
        
        NSLayoutConstraint.activate([
            // Title
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            // Keyword
            keywordLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            
            // Divider
            noteDivider.topAnchor.constraint(equalTo: keywordLabel.bottomAnchor, constant: 70),
            noteDivider.bottomAnchor.constraint(equalTo: noteDivider.topAnchor, constant: 1),
            noteDivider.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            noteDivider.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            // Subject Block
            subjectTitle.topAnchor.constraint(equalTo: noteDivider.bottomAnchor, constant: 40),
            subjectTitle.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            subjectText.topAnchor.constraint(equalTo: subjectTitle.bottomAnchor, constant: 5),
            subjectText.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
        ])
    }
}


#Preview {
    return NotesViewController()
}
