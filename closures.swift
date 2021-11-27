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
