//
//  SearchRouterProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

protocol SearchRouterProtocol: AnyObject {
    func navigateToAlbumDetails(with album: Album)
    func performSearch(for term: String)
}
