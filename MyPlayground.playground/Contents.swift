//: A UIKit based Playground for presenting user interface

import Foundation

// 线性搜索
//func linearContains<T:Equatable>(_ array:[T],item:T) -> Bool {
//    for element in array where item == element {
//        return true
//    }
//    return false
//}
//


// 当有顺序时 二分法搜索
//func binaryContains<T:Comparable>(_ array:[T], item:T) -> Bool {
//    var low = 0
//    var high = array.count - 1
//    while low < high {
//        let mid = (low + high) / 2
//        if array[mid] < item {
//            low = mid + 1
//        }else if array[mid] > item {
//            high = mid - 1
//        }else{
//            return true
//        }
//    }
//    return false
//}
//
//print(linearContains([1,5,15,15,15,1,15,15], item: 5))
//
//print(binaryContains(["a","d","e","f","q"], item: "m"))
//
//

//let maxNum = 3
//struct MCState:Hashable,CustomStringConvertible {
//
//    let missionaries:Int  // 传教士
//    let cannibals:Int  // 食人族
//    let boat:Bool // 船
//    var hashValue:Int { return missionaries * 10 + cannibals + (boat ? 1000:2000) }
//
//    var description: String {
//        let wm = missionaries
//        let wc = cannibals
//        let em = maxNum - wm
//        let ec = maxNum - wc
//        var description = "On the east bank there are \(em) missionaries and \(wc) cannibals.\n"
//        description += "On the east bank there are \(em) missionaries and \(wc) cannibals.\n"
//        description += "The boat is on the \(boat ? "west":"east") bank .\n"
//        return description
//    }
//}
//
//
//func == (lhs:MCState, rhs:MCState) -> Bool {
//    return lhs.hashValue == rhs.hashValue
//}
//
//func goalTestMC(state:MCState) -> Bool {
//    return state == MCState(missionaries: 0, cannibals: 0, boat: false)
//}


//enum Cell:Character {
//    case Empty = "O"
//    case Blocked = "X"
//    case Start = "S"
//    case Goal = "G"
//    case Path = "P"
//}
//
//
//typealias Maze = [[Cell]]


let _queue = DispatchQueue.init(label: "cell-com.hem")
_queue.async {
    print("输出one")
    
    var array = [String]()
    for i in 0..<10000 {
        array.append("\(i)")
        print(array[i])
    }
    
    _queue.async(execute: .init(qos: .default, flags: .barrier, block: {
        print("输出two")
    }))
    
}

_queue.async {
    print("输出thre")
}































