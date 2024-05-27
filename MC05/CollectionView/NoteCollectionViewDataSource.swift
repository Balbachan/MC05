//
//  NoteCollectionViewDataSource.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 21/05/24.
//

import UIKit

class NoteCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    var notes: [Note]

    init(notes: [Note]) {
        self.notes = notes
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NoteCollectionViewCell.identifier, for: indexPath) as? NoteCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let note = self.notes[indexPath.row]
        cell.configCard(title: note.title ?? "Title", color: .lightPink)
        
        return cell
    }
}

