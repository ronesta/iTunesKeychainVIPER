//
//  SearchHistoryViewProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation

protocol SearchHistoryViewProtocol: AnyObject {
    func updateSearchHistory(_ history: [String])
}
