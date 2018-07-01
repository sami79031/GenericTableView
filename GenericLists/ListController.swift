//
//  ListController.swift
//  GenericLists
//
//  Created by Sami Ali on 7/1/18.
//  Copyright © 2018 Sami Ali. All rights reserved.
//

import Foundation
import UIKit

class ListController: BaseTabelViewController<DogCell, Dog> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [
         Dog(name: "Bob"),
         Dog(name: "Sam"),
         Dog(name: "Hulk")
        ]
        
    }
    
}


struct Dog {
    let name: String
}

struct Cat {
    let name: String
}

class DogCell: BaseCell<Dog>{
    
    override var item: Dog! {
        didSet{
            textLabel?.text = item.name
        }
    }
}

class CatCell: BaseCell<Cat>{
    
    override var item: Cat! {
        didSet{
            textLabel?.text = item.name
        }
    }
}
