//
//  NoteCollectionViewDelegate.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 21/05/24.
//

import UIKit
import CoreData

class NoteCollectionViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    weak var navigationController: UINavigationController?
    // Variável que tenham todas as notas
    var notes: [Note]
    var context: NSManagedObjectContext
    
    init(notes: [Note], context: NSManagedObjectContext, navigationController: UINavigationController?) {
            self.notes = notes
            self.context = context
            self.navigationController = navigationController
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // NotesViewController(nota: notas[indexPath.row])
        //        navigationController?.pushViewController(NotesViewController(notes: notes[indexPath.row]), animated: true)
        let selectedNote = notes[indexPath.row]
        let controller = NotesViewController(note: selectedNote, context: context)
                navigationController?.pushViewController(controller, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 80
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width / 2 - layout.minimumInteritemSpacing
        
        return CGSize(width: widthPerItem, height: 100)
    }
}
