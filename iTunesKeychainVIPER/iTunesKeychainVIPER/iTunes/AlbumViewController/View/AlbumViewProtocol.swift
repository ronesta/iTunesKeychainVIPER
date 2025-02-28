//
//  AlbumViewProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

protocol AlbumViewProtocol: AnyObject {
    func displayAlbumDetails(album: Album, image: UIImage)
}
