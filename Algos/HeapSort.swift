//
//  HeapSort.swift
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
 Best O(1)
 */class HeapSort {
    func sort(array: inout[Int]) {
        let size = array.count
        let numberOfRoot = (size/2) - 1
        for reverseRoot in (0...numberOfRoot){
            let root = numberOfRoot-reverseRoot
            heapify(array: &array, size: size, root: root)
        }
        for reverseStep in (0...size-1) {
            let step = (size - 1) - reverseStep
            (array[step],array[0]) = (array[0],array[step])
            heapify(array: &array, size: step, root: 0)
        }
    }
    func heapify(array: inout[Int],size: Int,root:Int) {
        var largest = root
        let left = 2*root + 1
        let right = 2*root + 2

        if (left < size && array[left] > array[largest] ){
            largest = left
        }
        if (right < size && array[right] > array[largest]) {
            largest = right
        }

        if root != largest  {
            (array[root],array[largest]) = (array[largest],array[root])
            heapify(array: &array, size: size, root: largest)
        }
    }
}
extension HeapSort {
    func test() {
        var array = Array(Array(0...10000).reversed())
        let now = Date()
        self.sort(array: &array)
        let timeDif = Double(Int(Date().timeIntervalSince(now)*1000000))/1000
        print(timeDif,Self.self)
        
    }
}
