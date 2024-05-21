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
    
    // Configures the visual basics of the view
    func setView() {
        self.view.backgroundColor = .background
//        self.navigationItem.title = "Note"
    }
    
    // Button that creates a new note
    let createNewNoteButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("UAU", for: .normal)
        button.layer.cornerRadius = 12
        button.configuration = .filled()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // MARK: Calls
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setTitleLabel()
    }
    
    // MARK: Functionallity and Constrains
    func setTitleLabel() {
        self.view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
}


#Preview {
    return NotesViewController()
}
