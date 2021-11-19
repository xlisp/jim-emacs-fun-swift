// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/

// 加上类型
let imlicitInteger = 70
let imlicitDouble = 70.0
let explicitDouble: Double = 70

// 类型需要一致
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// 索引
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
   "Malcolm": "Captain",
   "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

//数组,字典
let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Float>()

// 循环类似clojure for in
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore //=> 11

//在 if 语句中，条件必须是布尔表达式
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)" // "Hello, John Appleseed"
}

//case
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

// 多个for
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
} //=> 25

// while
var n = 2
while n < 100 {
    n = n * 2
}
n // 128

//通过 ".." 来表示索引范围
var firstForLoop = 0
for i in 0...3 {
    firstForLoop += i
}
firstForLoop //=> 6

// 函数和lambda: 输入类型 -> 输出类型声明
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet(name: "Bob", day: "Tuesday") //=> "Hello Bob, today is Tuesday."

// 使用元组(tuple)来返回多个值
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

// 多参数&
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf() //=> 0
sumOf(numbers: 42, 597, 12) //=> 651

// 返回函数 TODO: !!! 类型错误
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// map 函数
var numbers = [20, 19, 7, 12]
numbers.map({
                (number: Int) -> Int in
                let result = 3 * number
                return result
            })
//=> { [0] = 60  [1] = 57  [2] = 21  [3] = 36}

numbers.map({number in 3 * number})


//[1, 5, 3, 12, 2].sort( { $0 > $1 })

//类
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
}
 NamedShape(name: "aaa")
//$R117: NamedShape = {
//  numberOfSides = 0
//  name = "aaa"
//}
