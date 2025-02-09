//
//  SearchHistoryPresenterProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation

protocol SearchHistoryPresenterProtocol: AnyObject {
    func loadSearchHistory()
    func didFetchSearchHistory(_ history: [String])
}
