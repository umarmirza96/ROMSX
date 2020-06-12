//
//  ViewController.swift
//  Master Kebab
//
//  Created by Rehan Mirza on 12/06/2020.
//  Copyright © 2020 Rehan Mirza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblMenuList: UITableView!
    
    var MenuList:[Contact] = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.MenuList = self.createArray()
    }
    
    func createArray() -> [Contact] {
        
        var tempMenuList = [Contact]()
        
        let menu1:Contact = Contact(button: "Master kebabs", image: UIImage(named: "Platter.png")!)
        let menu2:Contact = Contact(button: "Master Combinations", image: UIImage(named: "Combinations.png")!)
        let menu3:Contact = Contact(button: "Master Wraps", image: UIImage(named: "Wraps.png")!)
        let menu4:Contact = Contact(button: "Master Burgers", image: UIImage(named: "Burgers.png")!)
        let menu5:Contact = Contact(button: "Master Sides", image: UIImage(named: "Sides.png")!)
        let menu6:Contact = Contact(button: "Others", image: UIImage(named: "Others.png")!)
        let menu7:Contact = Contact(button: "Drinks", image: UIImage(named: "Drinks.png")!)
        
        //self.tblMenuList.delegate = self
        //self.tblMenuList.dataSource = self
        
        tempMenuList.append(menu1)
        tempMenuList.append(menu2)
        tempMenuList.append(menu3)
        tempMenuList.append(menu4)
        tempMenuList.append(menu5)
        tempMenuList.append(menu6)
        tempMenuList.append(menu7)
        
        return tempMenuList
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuIdentifier") as! MenuViewCell
        
        cell.setContact(contact: MenuList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
    
    
}
