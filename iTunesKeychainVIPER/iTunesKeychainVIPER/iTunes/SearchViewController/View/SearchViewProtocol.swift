//
//  SearchViewProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation

protocol SearchViewProtocol: AnyObject {
    func updateAlbums(_ albums: [Album])

    func showError(_ message: String)
}
