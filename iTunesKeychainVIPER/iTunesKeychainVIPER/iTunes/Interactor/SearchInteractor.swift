//
//  SearchInteractor.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class SearchInteractor: SearchInteractorProtocol {
    var presenter: SearchPresenterProtocol!
    var networkManager: NetworkManagerProtocol!
    var storageManager: StorageManagerProtocol!

    func searchAlbums(with term: String) {
        let savedAlbums = storageManager.loadAlbums(for: term)
        if !savedAlbums.isEmpty {
            self.presenter?.didFetchAlbums(savedAlbums)
            return
        }

        networkManager.loadAlbums(albumName: term) { [weak self] result in
            guard let self else {
                return
            }

            switch result {
            case .success(let albums):
                DispatchQueue.main.async {
                    let sortedAlbums = albums.sorted { $0.collectionName < $1.collectionName }
                    self.presenter?.didFetchAlbums(sortedAlbums)
                    for album in albums {
                        self.storageManager.saveAlbum(album, for: term)
                    }
                    print("Successfully loaded \(albums.count) albums.")
                }
            case .failure(let error):
                self.presenter?.didFailToFetchAlbums(error.localizedDescription)
            }
        }
    }

    func loadImage(for album: Album, completion: @escaping (UIImage?) -> Void) {
        networkManager.loadImage(from: album.artworkUrl100, completion: completion)
    }
}
