
import UIKit
import Foundation

//옵셔널 optional
//옵셔널은 nil의 가능성을 명시적으로 표현
//예외 상황을 최소화하는 코딩, 효율적인 코딩
// !는 암시적 추출 옵셔널형식
// ?는 다른 타입과 연산 불가


//Optinal Unwrapping 옵셔널 값 추출

//Optinal Binding - 옵셔널 바인딩
//nil체크 + 안전한 값 추출 방법

/* 오류
 func printName(_ name: String){
    print(name)
}
var myName: String? = nil
printName(myNAme) //전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생
 */

//if-let

/*
func printName(_ name: String){
    print(name)
}
var myName: String! = nil
 
if let name: String = myName{
    printName(name)
}else {
    print("myName == nil")
}
 
printName(name) //name 상수는 if-let구문 내에서만 사용가능함 범위를 벗어나서 오류
*/


var myName: String? = "겸"
var yourName: String? = nil

if let name = myName, let friend = yourName{
    print("\(name) and \(friend)")
} // yourName이 nil이기 때문에 실행이 안됌

yourName = "동"
 if let name = myName, let friend = yourName{
     print("\(name) and \(friend)")
 } // 겸 and 동

//Force Unwrapping - 강제추출
/*
func printName(_ name: String){
    print(name)
}

var myName: String? = "겸겸"

printName(myName!) // 겸겸  // 강제추출

myName = nil
print(myName!) // 강제추출시 값이 없으므로 런타임 오류

var yourName: String! = nil
printName(yourName) //nil값이 전달되기 때문에 런타임 오류
*/
