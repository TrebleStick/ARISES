//
//  ViewControllerMain.swift
//  ARISES
//
//  Created by Ryan Armiger on 16/05/2018.
//  Copyright © 2018 Ryan Armiger. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerMain: UIViewController {
    
    //MARK: Properties
    // Views with status indicators
    @IBOutlet weak var viewHealth: UIView!
    @IBOutlet weak var viewFood: UIView!
    @IBOutlet weak var viewAdvice: UIView!
    @IBOutlet weak var viewExercise: UIView!
    // Containers for embedding view contents
    @IBOutlet weak var containerHealth: UIView!
    @IBOutlet weak var containerFood: UIView!
    @IBOutlet weak var containerAdvice: UIView!
    @IBOutlet weak var containerExercise: UIView!
    
    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 25.0
    private var fillColor: UIColor = .blue // the color applied to the shadowLayer, rather than the view's backgroundColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*viewExercise.setRadius()
        viewFood.setRadius()
        viewHealth.setRadius()
        viewAdvice.setRadius()
 */
    }
    
    //Sort through bubbles
    @IBAction func healthButton(_ sender: UIButton) {
        view.bringSubview(toFront: viewHealth)
        containerFood.isHidden = true
        containerAdvice.isHidden = true
        containerHealth.isHidden = false
        containerExercise.isHidden = true
    }
    
    @IBAction func foodButton(_ sender: UIButton) {
        view.bringSubview(toFront: viewFood)
        containerFood.isHidden = false
        containerAdvice.isHidden = true
        containerHealth.isHidden = true
        containerExercise.isHidden = true
    }
    
    @IBAction func exerciseButton(_ sender: UIButton) {
        view.bringSubview(toFront: viewExercise)
        containerFood.isHidden = true
        containerAdvice.isHidden = true
        containerHealth.isHidden = true
        containerExercise.isHidden = false
    }
    
    @IBAction func adviceButton(_ sender: UIButton) {
        view.bringSubview(toFront: viewAdvice)
        containerFood.isHidden = true
        containerAdvice.isHidden = false
        containerHealth.isHidden = true
        containerExercise.isHidden = true
    }
 
    
}

extension UIView {
    func setRadius(radius: CGFloat? = nil) {
        self.layer.cornerRadius = radius ?? self.frame.width / 8
        self.layer.masksToBounds = true
        
    }
}
extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}