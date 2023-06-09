//
//  ViewController.swift
//  HeroTest
//
//  Created by 구본의 on 2023/03/20.
//

import UIKit
import Hero

class ViewController: UIViewController {

  private let heroButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = .lightGray
    button.setTitle("Hero", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupViews()
    self.setupGestures()
  }
  
  private func setupViews() {
    self.view.addSubview(heroButton)
    self.title = "Main"
    
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
    let detailVC = DetailViewController()
    detailVC.modalPresentationStyle = .overFullScreen
    detailVC.hero.isEnabled = true
    detailVC.hero.modalAnimationType = .selectBy(
      presenting: .push(direction: .left),
      dismissing: .pull(direction: .right)
    )
    
    print("Hero Button Clicked")
  }
}


