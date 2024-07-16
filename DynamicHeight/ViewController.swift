//
//  ViewController.swift
//  DynamicHeight
//
//  Created by Bhumika Patel on 13/07/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    private var itemList : [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableview()
        // Do any additional setup after loading the view.
    }
    private func setTableview(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        self.setTabeleViewData()
    }
    override func viewWillLayoutSubviews() {
        self.tableViewHeight.constant = self.tableView.contentSize.height
    }
    private func setTabeleViewData(){
        for i in 0...20 {
            self.itemList.append("Some content at the particular index \(i + 1)")
        }
        self.tableView.reloadData()
        self.tableView.invalidateIntrinsicContentSize()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.labeltext.text = self.itemList[indexPath.row]
        return cell
    }
}
