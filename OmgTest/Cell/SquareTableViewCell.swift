//
//  SquareTableViewCell.swift
//  Test1
//
//  Created by Anuar Orazbekov on 14.03.2024.
//

import UIKit

class SquareTableViewCell: UITableViewCell {
    
    private let squareView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let numberLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(squareView)
        NSLayoutConstraint.activate([
            squareView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            squareView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            squareView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            squareView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            squareView.heightAnchor.constraint(equalTo: squareView.widthAnchor)
        ])
        
        squareView.addSubview(numberLabel)
        NSLayoutConstraint.activate([
            numberLabel.centerXAnchor.constraint(equalTo: squareView.centerXAnchor),
            numberLabel.centerYAnchor.constraint(equalTo: squareView.centerYAnchor)
        ])
    }
    
    func updateNumber() {
        numberLabel.text = "\(Int.random(in: 1...100))"
    }
}
