import UIKit
import Foundation

//assert와 guard

//애플리케이션이 동작 도중에 생성하는 다양한 결과값을
//동적으로 확인하고 안전하게 처리할 수 있도록
//확인하고 빠르게 처리할 수 있습니다

//MARK: - Assertion
//assert(_:_:file:line:) 함수를 사용
//assert 함수는 디버깅 모드에서만 동작
//배포하는 애플리케이션에서는 제외
//주로 디버깅 중 조건의 검증을 위하여 사용합니다

var someInt: Int = 0

assert(someInt == 0, "someInt != 0") // 0이면 넘어가고 아니면 "someInt != 0"메세지

someInt = 1
//assert (someInt == 0) // 동작중지, 검증실패
//assert (someInt == 0, "someInt != 0") // 동작중지, 검증실패
//__lldb_expr_3/_assert_guard.playground:21: Assertion failed: someInt != 0 Playground execution failed:

func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세 입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작중지, 검증실패
//functionWithAssert(age: nil) // 동작중지, 검증실패


//MARK: - Early Exit
//guard를 사용하여 잘못된 값의 전달시
//특정 실행구문을 빠르게 종료
//디버깅 모드 뿐만 아니라 어떤 조건에서도 동작
//guard의 else 블럭 내부에는
//특정 코드블럭을 종료하는 지시어 (retuen, break 등)가
//꼭 있어야합니다
//타입캐스팅, 옵셔널과도 자주 사용됩니다
//그 외 단순 조건 판단후 빠르게 종료할 때도 용이합니다

func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age, //언래핑 후 밑에서도 사용가능
          unwrappedAge < 130,
          unwrappedAge >= 0 else{
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else{
        break
    }
    print(count)
    count += 1
}

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"]) // 나이가 스트링타입이랑 멈춤
someFunction(info: ["name": "mike"]) // 나이값이 없어서 멈춤
someFunction(info: ["name": "gaem", "age": 10])
