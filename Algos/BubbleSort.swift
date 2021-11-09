//
//  BubbleSort.swift
//  Testinng
//
//  Created by Dhiraj Kumar Patil on 16/09/21.
//

import Foundation

/*
Time Complexity:
Best O(n)
Worst O(n2)
Average O(n2)
Space Complexity:
Best O(1)
*/
class BubbleSort {
    func sort( array: inout [Int]){
        let size = array.count
        
        for i in (0..<size) {
            for j in (0..<(size-i-1)) {
                let first = array[j]
                let second = array[j+1]
                if first > second {
                    array[j] = second
                    array[j+1] = first
                }
            }
        }
    }
}
extension BubbleSort {
    func test() {
        var array = Array(Array(0...10000).reversed())
        let now = Date()
        self.sort(array: &array)
        let timeDif = Double(Int(Date().timeIntervalSince(now)*1000000))/1000
        print(timeDif,Self.self)

    }
}
