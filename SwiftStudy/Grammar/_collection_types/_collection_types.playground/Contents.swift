import UIKit

//컬렉션 ㅌㅏ입
//Array, Dictionary, Set

//Array - 순서가 있는 리스트 컬렉션
//Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
//Set - 순서가 없고, 멤버가 유일한 컬렉션


//MARK: - Array

//빈 Int Array 생성
var integers: Array<Int> = Array<Int>()

//요소 추가
integers.append(1)
integers.append(100)
//integers.append(101.1) // 다른타입 대입 불가

//요소 파악
integers.contains(100) // 있음
integers.contains(99) //없음

//요소 삭제
integers.remove(at: 0) // 0번째 인덱스 삭제
integers.removeLast() // 마지막 인덱스 삭제
integers.removeAll() //전체 삭제

//요소 갯수 세기
integers.count

//Array<Double>와 [Double]는 동일한 표현
//빈 Double Array 생성
var doubles: Array<Double> = [Double]()
//빈 String Array 생성
var strings: [String] = [String]()
//빈 Character Array 생성
//[]는 새로운 빈 Array
var sharacters: [Character] = []

// let를 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//MARK: -Dictionary

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

//밸류값 변경
anyDictionary["someKey"] = "dictionary"
anyDictionary

//밸류값 삭제
anyDictionary.removeValue(forKey: "anotherKey")

//nil 할당 가능
anyDictionary["someKey"] = nil
anyDictionary

//빈 Dictionary 생성
let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "겸", "gender": "남"]

//오류 //네임의 밸류값이 있을 수고 있고 없을 수도 있기 때문에 오류
//let someValue: String = initalizedDictionary["name"]

//MARK: - Set
//빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()

//요소 추가 //중복값 추가 안됌
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

//요소 확인
integerSet
integerSet.contains(1)
integerSet.contains(2)

//요소 삭제
integerSet.remove(100)
integerSet.removeFirst() //첫번때 요소 삭제

//요소 세기
integerSet.count

//집합 계산의 용이
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

//합치기
let union: Set<Int> = setA.union(setB)

//정렬
let sortedUnion: [Int] = union.sorted()

//교집합
let intersection: Set<Int> = setA.intersection(setB)

//차집합
let subtracting: Set<Int> = setA.subtracting(setB)
