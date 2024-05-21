//
//  ViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 14/05/24.
//

import UIKit

class ViewController: UIViewController {
    var collectionViewDelegate: NoteCollectionViewDelegate = NoteCollectionViewDelegate()
    var collectionViewDataSource: UICollectionViewDataSource?
    
    // MARK: Visual Creation
    
    // Configures the visual basics of the view
        func setView() {
            self.view.backgroundColor = .background
            self.navigationItem.title = "Notes"
            
            // Change font and size
            navigationController?.navigationBar.largeTitleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.textBackground,
             NSAttributedString.Key.font: UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 34) ?? UIFont.systemFont(ofSize: 34)]
            
            // When scrolled
            navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.textBackground,
             NSAttributedString.Key.font: UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 27) ?? UIFont.systemFont(ofSize: 34)]
            
            self.navigationController?.navigationBar.prefersLargeTitles = true
            
            // Plus button
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(didTapButton))
            self.navigationItem.rightBarButtonItem?.tintColor = .textBackground
    
        }
    
    // Collection View
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = .clear
        
        collectionView.register(NoteCollectionViewCell.self, forCellWithReuseIdentifier: NoteCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    // MARK: Calls
    override func viewDidLoad() {
        super.viewDidLoad()
        let dadosTitulo = ["oi", "oi2", "oi3", "oi", "oi2", "oi3", "oi", "oi2", "oi3", "oi", "oi2", "oi3", "oi", "oi2", "oi3"]
        // Functions
        setView()
        setCollection()
        
        collectionViewDataSource = NoteCollectionViewDataSource(noteTitle: dadosTitulo)
        collectionView.delegate = collectionViewDelegate
        collectionView.dataSource = collectionViewDataSource

    }
    
    // MARK: Functionallity and Constrains
    func setCollection() {
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    
    @objc func didTapButton() {
        
        print("aaa")
    }
    
}

#Preview {
    return ViewController()
}

