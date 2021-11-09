//
//  SelectionSort.swift
//  Testinng
//
//  Created by Dhiraj Kumar Patil on 16/09/21.
//
/*
 Time Complexity:
 Best O(n2)
 Worst O(n2)
 Average O(n2)
 Space Complexity:
 Best O(1)
 */
import Foundation
class SelectionSort {
    func sort(array: inout [Int]) {
        let size = array.count
        guard size > 0 else {
            return
        }
        for step in (0...size-1) {
            var minIndex = step
            for i in (step+1..<size) {
                if (array[i] < array[minIndex]) {
                    minIndex = i
                }
            }
            
            (array[step],array[minIndex]) = (array[minIndex],array[step])
        }
    }
}
extension SelectionSort {
    func test() {
        
        
        var array = Array(Array(0...10000).reversed())
        let now = Date()
        self.sort(array: &array)
        let timeDif = Double(Int(Date().timeIntervalSince(now)*1000000))/1000
        print(timeDif,Self.self)

    }
}
