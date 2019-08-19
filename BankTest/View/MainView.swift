//
//  MainView.swift
//  BankTest
//
//  Created by Денис on 16.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class MainView: UIView {
    //MARK: Properties
    let sliderView: UIScrollView = {
        let slider = UIScrollView()
        slider.showsHorizontalScrollIndicator = false
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.isPagingEnabled = true
        return slider
    }()
    var sliderViewHeightAnchor: NSLayoutConstraint!
    
    var pageControl: UIPageControl = {
        let pageControl =  UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    let messageView: MessageView = {
        let view = MessageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        view.layer.cornerRadius = 10
        return view
    }()
    var messageViewHeightAnchor: NSLayoutConstraint!
    
    let buttonContainer: ButtonsContainerView = {
        let buttonContainer = ButtonsContainerView()
        buttonContainer.translatesAutoresizingMaskIntoConstraints = false
        return buttonContainer
    }()
    
    let operationsContainerView: OperationsContainerView = {
        var view = OperationsContainerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.cornerRadius = 15
        return view
    }()
    var operationsContainerViewAnchor: NSLayoutConstraint!
    
    //MARK: Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubViews()
        setConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubViews() {
        self.addSubview(sliderView)
        self.addSubview(pageControl)
        self.addSubview(messageView)
        self.addSubview(buttonContainer)
        self.addSubview(operationsContainerView)
    }
    
    func setConstraints() {
        setSliderConstraints()
        setPageControlConstraints()
        setMessageViewConstraints()
        setButtonContainerConstraints()
        setOperationsContainerViewConstraints()
    }
    
    func setSliderConstraints() {
         sliderView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
         sliderView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
         sliderView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
         sliderViewHeightAnchor = sliderView.heightAnchor.constraint(equalToConstant: 110)
         sliderViewHeightAnchor.isActive = true
    }
    
    func setPageControlConstraints() {
        pageControl.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        pageControl.topAnchor.constraint(equalTo: sliderView.bottomAnchor, constant: 8).isActive = true
        pageControl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setMessageViewConstraints() {
        messageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        messageView.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 8).isActive = true
        messageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        messageViewHeightAnchor = messageView.heightAnchor.constraint(equalToConstant: 0)
        messageViewHeightAnchor.isActive = true
    }
    
    func setButtonContainerConstraints() {
        buttonContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        buttonContainer.topAnchor.constraint(equalTo: messageView.bottomAnchor, constant: 32).isActive = true
        buttonContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        buttonContainer.heightAnchor.constraint(equalToConstant: 90).isActive = true
    }
    
    func setOperationsContainerViewConstraints() {
        operationsContainerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        operationsContainerViewAnchor = operationsContainerView.topAnchor.constraint(equalTo: buttonContainer.bottomAnchor, constant: 32)
        operationsContainerViewAnchor.isActive = true
        operationsContainerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        operationsContainerView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
