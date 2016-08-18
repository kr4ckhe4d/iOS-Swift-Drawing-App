//
//  DrawView.swift
//  DrawingApp
//
//  Created by Nipuna H Herath on 8/18/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

import UIKit

class DrawView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var lines: [Line] = []
    var lastPoint: CGPoint
    var drawColor = UIColor.blackColor() 
    
    
    required init(coder aDecoder: NSCoder) {
        self.lastPoint = CGPointMake(0, 0)
        super.init(coder: aDecoder)!
        //Do any initialiations here.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        lastPoint = (touches.first?.locationInView(self))!
//        print("Last Point: \(lastPoint)")
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        var newPoint = touches.first?.locationInView(self)
        lines.append(Line(start: lastPoint, end: newPoint!,color: drawColor))
        lastPoint = newPoint!
//        print("New Point:  \(newPoint!)")
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 5)
        CGContextSetLineCap(context, CGLineCap.Round)
        for line in lines {
            CGContextBeginPath(context)
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextStrokePath(context)
        }
    }

}
