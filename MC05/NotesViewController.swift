//
//  NotesViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 16/05/24.
//

import UIKit
import CoreData

class NotesViewController: UIViewController {
    var note: Note
    let context: NSManagedObjectContext
    
    init(note: Note, context: NSManagedObjectContext) {
        self.note = note
        self.context = context
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Calls
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
        setUITextLabel()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        note.title = titleLabel.text
        note.keyword = subjectText.text
        do {
            try self.context.save()
            print("Salvou no CoreData")
        } catch {
            print("Não salvou no CoreData")
        }
    }
    
    // MARK: Visual Creation
    let titleLabel: UITextField = {
        let text = UITextField()
        
        text.placeholder = "Subject Title"
        text.font = UIFont(name: "MADEAwelierPERSONALUSE-Bold", size: 34)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()

    // Subject note
    let subjectText: UITextView = {
        let subjectText = UITextView()
        
        subjectText.textColor = .textBackground
        subjectText.backgroundColor = .background
        subjectText.textAlignment = .left
        subjectText.textContainer.lineBreakMode = NSLineBreakMode.byWordWrapping;
        subjectText.isEditable = true
        subjectText.isScrollEnabled = false
        subjectText.translatesAutoresizingMaskIntoConstraints = false
        
        return subjectText
    }()
    
    // Configures the visual basics of the view
    func setView() {
        self.view.backgroundColor = .background
        
        // Delete note button
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: self, action: #selector(deleteNote))
    }
    
    // MARK: Functionallity and Constrains
    func setUITextLabel() {
        // Title
        titleLabel.text = note.title
        self.view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120)
        ])
        
        // Subject notes
        subjectText.text = note.keyword
        self.view.addSubview(subjectText)
        NSLayoutConstraint.activate([
            subjectText.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            subjectText.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            subjectText.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            
        ])
    }
    
//    @objc func deleteNote() {
//        let noteToDelete = note
//        
//        self.context.delete(noteToDelete)
//        
////        do {
////            try self.context.save()
////        }
////        catch {
////            print("Erro ao deletar")
////        }
//        
////        let controller = ViewController()
////        navigationController?.pushViewController(controller, animated: true)
//        
//    }
    
}


//#Preview {
//    return NotesViewController(coder: <#NSCoder#>)
//}
