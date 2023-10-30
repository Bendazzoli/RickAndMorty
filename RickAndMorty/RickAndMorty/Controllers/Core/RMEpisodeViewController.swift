//
//  RMEpisodeViewController.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 22/08/23.
//

import UIKit

/// Controller to show and search Episodes
final class RMEpisodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Episodes"
        
//        RMSerivce.shared.execute(.listOfEpisodesRequest, expecting: RMGetAllEpisodesResponse.self) { result in
//            switch result {
//            case .success(let model):
//                print(String(describing: model))
//            case .failure(let error):
//                print(String(describing: error))
//            }
//        }
    }
}
