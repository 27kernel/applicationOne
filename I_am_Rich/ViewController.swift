//
//  ViewController.swift
//  I_am_Rich
//
//  Created by Ruslan Baigeldiyev on 23.12.2022.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.text = "I am Rich"
       return label
    }()

    private lazy var myDiamond: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        return imageView
    }()
    
    private lazy var myLabel2: UILabel = {
       let label2 = UILabel()
        label2.font = UIFont.boldSystemFont(ofSize: 30)
        label2.text = "I can buy anything"
       return label2
    }()
    private lazy var myAccountMoney: UILabel = {
       let accountMoney = UILabel()
        accountMoney.font = UIFont.boldSystemFont(ofSize: 30)
        accountMoney.text = "$ 0.00"
       return accountMoney
    }()
    private lazy var myButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle(" CHANGE ", for: UIControl.State())
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemGreen
        
        setupViews()
        setupConstraints()
    }
}

//MARK: - Setup views and constrains methods

private extension ViewController{
    func setupViews() {
        view.addSubview(myLabel)
        view.addSubview(myDiamond)
        view.addSubview(myLabel2)
        view.addSubview(myAccountMoney)
        view.addSubview(myButton)
    }
    func setupConstraints() {
        myLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamond.snp.top)
        }
        myDiamond.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(300)
        }
        myLabel2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myDiamond.snp.bottom)
        }
        myAccountMoney.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myLabel2.snp.bottom)
        }
        myButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myAccountMoney.snp.bottom).inset(-50)
        }
    }
    
    @objc func buttonAction() {
        myAccountMoney.text = "Account: \(Int.random(in: 1000..<10000))$"
    }
}
