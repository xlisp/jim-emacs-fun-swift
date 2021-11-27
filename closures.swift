// https://docs.swift.org/swift-book/LanguageGuide/Closures.html
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
//=>

var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
// => Ewa , Daniella, Chris, Barry, Alex

let numbers = [99, 11, 321, 3, 89]

let strings = numbers.map { (number) -> String in
    return "===" + String(number);
}
// 加上===的前缀的数字 "===99", "===11"

let strings = numbers.filter { (number) -> Bool in
    if number > 10 {
        return true;
    } else {
        return false;
    }
}
//=> 99, 11, 321 , 89

let numberSum = numbers.reduce(0, { x, y in
    x + y
})
// => 523

let collections = [[5, 2, 7], [4, 8], [9, 1, 3]]

let flat = collections.flatMap { $0 }
// 打平为一个数组 5, 2, 7 ...


let marks = [4, 5, 8, 2, 9, 7]
let totalPass = marks.filter { $0 >= 7}.reduce(0, +)
//=> 24

let numbers = [20, 17, 35, 4, 12]
let evenSquares = numbers.map { $0 * $0 }.filter { $0 % 2 == 0 }
// 400, 16, 144

let totalPass = marks.reduce(1, {x,y in x * y})
//=> totalPass: Int = 20160

