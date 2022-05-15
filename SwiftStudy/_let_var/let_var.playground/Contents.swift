import UIKit

//상수, 변수

//상수 선언
//let 이름: 타입 = 값

//변수 선언
//var 이름: 타입 = 값

//값의 타입이 명확하다면 생략 가능

let constant: String = "차후에 값 변경이 불가능한 상수 let"
var variable: String = "차후에 값 변경이 가능한 변수 var"

variable = "변수는 이렇게 값이 변경 가능하다"

//나중에 값 할당하기

//나중에 값을 할당하려는 상수나 변수는 타입을 꼭 명시해주어야 함
let sum: Int
let num1: Int = 100
let num2: Int = 200

//선언후 첫 할당
sum = num1 + num2

//첫 선언이후에는 다시 값을 바꿀수 없음
// sum = 1  //오류발생

//변수도 나중에 값을 할당할 수 있음
var nName: String

nName = "겸"

//변수는 차후에도 값 변경 가능
nName = "동"
