//
//  QuickSort.swift
//  Testinng
//
//  Created by Dhiraj Kumar Patil on 16/09/21.
//

import Foundation
/*
 Time Complexity:
    Best O(n log n)
    Worst O(n2)
    Average O(n log n)
 Space Complexity:
    Best O(log n)
 */


class QuickSort {
    func partition(array: inout[Int], low: Int, high: Int) -> Int {
        let pivot = array[high]
        var i = low - 1
        
        for j in (low..<high) {
            if (array[j] <= pivot) {
                i += 1
                let temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
        i += 1
        let temp = array[i]
        array[i] = array[high]
        array[high] = temp
        return i
    }
    func sort(array: inout[Int], low: Int, high: Int) {
        if low < high {
            let pivot = partition(array: &array, low: low, high: high)
            sort(array: &array, low: low, high: pivot - 1)
            sort(array: &array, low: pivot + 1, high: high)
        }
    }
}
extension QuickSort {
    func test() {
        
        var array = Array(Array(0...10000).reversed())
        let now = Date()
        self.sort(array: &array, low: 0, high: array.count - 1)
        let timeDif = Double(Int(Date().timeIntervalSince(now)*1000000))/1000
        print(timeDif,Self.self)

    }
}
