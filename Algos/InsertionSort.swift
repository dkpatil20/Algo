//
//  InsertionSort.swift
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
class InsetionSort {
    func sort(array: inout[Int]) {
        let size = array.count
        for step in (1..<size) {
            let key = array[step]
            var j = step - 1

            while (j >= 0 && key < array[j]) {
                array[j+1] = array[j]
                j -= 1
            }
            array[j+1] = key
        }
    }
}
extension InsetionSort {
    func test() {
        var array = Array(Array(0...10000).reversed())
        let now = Date()
        self.sort(array: &array)
        let timeDif = Double(Int(Date().timeIntervalSince(now)*1000000))/1000
        print(timeDif,Self.self)

    }
}
