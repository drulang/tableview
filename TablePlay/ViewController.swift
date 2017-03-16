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
        tableView.register(AutolayoutTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
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

        guard let aCell = cell as? AutolayoutTableViewCell else {
            return cell
        }
        
        if indexPath.row == 0 {
            aCell.extraView.label.text = "blah"
        } else {
            aCell.extraView.label.text = "blah \n blah \n blah \n blah"

        }
        

        return cell
    }
}
