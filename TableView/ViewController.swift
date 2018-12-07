//
//  ViewController.swift
//  TableView
//
//  Created by Ivan on 12/7/18.
//  Copyright © 2018 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    let houseData = ["Belstu", "Bsu", "Bntu"]
    
    
    let wordsData = [ "Belarusian State Technological University","Belarusian State University", "Belarusian National Technical University"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UITableView"
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "tableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houseData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.commonInit("got_\(indexPath.item)", title: houseData[indexPath.item], sub: wordsData[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

