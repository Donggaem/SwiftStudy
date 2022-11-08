import UIKit
import Swift
// 프로퍼티

/*
 저장 프로퍼티 (stored property)
 연산 프로퍼티 (computed property)
 인스턴스 프로퍼티 (instance property)
 타입 프로퍼티 (type property)
 */

//프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다
//다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다
//연산 프로퍼티는 var로만 선언할 수 있습니다

//MARK: - 정의

struct Student {
    
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    // 인스턴스 연산 프로퍼티
    var westernAge: Int{
        get{
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    //타입 저장 프로퍼티
    static var typrDescription: String = "학생"
    
    /*
     //인스턴스 메서드
     func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
     }
     */
    
    // 읽기전용 인스턴스 연산 메서드
    var selfIntroduction: String{
        get{
            return "저는 \(self.class)반 \(name)입니다 "
        }
    }
    
    /*
     // 타입 메서드
     static func selfIntroduce(){
     print("학생타입입니다")
     }
     */
    
    //읽기전요 타입 연산 프로퍼티
    //읽기전용에서는 get을 생략할 수 있음
    static var selhIntroduction: String {
        return "학생입니다"
    }

}

//MARK: - 사용

//타입 연산 프로퍼티 사용
print(Student.selhIntroduction)
//학생타입 입니다

//인스턴스 생성
var gyeom: Student = Student()
gyeom.koreanAge = 10

//인스턴스 저장 프로퍼티 사용
gyeom.name = "겸"
print(gyeom.name)
//겸

//인스턴스 연산 프로퍼티 사용
print(gyeom.selfIntroduction)
//저는 Swift반 겸 입니다

print("제 한국나이는 \(gyeom.koreanAge)살이고, 미쿡나이는 \(gyeom.westernAge)살입니다.")
//제 한국나이는 10살이고, 미쿡나이는 9살입니다.

//MARK: - 응용

struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set { //set에 매개변수 지정을 안할시 newValue로 값을 받음
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000

print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)

//MARK: - 지역변수, 전역변수

//저장 프로퍼티와 연산 프로퍼티의 기능은
//함수, 메서드, 클로저, 타입 등의 외부에 위치한
//지역/전역 변수에도 모두 사용 가능합니다

var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}

print(sum)