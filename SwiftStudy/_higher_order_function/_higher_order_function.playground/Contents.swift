import UIKit

//고차함수

//전달인자로 함수를 전달 받거나
//함수실행의 결과를 함수로 반환하는 함수

//map, filter, reduce

//MARK: - map
//컨데이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너 생성

let numbers: [Int] = [0, 1, 2, 3, 4]
var doublednNumbers: [Int]
var strings: [String]

//MARK: for 구문 사용
doublednNumbers = [Int]()
strings = [String]()

for number in numbers {
    doublednNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doublednNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

//MARK: map 메서드 사용
//numbers의 각 요소를 2배하여 새로운 배열 반환
doublednNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})

//numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doublednNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

//매개변수, 반환타입, 반환 키워드(return) 생략, 후행클로저 사용
doublednNumbers = numbers.map { $0 * 2}
print(doublednNumbers) // [0, 2, 4, 6, 8]

//MARK: - filter
//컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출

//MARK: for 구문 사용
// 변수 사용에 주목
var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered) // [0, 2, 4]

//MARK: filter 메서드 사용
//numbers의 요소 중 짝수를 걸러대어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter {
    (number: Int) -> Bool in
    
    return number % 2 == 0
}

print(evenNumbers) // [0, 2, 4]

//매개변수, 반환타입, 반환 키워드(return) 생략, 후행클로저 사용
let oddNumbers: [Int] = numbers.filter { $0 % 2 != 0 }

print(oddNumbers) // [1, 3]

//MARK: - reducs
//컨테이너 내부의 콘텐츠를 하나로 통합

let someNumbers: [Int] = [2, 8, 15]

//MARK: for 구문 사용
//변수 사용에 주목
var result: Int = 0

//someNumbers의 모든 요소를 더합니다
for number in someNumbers {
    result += number
}

print(result) // 25

//MARK: reduce 메서드 사용
//초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다
let sum: Int = someNumbers.reduce(0, {
    (first: Int, second: Int) -> Int in
    
    return first + second
})

print(sum) // 25

//초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다
let subtract: Int = someNumbers.reduce(0, {
    (first: Int, second: Int) -> Int in
    
    return first - second
})

print(subtract) // -25

//초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

print(sumFromThree) // 28

//초깃값 1에 내부의 모든값 곱하기
print(someNumbers.reduce(1) { $0 * $1 }) // 240
