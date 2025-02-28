//
//  SearchHistoryRouterProtocol.swift
//  iTunesKeychainVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIViewController

protocol SearchHistoryRouterProtocol: AnyObject {
    func createModule() -> UIViewController

    func navigateBackToSearchWithTerm(with term: String)
}
