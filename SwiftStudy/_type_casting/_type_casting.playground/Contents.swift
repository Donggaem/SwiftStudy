import UIKit
import Foundation

//타입캐스팅

//스위프트의 타입캐스팅은
//인스턴스의 타입을 확인하는 용도
//또는 클래스의 인스턴스를
//부모 혹은 자식 클래스의 타입으로 사용할 수 있는지
//확인하는 용도로 사용합니다
//is, as를 사용

//다른언어의 보통의 타입캐스팅 형식  // 스위프트에서는 더블타입의 인스턴스를 하나 만드는것
//let someInt: Int = 100
//let someDouble: Double = Double(someInt)

//타입캐스팅을 위한 클래스 정의
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("엠티에 갑니다")
    }
}

//인스턴스 생성
var gaem: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()

//MARK: - 타입확인
// is를 사용하여 타입을 확인

var result: Bool

result = gaem is Person //true
result = gaem is Student //false
result = gaem is UniversityStudent //false

result = hana is Person //true
result = hana is Student //true
result = hana is UniversityStudent //false

result = jason is Person //true
result = jason is Student //true
result = jason is UniversityStudent //true

if gaem is UniversityStudent {
    print("겸은 대학생입니다")
} else if gaem is Student {
    print("겸은 학생입니다")
} else if gaem is Person {
    print("겸은 사람입니다")
} //겸은 사람입니다

switch jason {
case is Person:
    print("jason은 사람입니다")
case is Student:
    print("jason은 학생입니다")
case is UniversityStudent:
    print("jason은 대학생입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} //jason은 사람입니다

//MARK: - 업캐스팅
//as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록
//컴파일러에세 타입정보로 전환해줍니다
//Any 혹은 AnyObject로도 타입정보를 변환할 수 있습니다
//암시적으로 처리되므로 생략해도 무방합니다

var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
//var jina: UniversityStudent = Person() as UniversityStudent // 컴파일 오류
var jina: Any = Person() // as Any 생략가능


//MARK: - 다운캐스팅
//as? 또는 as!를 사용하여
//자식 클래스의 인스턴스로 사용할 수 있도록
//컴파일러에게 인스턴스의 타입정보를 전환해줍니다

//MARK: 조건부 다운 캐스팅
//as?
//결과값은 옵셔널

var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent //nil
optionalCasted = jina as? UniversityStudent //nil
optionalCasted = jina as? Student //nil

//MARK: 강제 다운 캐스팅
//as!

var forcedCasted: Student

optionalCasted = mike as! UniversityStudent
//optionalCasted = jenny as! UniversityStudent //런타임오류
//optionalCasted = jina as! UniversityStudent //런타임오류
//optionalCasted = jina as! Student //런타임오류

// 활용
func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: jenny) // 등교를 합니다
doSomethingWithSwitch(someone: gaem) // 숨을 쉽니다

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {//if let 사용시캐스팅과 동시에 옵셔널 추출
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

doSomething(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: jenny) // 등교를 합니다
doSomething(someone: gaem) // 숨을 쉽니다
