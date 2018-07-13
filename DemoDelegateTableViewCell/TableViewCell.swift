//
//  TableViewCell.swift
//  DemoDelegateTableViewCell
//
//  Created by Đừng xóa on 7/13/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit
protocol TableViewCellDelegate: class {
    func didChange(at indexPath: IndexPath, with content: String)
}

class TableViewCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    var indexPath: IndexPath!
    
    weak var delegate: TableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        if indexPath != nil && textField.text != "" {
            delegate?.didChange(at: indexPath, with: textField.text!)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
