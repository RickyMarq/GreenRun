//
//  AtividadeController.swift
//  GreenRun
//
//  Created by Henrique Marques on 31/03/24.
//

import UIKit

class AtividadeController: UIViewController {
    
    var atividadeView: AtividadeView?
    
    override func loadView() {
        self.atividadeView = AtividadeView()
        self.view = atividadeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configNavigationController()
    }
    
    func configNavigationController() {
        self.title = "Atividades"
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationController?.navigationBar.prefersLargeTitles = true
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .secondarySystemBackground
        appearance.titleTextAttributes = [.foregroundColor: UIColor.label]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.label]
        navigationController?.navigationBar.tintColor = .clear
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    

}
