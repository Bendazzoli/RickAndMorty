//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 22/08/23.
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
//        RMSerivce.shared.execute(.listOfCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
//            switch result {
//            case .success(let model):
//                print(String(describing: model))
//            case .failure(let error):
//                print(String(describing: error))
//            }
//        }
    }
}
