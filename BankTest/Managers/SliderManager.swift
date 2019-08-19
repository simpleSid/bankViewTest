//
//  SliderContainerView.swift
//  BankTest
//
//  Created by Денис on 15.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class SliderManager {
    
    class func createSlides() -> [SlideView] {
        let slide1 = SlideView()
        // method for generation sliders
        slide1.bankAccountLabel.text = "расчетный 4039813740183"
        slide1.moneyLabel.text = "10,00 ₽"
        slide1.moneyWithOverdraftLabel.text = "10,00 ₽ с овердрафтом"
        
        let slide2 = SlideView()
        slide2.bankAccountLabel.text = "расчетный 4039813740183"
        slide2.moneyLabel.text = "10,00 ₽"
        slide2.moneyWithOverdraftLabel.text = "10,00 ₽ с овердрафтом"
        
        let slide3 = SlideView()
        slide3.bankAccountLabel.text = "расчетный 4039813740183"
        slide3.moneyLabel.text = "10,00 ₽"
        slide3.moneyWithOverdraftLabel.text = "10,00 ₽ с овердрафтом"
        
        return [slide1, slide2, slide3]
    }
    
    class func setupSlideScrollView(slider: UIScrollView, slides: [SlideView]) {
        let slideHeight: CGFloat = slider.bounds.height
        slider.contentSize = CGSize(width: slider.bounds.width * CGFloat(slides.count), height: slideHeight)
        
        for i in 0..<slides.count {
            slides[i].frame = CGRect(x: slider.bounds.width * CGFloat(i), y: 0, width: slider.bounds.width, height: slideHeight)
            slider.addSubview(slides[i])
        }
    }
}
