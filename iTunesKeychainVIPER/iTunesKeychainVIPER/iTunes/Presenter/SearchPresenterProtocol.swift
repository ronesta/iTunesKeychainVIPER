//
//  SearchPresenterProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

protocol SearchPresenterProtocol: AnyObject {
    func searchAlbums(with searchTerm: String)
    func didFetchAlbums(_ albums: [Album])
    func didFailToFetchAlbums(_ error: String)
    func loadImage(for album: Album, completion: @escaping (UIImage?) -> Void)
    func didSelectAlbum(_ album: Album)
}
