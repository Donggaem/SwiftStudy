import UIKit

// 반복문

var integers = [1, 2, 3]
let people = ["겸": 10, "eric": 15, "mike": 12]

//MARK: - for-in
//for item in items {
//   code
//}

for integer in integers {
    print(integer)
}

// Dictionary의 itrm은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}

//MARK: -while

//while condition {
//   code
//}

while integers.count > 1 { //Bool값 넣기
    integers.removeLast()
}

//MARK: - repect-while

//repect {
//   code
//} while cindition

repeat{
    integers.removeLast()
} while integers.count > 0
