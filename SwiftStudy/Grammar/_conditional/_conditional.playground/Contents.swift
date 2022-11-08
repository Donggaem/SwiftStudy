import UIKit
import FileProvider

let someInteger = 100

//MARK: - if-else

//if condition {
//    statements
//} else if condition {
//    statements
//} else{
//    statements
//}

if someInteger < 100{
    print("100미만")
} else if someInteger > 100 {
    print("100 초과")
} else{
    print("100")
}

//스위프트의 조건에는 항상 Bool타입이 들어와야 합니다
//someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
//컴파일 오류가 발생합니다
//if someInteger { }


//MARK: - switch

//switch value {
//case pattern:
//    code
//default:
//    code
//}

// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknow")
    
}

//정수 외의 대부분의 기본 타입을 사용할 수 있습니다
//케이스가 다 명시 되지 않는한 디폴트를 명시 해주어야함
//브레이크를 안걸어도 무조건 걸림
switch "겸"{
case "jake":
    print("jake")
case "mina":
    print("mina")
case "겸":
    print("겸")
default:
    print("unknow")
}
