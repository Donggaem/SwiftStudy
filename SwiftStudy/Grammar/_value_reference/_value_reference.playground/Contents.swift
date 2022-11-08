import UIKit

/*
 Class
 *단일상속
 *(인스턴스/타입) 메서드
 *(인스턴스/타입) 프로퍼티
 *참조타입
 *Apple프레임워크의 대부분의 큰 뼈대는 모두 클래수로 구성
 */

/*
 Struct
 *C 언어 등의 구조체보다 다양한 기능
 *상속불가
 *(인스턴스/타입) 메서드
 *(인스턴스/타입) 프로퍼티
 *값 타입
 *Swift의 대부분의 큰 뼈대는 모두 구조체로 구성
 */

/*
 Enum
 *다른 언어의 열거형과는 많이 다른 존재
 *상속불가
 *(인스턴스/타입) 메서드
 *(인스턴스/타입) 연산 프로퍼티
 *값 타입
 *열거형 자체가 하나의 데이터 타입
 열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급
 */

//구조체는 언제 사용하나?
//참조가 아닌 복사를 원할 때
//상속받을 필요가 없을 때

//MARK: - Class vs Struct/Enum
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2
