import UIKit

//구조체
//MARK: -정의
//struct 이름 {
//    구현부
//}

//MARK: 프로퍼티 및 메서드

struct Sample {
    var mutablePreperty: Int = 100 // 가변 프로퍼티
    let immutablePreperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 //타입 프로퍼티
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입메서드
    static func typeMethod(){
        print("type method")
    }
}
//MARK: 구조체 사용

//가변 인스턴스
var mutable: Sample = Sample()

//mutable.mutablePreperty = 200
//mutable.immutablePreperty = 200 //불변 프포퍼티라 값 변경 불가

//불변 인스턴스
let immutable: Sample = Sample()

//immutable.mutablePreperty = 200
//immutable.immutablePreperty = 200

//타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // typr method

//인스턴스에서는 사용 불가능
//mutable.typeProperty = 400
//mutable.typeMethod()

//MARK: -학생 구조체
struct Student {
    var name: String = "unknow"
    var classs: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(classs)반 \(name) 입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

var dong: Student = Student()
dong.name = "dong"
dong.classs = "스위프트"
dong.selfIntroduce() //저는 스위프트반 dong 입니다

let jina: Student = Student()

//불변 인스턴스이므로 프로퍼티 값 변경 불가
//컴파일 오류 발생
//jina.name = "juna"

// 인스턴스 메소드는 호출가능
jina.selfIntroduce() //저는 Swift반 unknow 입니다
