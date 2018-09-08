//
//  AutoLayouty.swift
//
//  Created by Gabriel Cavalcante on 17/03/2018.
//  Copyright © 2018 Gabriel Cavalcante. All rights reserved.
//

import UIKit

public struct AutoLayouty {
    
    public init() {}
    
    public func setEqualCentralSize(to view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints:[NSLayoutConstraint] = [
            view.topAnchor.constraint(equalTo: otherview.topAnchor),
            view.leadingAnchor.constraint(equalTo: otherview.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: otherview.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: otherview.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    public func setEqualCentralHeight(to view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints:[NSLayoutConstraint] = [
            view.topAnchor.constraint(equalTo: otherview.topAnchor),
            view.bottomAnchor.constraint(equalTo: otherview.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    public func setEqualCentralWidth(to view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints:[NSLayoutConstraint] = [
            view.leadingAnchor.constraint(equalTo: otherview.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: otherview.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    public func setEqualWidth(to view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints:[NSLayoutConstraint] = [
            view.widthAnchor.constraint(equalTo: otherview.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    public func setEqualHeight(to view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints:[NSLayoutConstraint] = [
            view.heightAnchor.constraint(equalTo: otherview.heightAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    public func set(_ height: CGFloat, _ width: CGFloat, to view: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let widthConstraint = NSLayoutConstraint(item: view,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1,
                                                 constant: width)
        
        let heightConstraint = NSLayoutConstraint(item: view,
                                                  attribute: .height,
                                                  relatedBy: .equal,
                                                  toItem: nil,
                                                  attribute: .notAnAttribute,
                                                  multiplier: 1,
                                                  constant: height)
        
        NSLayoutConstraint.activate([widthConstraint, heightConstraint])
    }
    
    public func set(height constant: CGFloat, to view: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        let heightConstraint = NSLayoutConstraint(item: view,
                                                  attribute: .height,
                                                  relatedBy: .equal,
                                                  toItem: nil,
                                                  attribute: .notAnAttribute,
                                                  multiplier: 1,
                                                  constant: constant)
        
        NSLayoutConstraint.activate([heightConstraint])
    }
    
    public func set(returningheight constant: CGFloat, to view: UIView) -> NSLayoutConstraint {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let heightConstraint = NSLayoutConstraint(item: view,
                                                  attribute: .height,
                                                  relatedBy: .equal,
                                                  toItem: nil,
                                                  attribute: .notAnAttribute,
                                                  multiplier: 1,
                                                  constant: constant)
        
        NSLayoutConstraint.activate([heightConstraint])
        
        return heightConstraint
    }
    
    public func set(_ width: CGFloat, to view: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let widthConstraint = NSLayoutConstraint(item: view,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1,
                                                 constant: width)
        
        NSLayoutConstraint.activate([widthConstraint])
    }
    
    public func setCenterHorizontally(to view: UIView, in otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: view,
                                                      attribute: .centerX,
                                                      relatedBy: .equal,
                                                      toItem: otherview,
                                                      attribute: .centerX,
                                                      multiplier: 1,
                                                      constant: 0)
        
        NSLayoutConstraint.activate([horizontalConstraint])
    }
    
    public func setCenterVertically(to view: UIView, in otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let verticalConstraint = NSLayoutConstraint(item: view,
                                                    attribute: .centerY,
                                                    relatedBy: .equal,
                                                    toItem: otherview,
                                                    attribute: .centerY,
                                                    multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([verticalConstraint])
    }
    
    public func setCenter(to view: UIView, in otherview: UIView) {
        
        self.setCenterHorizontally(to: view, in: otherview)
        self.setCenterVertically(to: view, in: otherview)
    }
    
    public func setTrailing(distance constant: CGFloat, for view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let trailingConstraint = NSLayoutConstraint(item: view,
                                                    attribute: .trailing,
                                                    relatedBy: .equal,
                                                    toItem: otherview,
                                                    attribute: .trailing,
                                                    multiplier: 1,
                                                    constant: constant)
        
        NSLayoutConstraint.activate([trailingConstraint])
    }
    
    public func setLeading(distance constant: CGFloat, for view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let leadingConstraint = NSLayoutConstraint(item: view,
                                                   attribute: .leading,
                                                   relatedBy: .equal,
                                                   toItem: otherview,
                                                   attribute: .leading,
                                                   multiplier: 1,
                                                   constant: constant)
        
        NSLayoutConstraint.activate([leadingConstraint])
    }
    
    public func setTrailingAndLeading(distance constant: CGFloat, for view: UIView, from otherview: UIView) {
        
        self.setLeading(distance: constant, for: view, from: otherview)
        self.setTrailing(distance: -constant, for: view, from: otherview)
    }
    
    public func setTop(distance constant: CGFloat, for view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let topSpace = NSLayoutConstraint(item: otherview,
                                          attribute: .top,
                                          relatedBy: .equal,
                                          toItem: view,
                                          attribute: .top,
                                          multiplier: 1,
                                          constant: constant)
        
        NSLayoutConstraint.activate([topSpace])
    }
    
    public func setTopGreaterThan(distance constant: CGFloat,
                                  and multiplier: CGFloat,
                                  for view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let topSpace = NSLayoutConstraint(item: otherview,
                                          attribute: .top,
                                          relatedBy: .greaterThanOrEqual,
                                          toItem: view,
                                          attribute: .top,
                                          multiplier: multiplier,
                                          constant: constant)
        
        NSLayoutConstraint.activate([topSpace])
    }
    
    public func setBottom(distance constant: CGFloat, for view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomSpace = NSLayoutConstraint(item: otherview,
                                             attribute: .bottom,
                                             relatedBy: .equal,
                                             toItem: view,
                                             attribute: .bottom,
                                             multiplier: 1,
                                             constant: constant)
        
        NSLayoutConstraint.activate([bottomSpace])
    }
    
    public func setBottomGreaterThan(distance constant: CGFloat, for view: UIView, from otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomSpace = NSLayoutConstraint(item: otherview,
                                             attribute: .bottom,
                                             relatedBy: .greaterThanOrEqual,
                                             toItem: view,
                                             attribute: .bottom,
                                             multiplier: 1,
                                             constant: constant)
        
        NSLayoutConstraint.activate([bottomSpace])
    }
    
    public func setVertical(distance constant: CGFloat, between view: UIView, and otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let verticalSpace = NSLayoutConstraint(item: otherview,
                                               attribute: .bottom,
                                               relatedBy: .equal,
                                               toItem: view,
                                               attribute: .top,
                                               multiplier: 1,
                                               constant: constant)
        
        NSLayoutConstraint.activate([verticalSpace])
    }
    
    public func setHorizontal(distance constant: CGFloat, between view: UIView, and otherview: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let verticalSpace = NSLayoutConstraint(item: otherview,
                                               attribute: .trailing,
                                               relatedBy: .equal,
                                               toItem: view,
                                               attribute: .leading,
                                               multiplier: 1,
                                               constant: constant)
        
        NSLayoutConstraint.activate([verticalSpace])
    }
    
    public func setAspectRatio(to view: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraint(NSLayoutConstraint(item: view,
                                              attribute: .height,
                                              relatedBy: .equal,
                                              toItem: view,
                                              attribute: .width,
                                              multiplier: view.frame.size.height / view.frame.size.width,
                                              constant: 0))
    }
}
