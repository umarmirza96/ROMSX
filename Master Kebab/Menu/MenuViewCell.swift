//
//  MenuViewCell.swift
//  Master Kebab
//
//  Created by Rehan Mirza on 11/06/2020.
//  Copyright © 2020 Rehan Mirza. All rights reserved.
//

import UIKit

class MenuViewCell: UITableViewCell {

    @IBOutlet var MenuImageView: UIImageView!
    @IBOutlet var MenuLabel: UILabel!
    
    func setContact(contact:Contact){
        MenuLabel.text = contact.button
        MenuImageView.image = contact.image
        
    }

    }

