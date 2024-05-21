//
//  NoteCollectionViewDataSource.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 21/05/24.
//

import UIKit

class NoteCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    var noteTitle: [String]
    
    init(noteTitle: [String]) {
        self.noteTitle = noteTitle
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noteTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NoteCollectionViewCell.identifier, for: indexPath) as? NoteCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configTextos(title: noteTitle[indexPath.row])
        cell.backgroundColor = .darkPurple
        
        return cell
    }
}

