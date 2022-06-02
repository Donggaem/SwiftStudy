import UIKit

//옵셔널 체이닝
//옵셔널 체이닝은 옵셔널 요소 내부의 프로퍼티로
//또다시 옵셔널이 연속적으로 연결되는 경우 유용하게 사용할 수 있습니다

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let gaem: Person? = Person(name: "겸")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")

//옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
//결과 타입도 옵셔널입니다

//만약 우리집의 경비원의 직업이 궁금하다면?

//옵셔널 체이닝을 사용하지 않는다면
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

//옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job { //연쇄적인 방식으로 옵셔널 값을 추출
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: gaem)
// 우리집 경비원은 직업이 없어요

gaem?.home?.guard?.job // nil
                    
gaem?.home = apart

gaem?.home // O[tional(Apartment)
gaem?.home?.guard // nil

gaem?.home?.guard = superman

gaem?.home?.guard // Optional(Person)

gaem?.home?.guard?.name // supermen
gaem?.home?.guard?.job // nil

gaem?.home?.guard?.job = "경비원"


//nil 병합 연산자
//??앞의 값이 nil이면 뒤에값 넣기

var guaedJob: String

guaedJob = gaem?.home?.guard?.job ?? "슈퍼맨"
print(guaedJob) // 경비원
                                
gaem?.home?.guard?.job = nil
                                
guaedJob = gaem?.home?.guard?.job ?? "슈퍼맨"
print(guaedJob) // 슈퍼맨
