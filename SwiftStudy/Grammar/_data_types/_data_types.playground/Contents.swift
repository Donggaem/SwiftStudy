import UIKit

//기본 데이터 타입들
//Bool, Int, UInt, Float, Double, Character, String

//Bool //true, false 값을 가짐
var someBool: Bool = true
someBool = false
//오류
//someBool = 0 //Int타입 값을 넣으면 안됌
//someBool = 1 //Int타입 값을 넣으면 안됌

//Int //정수형
var someInt: Int = -100
//오류
//someInt = 100.1 //double 값을 넣으면 안됌

//UInt //양의정수형
var someUInt: UInt = 100
//오류
//someUInt = someInt //Int타입 값을 넣으면 안됌

//Float //32bit부동 소수형
var someFloat: Float = 3.14
someFloat = 3 //정수형 입력 가능

//double //64bit 부동소수형
var someDouble: Double = 3.14
someDouble = 3 //정수 가능
//오류
//someDouble = someFloat // double타입에 float타입을 넣을 수 없음 반대로도 안됌

//Character //한 글자 문자, 유니코드 사용, ""사용
var someCharacter: Character = "🇰🇷"
someCharacter = "😃"
someCharacter = "가"
someCharacter = "A"
print(someCharacter)

//String //문자열, 여러글자
var someString: String = "하하하 😃 "
someString = someString + "웃으면 복이 와요"
print(someString)
//오류
//someString = someCharacter
