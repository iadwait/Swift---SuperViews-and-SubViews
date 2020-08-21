//
//  ViewController.swift
//  SuperViews and SubViews
//
//  Created by Adwait Barkale on 21/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        //tblView.rowHeight = UITableView.automaticDimension
        //tblView.estimatedRowHeight = 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        //cell.view.superview?.backgroundColor = .blue
        cell.view.superview?.superview?.backgroundColor = .blue //cell
        cell.view.superview?.superview?.layer.borderWidth = 4
        cell.view.superview?.superview?.layer.borderColor = UIColor.orange.cgColor
        let items = cell.subviews // Cell SubView -> Content View
        let v = items[0].subviews //ContentView SubView -> UIView
        v[0].backgroundColor = .green //Change UIView color
        print(v)
        let l = v[0].subviews
        print(l) //This is Label
        l[0].backgroundColor = .yellow
        print(items.count)
        _ = items[1]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

//    func changeWithoutOutlets()
//    {
//        myView.superview?.backgroundColor = .green
//        if let textfields = myView.subviews as? [UITextField]{
//            textfields[0].text = "Adwait"
//            textfields[1].text = "barkale"
//            textfields[0].superview?.backgroundColor = .red
//        }
//    }
    
