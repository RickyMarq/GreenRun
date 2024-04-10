//
//  TabBar.swift
//  GreenRun
//
//  Created by Henrique Marques on 25/03/24.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTabBar()
    }
    

    func setUpTabBar() {
        self.tabBar.isHidden = false
        self.tabBar.tintColor = .green.withAlphaComponent(0.5)
        self.tabBar.backgroundColor = .secondarySystemBackground

        let home = UINavigationController(rootViewController: HomeController())
        let services = UINavigationController(rootViewController: ServicosController())
        let atividade = UINavigationController(rootViewController: AtividadeController())
        
        self.setViewControllers([home, services, atividade], animated: true)
        
        guard let items = tabBar.items else {return}
        
        items[0].image = UIImage(systemName: "house")
        items[0].title = "Home"
        
        items[1].image = UIImage(systemName: "rectangle.3.group")
        items[1].title = "Serviços"
        
        items[2].image = UIImage(systemName: "book.pages")
        items[2].title = "Atividade"
    }

}
