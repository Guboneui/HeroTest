//
//  DetailViewController.swift
//  HeroTest
//
//  Created by 구본의 on 2023/03/20.
//

import UIKit

class DetailViewController: UIViewController {
  private let heroButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = .lightGray
    button.setTitle("Second VC", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupViews()
    self.setupGestures()
    self.view.backgroundColor = .white
  }
  
  private func setupViews() {
    self.view.addSubview(heroButton)
    
    NSLayoutConstraint.activate([
      heroButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      heroButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setupGestures() {
    self.heroButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
  }
  
  @objc
  private func didTapButton() {
    self.dismiss(animated: true)
  }

}
