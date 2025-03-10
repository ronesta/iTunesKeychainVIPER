//
//  SearchCollectionViewDataSource.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class SearchCollectionViewDataSource: NSObject, SearchDataSourceProtocol {
    private let presenter: SearchPresenterProtocol

    var albums = [Album]()

    init(presenter: SearchPresenterProtocol) {
        self.presenter = presenter
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        albums.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: AlbumCollectionViewCell.id,
            for: indexPath)
                as? AlbumCollectionViewCell else {
            return UICollectionViewCell()
        }

        let album = albums[indexPath.item]

        presenter.loadImage(for: album) { image in
            DispatchQueue.main.async {
                guard let currentCell = collectionView.cellForItem(at: indexPath) as? AlbumCollectionViewCell else {
                    return
                }

                currentCell.configure(with: album, image: image)
            }
        }

        return cell
    }
}
