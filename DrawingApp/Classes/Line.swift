//
//  Line.swift
//  DrawingApp
//
//  Created by Nipuna H Herath on 8/18/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//
import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    
    init(start _start: CGPoint, end _end: CGPoint, color _color:UIColor){
        start = _start
        end = _end
        color = _color
    }
}