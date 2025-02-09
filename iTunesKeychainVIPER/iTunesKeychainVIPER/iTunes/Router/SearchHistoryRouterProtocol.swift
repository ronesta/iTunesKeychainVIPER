//
//  SearchHistoryRouterProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

protocol SearchHistoryRouterProtocol: AnyObject {
    func navigateBackToSearchWithTerm(with term: String, from navigationController: UINavigationController?)
}
