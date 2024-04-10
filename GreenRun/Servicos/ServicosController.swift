//
//  ServicosController.swift
//  GreenRun
//
//  Created by Henrique Marques on 31/03/24.
//

import UIKit

class ServicosController: UIViewController {
    
    var sevicosView: ServicosView?
    
    override func loadView() {
        self.sevicosView = ServicosView()
        self.view = sevicosView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configNavigationController()
    }
    
    func configNavigationController() {
        self.title = "Serviços"
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
    
    print("MERGE")
  
    print("MERGE")

    
    print("MERGE")

    
    print("MERGE")

    
    print("MERGE")


}

