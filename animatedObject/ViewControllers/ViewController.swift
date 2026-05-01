//
//  ViewController.swift
//  animatedObject
//
//  Created by Анастасия Кучер on 16.04.2026.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    var currentIndex = 0
    let springAnimation = Animation.getAnimation()

    @IBOutlet var springView: SpringView!
    
    @IBOutlet var animation: SpringLabel!
    @IBOutlet var curve: SpringLabel!
    @IBOutlet var force: SpringLabel!
    @IBOutlet var duration: SpringLabel!
    @IBOutlet var delay: SpringLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func startSpringButton(_ sender: SpringButton) {
        let model = springAnimation[currentIndex]
        
        springView.animation = model.animation
        springView.curve = model.curve
        springView.force = CGFloat(model.force)
        springView.duration = CGFloat(model.duration)
        springView.delay = CGFloat(model.delay)
        
        springView.animate()
        
        currentIndex = (currentIndex + 1) % springAnimation.count

    }
    
}
