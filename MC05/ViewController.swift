//
//  ViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 14/05/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    // Collection View Communication
    var collectionViewDelegate: NoteCollectionViewDelegate = NoteCollectionViewDelegate()
    var collectionViewDataSource: NoteCollectionViewDataSource?
    
    
    // Core Data
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var notes:[Note]?
    
    func fetchNote() {
        do {
            self.notes = try context.fetch(Note.fetchRequest())
            //            DispatchQueue.main.async {
            self.collectionView.reloadData()
            //            }
        }
        catch {
            print("Não deu reload")
        }
    }
    
    
    // MARK: Calls
    override func viewDidLoad() {
        super.viewDidLoad()
        // Functions
        setView()
        
        collectionViewDataSource = NoteCollectionViewDataSource(notes: notes ?? [])
        collectionView.register(NoteCollectionViewCell.self, forCellWithReuseIdentifier: NoteCollectionViewCell.identifier)
        
        setCollection()
        
        collectionView.dataSource = collectionViewDataSource
        collectionView.delegate = collectionViewDelegate
        
        collectionView.reloadData()
        
        //        print("Laura você consegue! Estamos torcendo por você!") // ty, Paulo
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        fetchNote()
        collectionView.reloadData()
    }
    
    // MARK: Visual Creation
    // Configures the visual basics of the view
    func setView() {
        self.view.backgroundColor = .background
        self.navigationItem.title = "Notes"
        
        // Change font and size
        navigationController?.navigationBar.largeTitleTextAttributes =
        [NSAttributedString.Key.foregroundColor: UIColor.textBackground,
         NSAttributedString.Key.font: UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 34) ?? UIFont.systemFont(ofSize: 34)]
        
        // Title when scrolled
        navigationController?.navigationBar.titleTextAttributes =
        [NSAttributedString.Key.foregroundColor: UIColor.textBackground,
         NSAttributedString.Key.font: UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 27) ?? UIFont.systemFont(ofSize: 34)]
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // Plus button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(createNoteButton))
        self.navigationItem.rightBarButtonItem?.tintColor = .textBackground
        
    }
    
    // Collection View
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = .clear
        collectionView.register(NoteCollectionViewCell.self, forCellWithReuseIdentifier: NoteCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.setCollectionViewLayout(layout, animated: true)
        
        return collectionView
    }()
    
    
    // MARK: Functionallity and Constrains
    func setCollection() {
        
        // Collection View
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    
    @objc func createNoteButton() {
        let newNote = Note(context: self.context)
        newNote.title = "Bacana"
        
        do {
            try self.context.save()
            print("aaa")
        } catch {
            print("Deu ruim")
        }
        
        fetchNote()
        
        collectionViewDataSource?.notes = notes ?? []
        collectionView.reloadData()
        
        
        let controller = NotesViewController()
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
}

#Preview {
    return ViewController()
}

