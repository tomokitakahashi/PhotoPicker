//
//  KRAlertButton.swift
//  KRAlertController
//
//  Copyright © 2016年 Krimpedance. All rights reserved.
//

import UIKit

/**
 *  KRAlertButton
 */
class KRAlertButton: UIButton {
    var action: KRAlertAction
    var type: KRAlertControllerType

    init(frame: CGRect, action: KRAlertAction, type: KRAlertControllerType) {
        self.action = action
        self.type = type
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


/**
 *  Actions --------------------
 */
extension KRAlertButton {
    func setup() {
        layer.cornerRadius = 5.0
        setTitle(action.title, for: UIControlState())
        setTitleColor(type.textColor, for: UIControlState())
        setTitleColor(type.iconColor, for: .highlighted)
        backgroundColor = type.buttonBackgroundColor

        let weight = action.isPreferred ? UIFontWeightBold : UIFontWeightRegular
        titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: weight)
    }
}
