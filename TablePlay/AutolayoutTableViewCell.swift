//
//  AutolayoutTableViewCell.swift
//  TablePlay
//
//  Created by Dru Lang on 3/16/17.
//  Copyright © 2017 Dru Lang. All rights reserved.
//

import UIKit
import PureLayout

class DynView : UIView {
    var width:CGFloat = 100
    var height:CGFloat = 100
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: width, height: height)
    }
}

class Texty : UIView {
    let label = UILabel(forAutoLayout: ())
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(label)
        
        label.numberOfLines = 0
        label.autoPinEdgesToSuperviewEdges()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class AutolayoutTableViewCell : UITableViewCell {
    
    let extraView = Texty(forAutoLayout: ())
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(extraView)
        
        extraView.backgroundColor = UIColor.lightGray
        extraView.autoPinEdgesToSuperviewEdges()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
