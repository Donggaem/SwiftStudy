import UIKit

//문자열 보간법
let age: Int = 10

"안녕하세요! 저는\(age)살 입니다"
// == "안녕하세요! 저는 10살입니다"
"안녕하세요! 저는\(age + 5)살 입니다"
// == "안녕하세요! 저는 15살입니다"
print("안녕하세요! 저는\(age + 5)살 입니다")

print("\n#################\n")

//콘솔로그
class Person{
    var name: String = "겸"
    var age: Int = 10
}
let dong: Person = Person()

print(dong)
//__lldb_expr_2.Person

print("\n\n")

dump(dong)
//▿ __lldb_expr_2.Person #0
//  - name: "겸"
//  - age: 10
