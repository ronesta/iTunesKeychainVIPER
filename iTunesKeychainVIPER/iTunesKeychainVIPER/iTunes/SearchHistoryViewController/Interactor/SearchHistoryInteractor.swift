//
//  SearchHistoryInteractor.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation

final class SearchHistoryInteractor: SearchHistoryInteractorProtocol {
    var presenter: SearchHistoryPresenterProtocol?
    var storageManager: StorageManagerProtocol?

    func loadSearchHistory() {
        guard let history = storageManager?.getSearchHistory() else {
            return
        }

        presenter?.didFetchSearchHistory(history)
    }
}
