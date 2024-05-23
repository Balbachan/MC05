//
//  NotesViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 16/05/24.
//

import UIKit

class NotesViewController: UIViewController {
    let vc = ViewController()
    
    // MARK: Calls
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setUITextLabel()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // logica de atualizar
    }
    
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
        subjectText.backgroundColor = .lightPurple
        subjectText.textAlignment = .center
        subjectText.isEditable = true
        subjectText.isScrollEnabled = false
        subjectText.translatesAutoresizingMaskIntoConstraints = false
        
        return subjectText
    }()
    
    // Configures the visual basics of the view
    func setView() {
        self.view.backgroundColor = .lightPurple
    }
    
    // MARK: Functionallity and Constrains
    func setUITextLabel() {
        
        // Title
        self.view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
        vc.title = titleLabel.text

        
        // Keyword
        titleLabel.addSubview(keywordLabel)
        NSLayoutConstraint.activate([
            keywordLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
        ])
//        newNote. = keywordLabel.text
        
        // Divider
        self.view.addSubview(noteDivider)
        NSLayoutConstraint.activate([
            noteDivider.topAnchor.constraint(equalTo: keywordLabel.bottomAnchor, constant: 70),
            noteDivider.bottomAnchor.constraint(equalTo: noteDivider.topAnchor, constant: 1),
            noteDivider.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            noteDivider.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
        
        // Subject Block
        self.view.addSubview(subjectTitle)
        NSLayoutConstraint.activate([
            subjectTitle.topAnchor.constraint(equalTo: noteDivider.bottomAnchor, constant: 40),
            subjectTitle.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        ])
        
        self.view.addSubview(subjectText)
        NSLayoutConstraint.activate([
            subjectText.topAnchor.constraint(equalTo: subjectTitle.bottomAnchor, constant: 5),
            subjectText.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        ])
    }
}


#Preview {
    return NotesViewController()
}
