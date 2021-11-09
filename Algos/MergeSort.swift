//
//  MergeSort.swift
//  Testinng
//
//  Created by Dhiraj Kumar Patil on 16/09/21.
//

import Foundation
/*
 Time Complexity:
 Best O(n log n)
 Worst O(n log n)
 Average O(n log n)
 Space Complexity:
 Best O(n)
 */
class MergeSort {
    func sort(array: inout[Int],low:Int,high:Int) {
        if low < high {
            let median = (low + high)/2
            sort(array: &array, low: low, high: median)
            sort(array: &array, low: median + 1, high: high)
            merge(array: &array, low: low, median: median, high: high)
        }
    }
    func merge(array: inout[Int],low:Int,median:Int,high:Int) {
        let l = Array(array[low...median])
        let m = Array(array[(median+1)...high])
        let lCount = l.count
        let mCount = m.count
        
        var i = 0,j = 0
        var k = low
        while (i < lCount && j < mCount) {
            if l[i] <= m[j] {
                array[k] = l[i]
                i += 1
            }else {
                array[k] = m[j]
                j += 1
            }
            k += 1
        }
        while i < lCount {
            array[k] = l[i]
            k += 1
            i += 1
        }
        while j < mCount {
            array[k] = m[j]
            k += 1
            j += 1
        }
    }
}
extension MergeSort {
    func test() {
        var array = Array(Array(0...10000).reversed())
        let now = Date()
        self.sort(array: &array, low: 0, high: array.count - 1)
        let timeDif = Double(Int(Date().timeIntervalSince(now)*1000000))/1000
        print(timeDif,Self.self)

    }
}
