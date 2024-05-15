//
//  HomeViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 14/05/24.
//

import UIKit

class HomeViewController: UIViewController {
    // Texts
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        
        titleLabel.text = "Notes"
        titleLabel.font = UIFont.systemFont(ofSize: 34)
        titleLabel.textColor = .textBackground
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    private let categoryButton = CategoryButton(background: .systemPink, text: "AAA")
    
    // Calls view's elements
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setElements()
    }
    
    func setView() {
        self.view.backgroundColor = .background
        self.title = "Notes"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.backgroundColor: UIColor.blue]
    }
    
    func setElements() {
        setTitleLabel()
        addButton()
    }
    
    // Constrains
    func setTitleLabel() {
        self.view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    func addButton() {
        self.view.addSubview(categoryButton)
        NSLayoutConstraint.activate([
            categoryButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            categoryButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            categoryButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 70)
        ])
    }
    
}

#Preview {
    return HomeViewController()
}
