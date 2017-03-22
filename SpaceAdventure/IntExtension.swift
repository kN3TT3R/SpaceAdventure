//
//  IntExtension.swift
//  SpaceAdventure
//
//  Created by Kenneth Debruyn on 12/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import Foundation


extension Int
{
    static func random(range: Range<Int> ) -> Int
    {
        var offset = 0
        
        if range.lowerBound < 0
        {
            offset = abs(range.lowerBound)
        }
        
        let mini = UInt32(range.lowerBound + offset)
        let maxi = UInt32(range.upperBound   + offset)
        
        return Int(mini + arc4random_uniform(maxi - mini)) - offset
    }
}
