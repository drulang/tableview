//
//  ViewController.swift
//  TablePlay
//
//  Created by Dru Lang on 3/16/17.
//  Copyright © 2017 Dru Lang. All rights reserved.
//

import UIKit
import PureLayout

class ViewController: UIViewController {

    internal let tableView = UITableView(frame: CGRect.zero)
    private var constraintsAdded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func updateViewConstraints() {
        if !constraintsAdded {
            constraintsAdded = true

            tableView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))
        }
        super.updateViewConstraints()
    }

}


extension ViewController : UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = "test"

        return cell
    }
}
