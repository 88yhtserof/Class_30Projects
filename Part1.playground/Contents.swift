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

//8. 조건문
/*
 조건에 따라 애플리케이션을 다르게 동작하도록 하는 것이다
 if, switch, guard
 */

//if구문
let age = 20

if age < 19 {
    print("미성년자")
}
else {
    print("성인")
}

let animal = "pig"

if animal == "dog" {
    print("개")
} else if animal == "cat"{
    print("고양이")
}else {
    print("해당하는 동물이 없습니다.")
}


//switch구문
 let color = "green"

switch color {
case "red":
    print("빨강")
case "blue":
    print("파랑")
default:
    print("찾는 색상이 없습니다.")
}

//범위 연산자도 사용가능하다.

let temperature = 30

switch temperature {
case -20 ... 9:
    print("겨울입니다.")
case 10...14:
    print("가을입니다.")
case 15...25:
    print("봄입니다.")
case 26...30:
    print("여름입니다.")
default:
    print("이상 기후입니다.")
}


//9. 반복문
//반복적으로 코드가 실행되게 만드는 구문을 말한다.
//for-in, while, repeat-while

//for-in 일정횟수만큼 특정 문장을 반복하고자 할 때.
for i in 1...4 {
    print(i, terminator: " ")
}

let array: [Int] = [1, 2, 3, 4, 5]

for i in array {
    print(i, terminator: "/")
}
print("")
 

//while - 정해진 횟수없이 조건식 불만족할 때까지 실행구문을 반복한다.
var number = 5

while number < 10 {
    print(number)
    number += 1
}


//repeat-while 적어도 한 번은 구문이 실행된다.
var x = 6

repeat {
    x += 2
}while x < 5

print(x) //repeat-while 구문은 조건을 만족하지 않더라도 적어도 한 번은 구문이 실행되기 때문에 x는 8이 된다.


//10. 옵셔널
/*
 값이 있을 수도 있고 없을 수도 있다.
 */

var name: String?
var optionalName: String? = "yh" //nil 뿐만이 아니라 일반 값도 넣을 수 있다.
print(optionalName) //옵셔널 변수는 일반 변수와 구분된다.

//11. 옵셔널 바인딩
/*
 옵셔널 값 추출 방법, 옵셔널 해제 방법
 명시적 해제 - 강제 해제, 비강제 해제(옵셔널 바인딩)
 묵시적 해제 - 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제
 */

var num: Int? = 3
print(num) //Optional(3)
print(num!)  //3 - 옵셔널 강제 해제, 위험한 방법

//안전하게 옵셔널 값을 추출하는 방법
//비강제 해제(옵셔널 바인딩)
if let result = num { //추출된 값이 변수 또는 상수로 result에 할당된다.
    print(result)
} else {
    print("추출 실패 시 실행된다.")
}

//guard문으로 옵셔널 바인딩하는 방법
func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}
test()

/*
 if문을 사용하면 추출된 변수나 상수를 if문 안에서만 사용할 수 있는 반면에, guard문을 사용하면 guard문 다음, 함수 전체에서 추출된 변수나 상수를 사용할 수 있다.
 guard문은 조건식을 통과하지 못하면 else문을 수행한 뒤 흐름을 종료해버린다.
 */

//묵시적 해제

//1. 컴파일러가 자동적으로 해제한다.
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
}else {
    print("value가 6이 아닙니다.")
}

//2.옵셔널의 묵시적해제
//데이터 타입 뒤에 !을 붙여 선언하면 묵시적 옵셔널 해제가 되어 자유롭게 일반값처럼 사용이 가능하다.
let string: String = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)


//12. 구조체
/*
 구조체와 클래스는 ㅍ데이터를 용도에 맞게 표현할 때 유용하다.
 구조화된 데이터와 기능을 만들 수 있어 새로운 사용자 정의 데이터 타입을 만들 수 있다.
 둘의 차이점: 구조체의 인스턴스는 값 타입, 클래스의 인스턴스는 참조 타입
 */

/*
struct User {
    var nickname: String
    var age: Int
    
    func infomation() {
        print("\(nickname) \(age)")
    }
}

//인스턴스 - 메모리에 생성되는 클래스 또는 구조체의 실체

var user = User(nickname: "yh", age: 100) //생성자 자동 생성
user.nickname//인스턴스의 프로퍼티 접근하기
user.nickname = "Arbelt"
user.nickname

//인스턴스의 메서드 접근하기
user.infomation()
*/

//13. 클래스

class Dog {
    var name: String = ""
    var age: Int = 0
    
    //class에서는 생성자를 정의해주어야 한다.
    init() {
    }
    
    func infomation() {
        print("\(name) \(age)")
    }
}

var dog = Dog()
dog.name = "CoCo"
dog.age = 3
dog.infomation()



//14. 초기화 구문 init
/*
 클래스나 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
 사용 이유 새 인스턴스를 생성하기 전 필요한 설정을 위함
 */
class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "who"
        self.age = age
    }
    
    deinit {
        print("deinit user")
    }
}

var user: User = User(nickname: "yh", age: 100)
user.nickname
user.age

var user2: User = User(age: 400)
user2.nickname
user2.age

