import UIKit

//Any, AnyObject, nil

//Any - Swift의 모든 타입을 지칭하는 키워드
//AntObject - 모든 클래스 타입을 지칭하는 프로토콜
//nil - 없음을 의미하는 키워드

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

//오류
//let someDouble: Double = someAny //값이 더블값 일지라도 다른 타입에 넣을 수 없음

//MARK: - AnyObject

class SomeClass{}

var someAnyObject: AnyObject = SomeClass()
//오류
//someAnyObject = 123.12

//MARK: -nil
//오류
//somAny = nil // 빈값은 대입 안됌
//someAnyObject = nil
