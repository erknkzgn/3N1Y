//
//  CategoriesTVCell.swift
//  CustomTabbarProgramatical
//
//  Created by Erkan Kızgın on 8.02.2023.
//

import UIKit

class CategoriesTVCell: UITableViewCell {

    var title: String?
    let lbl: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .gray
        return lbl
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
     super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(){
        addSubview(lbl)
        lbl.anchor(top: topAnchor, bottom: bottomAnchor, left: nil, right: rightAnchor, paddingTop: 0 ,paddingBottom: 0, paddingLeft: 5, paddingRight: 0, width: 120, height: 0)
       
         
    }
}
