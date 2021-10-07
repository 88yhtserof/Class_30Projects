import UIKit

var greeting = "Hello, playground"

//4. 상수와 변수
//상수
//let 상수명: 데이터 타입 = 값
//값 변경 불가능 -> 안전함. 변경해서는 안 되는 값을 변경할 때 컴파일러 이를 알려줌(오류)
let a:Int = 100

//변수
//var 변수명: 데이터 타입 = 값
//값 변경 가능
var b: Int = 200
b = 300

/*
 전체 공간과 사용가능 공간 중 어떤 값을 상수로 해야할까?
 전체 공간은 제조사에서 기기에 부여하는 값이므로 변경되지 않는다. 따라서 전체 공간은 상수로 선언해야한다.
 이와는 다르게 사용가능 공간은 사용자가 얼마나 사용했는지에 따라 값이 변화한다. 따라서 값을 변경할 수 있는 변수로 선언해야 한다.
 */



//5. 기본 데이터 타입
/*
 Int 64bit 정수형
 UInt 부호가 없는 64bit 정수형
 Float 32bit 부동 소수점
 Double 64bit 부동 소수점
 Bool true, false 값
 Character 문자
 String 문자열
 Any 모든 타입을 지칭하는 키워드
 */
//Int
var someInt: Int = -100
someInt = 100
//someInt = 1.0 타입 오류, 스위프트는 타입 세이프, 타입 검사를 실시하고 오류 메세지를 보낸다.

//UInt
var someUInt: UInt = 200
//someUInt = -100 부호가 있는 수 오류 발생

//Float
var someFloat: Float = 1.1
someFloat = 1 //정수값을 할당하면 자동으로 1.0이 할당된다.
print(someFloat)

//Double
var someDouble: Double = 1.1
someDouble = 1 //정수값을 할당하면 자동으로 1.0이 할당된다.
print(someDouble)

//Bool
var someBool: Bool = true
someBool = false

//Character
var someCharacter: Character = "가"
//someCharacter = "문자열은 할당이 안 된다."

//String
var someString: String = "문자열 할당"

//타입 추론
//스위프트는 타입 추론 기능이 있다.
var some = "무슨 타입일까?"
print(some,type(of: some))


//6. 컬렉션 타입
/*
 컬렉션 타입이란?
 컬렉션 타입은 데이터들의 집합 묶음. 지정된 타입의 데이터를 한데 모은 것
 Array
 데이터 타입의 값들을 순서대로 저장하는 리스트
 Dictionary
 순성없이 키와 값 한 쌍으로 데이터를 저장하는 컬렉션 타입
 Set
 같은 데이터 타입의 값을 순서없이 저장하는 리스트. 중복 불허-> 멤버 고유함을 보장한다.
 */

//Array
var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
//순서가 있기때문에 인덱스로 각 요소에 접근할 수 있다.
numbers[0]

numbers.insert(10, at: 1) //1번 인덱스에 10 넣기 -> 기존 1번 인덱스의 값은 2번으로 밀려난다.
numbers

numbers.remove(at: 1) //1번 인덱스 삭제
numbers
/*
 보통 배열 선언 시 축약된 문법으로 선언
 var names = [String]()
 var names: [String] = []
 */

//Dictionary
//var dictionary: Dictionary<String, Int> = Dictionary<String, Int>()
var dictionary: [String: Int] = ["권태완" : 1]
dictionary["김철수"] = 3 //딕셔너리에 키를 지정하여 값을 할당하면 해당 딕셔너리에 추가된다.
dictionary["영희"] = 10
dictionary //딕셔너리는 순서가 없다.

dictionary.removeValue(forKey: "권태완") //해당 키를 가진 요소가 삭제된다.
dictionary


//Set
//순서가 없고 멤버가 고유함을 보장하는 컬렉션
var set: Set = Set<Int>() //축약형 없다.

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set //값을 중복하여 삽입해도 중복저장하지 않는다.

set.remove(20)
set


//7. 함수 사용법
/*
 작업의 가장 작은 단위이자 코드의 집합. 반복적인 작업을 피하기 위해 사용
 하나의 기능 하나의 함수
 */

func sum(a: Int, b: Int) -> Int {
    return a+b
}
sum(a: 10, b: 20)

func hello() -> String {
    return "Hello!"
}
hello()

func printHi() {
    print("Hi")
}
printHi()

//default 값 설정하기
func greeting(friend: String, me: String = "yh") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "tw")

//전달인자 레이블 사용 -> 함수 사용자가 매개변수의 역할을 명확하게 이해하고 사용할 수 있다. 가독성 좋음
//와일드 카드 식별자(_)를 사용하면 전달인자 레이블을 전달하지 않는 함수를 만들 수 있다.
//가변 매개변수는 여러 인자를 넘겨줄 수 있다. 배열을 넘겨주는 형식
func sendMessage(_ myName: String, to name: String...) -> String {
    return"Hello \(name)! I'm \(myName)"
}
sendMessage("yh", to: "a", "b")


//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 형식이라 함수를 일급객체로 여긴다.따라서 함수를 상수나 변수에 할당할 수 있고, 매개변수를 통해 전달 가능하다.
