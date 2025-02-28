//
//  AlbumRouterProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIViewController

protocol AlbumRouterProtocol: AnyObject {
    func createModule(with album: Album) -> UIViewController
}