/*
 디이니셜라이즈
 인스턴스가 메모리에 해제되기 직전에 호출, 클랫 인스턴스와 관련하여 정의작업을 구현할 수 있다.
 클래스에서만 구현할 수 있다.
 */

var user3: User? = User(age: 23)
user3 = nil // 인스턴스에 nil을 할당하면 더 이상 해당 인스턴스가 필요하지 않다고 판단하여 deinit 호출한다.

//15. 프로퍼티
/*
 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다
 인스턴스에 소속된 변수 및 습성
 저장 프로퍼티-변수 또는 상수
 연산 프로퍼티-특정 연산을 실행하는 결과값
 타입 프로퍼티- 특정 타입에서 사용되는 프로퍼티
 */

//저장 프로퍼티
//구조체 또는 클래스에서 사용 가능
//인스턴스의 프로퍼티에 값이 저장되는걸 저장 프로퍼티라고 한다
struct Cat {
    var name: String
    let gender: String //상수이므로 값 변경 불가
}

var cat = Cat(name: "cat", gender: "Female")
print(cat)

let cat2 = Cat(name: "cat2", gender: "Male")
//구조체가 값 타입이기 때문에 구조체 인스턴스를 상수로 선언하면 내부 프로퍼티도 상수가 되서 수정 불가하다.
//클래스는 참조 타입이기 때문에 클래스의 인스턴스를 상수로 선언해도 변수로 선언된 내부 프로퍼티는 수정이 가능하다.


//연산 프로퍼티
//구조체, 클래스, 열거형에서 사용 가능
//getter, setter를 이용하여 값을 연산하고 프로퍼티에 전달해주는 것이 연산 프로퍼티이다.
struct Stock {
    var averagePrice: Int
    var quntity: Int
    var purachasePrice: Int {
        get{//get만 작성하면 읽기전용 프로퍼티가 된다.
            return averagePrice * quntity
        }
        set(newPrice) { //매개변수를 생략하고 매개변수 대신에 newValue라는 이름으로 사용할 수 있다.
            averagePrice = newPrice / quntity
        }
    }
}
var stock = Stock(averagePrice: 2300, quntity: 3)
print(stock)
stock.purachasePrice //get 실행
stock.purachasePrice = 3000 //set 실핼
stock.averagePrice


//property Observers 프로퍼티 감시자
//프로퍼티의 값을 변화를 관찰하고 반영한다. 프로퍼티가 set 될 때마다 호출된다.
//사용 가능 경우, 저장 프로퍼티와 오버라이드된 저장 프로퍼티와 연산 프로퍼티
class Account {
    var credit: Int = 0 {
        //소괄호 이름 지정
        willSet {//값이 저장되기 직전에 호출되는 Observers
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet { //값이 저장된 직후 호출되는 Observes
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 100
//잔액이 0원에서 100원으로 변경될 예정입니다.
//잔액이 0원에서 100원으로 변경되었습니다.


//타입 프로퍼티
//인스턴스 생성없이 객체 내 프로퍼티에 접근을 가능하게 하는 것
//프로퍼티 타입 자체와 연결하는 것을 의미한다.
struct SomeStructure {
    static var storedTypreProperty = "Some Value" //static 키워드로 타입 프로퍼티 설정
    static var computeTypeProperty: Int { //static 키워드로 타입 프로퍼티 생성
        return 1
    }
}

//별도의 인스턴스 생성 없이 타입 프로퍼티에 접근 가능하다.
//값 변경도 가능하다. -> 문법 책) 인스턴스의 프로퍼티 값이 변경되는 것이 아니라, 객체 자체의 값이 변경되는 것이기 때문에 모든 인스턴스에 영향을 미친다.


//16. 클래스와 구조체 차이
/*
 공통점
 값을 저장할 프로퍼티를 선언할 수 있다.
 함수적 기능을 하는 메서드를 선언할 수 있다.
 내부 값에 .을 사용하여 접근할 수 있다.
 생성자를 사용해 초기 상태를 설정할 수 있습니다.
 extension을 사용해 기능을 확장할 수 있다.
 Protocol을 채택하여 기능을 설정할 수 있다.
 
 차이점
 클래스
 중요 참조타입 -> 메모리 스택 영역에는 포인터, 즉 하나의 인스턴스 주소만 할당되고 실제 데이터는 힙 영역에 할당된다.
 ARC로 메모리를 관리한다. <- 실제 데이터는 힙 영역에 할당되기 때문에,
 상속이 가능하다.
 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있다.
 deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있다.
 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 준다.(메모리가 복사됨)
 
 구조체
 중요 값 타입
 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당된다. -> 값 타입이므로 할당할 때마다 새 copy 버전이 생긴다.
 즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음(값 자체를 복사)
 */

//값 타입과 참조 타입의 차이
class SomeClass {
    var count: Int = 0
}

struct SomeStruct {
    var count: Int = 0
}

//같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 준다.(메모리가 복사됨) 확인
var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count


//즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음(값 자체를 복사) 확인
var struct1 = SomeStruct()
var struct2 = struct1

struct2.count = 3
struct2.count
struct1.count

