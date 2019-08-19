//
//  ViewController.swift
//  BankTest
//
//  Created by Денис on 14.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate {
    //MARK: Properties
    let dataProvider = DataProvider()
    var mainView: MainView {
        guard let view = self.view as? MainView else { return MainView()}
        return view
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: Methods
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        addPanGesture()
        mainView.sliderView.delegate = self
        mainView.backgroundColor = #colorLiteral(red: 0.2373929024, green: 0.2572440505, blue: 0.2978106141, alpha: 1)
        
        mainView.operationsContainerView.operationsHistoryTableView.delegate = dataProvider
        mainView.operationsContainerView.operationsHistoryTableView.dataSource = dataProvider
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configurateSlider()
    }
    
    fileprivate func configurateSlider() {
        let slides = SliderManager.createSlides()
        SliderManager.setupSlideScrollView(slider: mainView.sliderView, slides: slides)
        mainView.pageControl.numberOfPages = slides.count
        mainView.pageControl.currentPage = 0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(mainView.sliderView.contentOffset.x / mainView.sliderView.frame.width)
        mainView.pageControl.currentPage = Int(pageIndex)
        if mainView.pageControl.currentPage == 2 {
            animateMessageView(condition: true)
        } else {
            animateMessageView(condition: false)
        }
    }
    
    fileprivate func showMessageView() {
        self.mainView.messageViewHeightAnchor.constant = 70
        self.mainView.messageView.messageButtonHeightAnchor.constant = 50
        self.mainView.messageView.messageLabelHeightAnchor.constant = 60
    }
    
    fileprivate func hiddenMessageView() {
        self.mainView.messageViewHeightAnchor.constant = 0
        self.mainView.messageView.messageButtonHeightAnchor.constant = 0
        self.mainView.messageView.messageLabelHeightAnchor.constant = 0
    }
    
    func animateMessageView(condition: Bool) {
        if  condition {
            showMessageView()
        } else {
            hiddenMessageView()
        }
        UIView.animate(withDuration: 0.5) { [weak self] in
            self?.view.layoutIfNeeded()
        }
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        let view = sender.view
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            if mainView.operationsContainerViewAnchor.constant >= -190 {
                mainView.operationsContainerViewAnchor.constant += translation.y
            } else {
                mainView.operationsContainerViewAnchor.constant = -189.9
            }
            sender.setTranslation(CGPoint.zero, in: mainView)
        default:
            break
        }
    }
    
    func addPanGesture() {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        mainView.operationsContainerView.addGestureRecognizer(pan)
    }
}

