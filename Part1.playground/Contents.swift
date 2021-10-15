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



//17. 상속
//부모가 자식에게 재산을 물려주는 행위
//클래스가 다른 클래스로부터 특성을 상속하고 받는것
//스위프트에서 상속은 클래스만의 특징
//부모 클래스의 메서드, 프로퍼티, 서브스크립트를 호출할 수 있다.
//오버라이딩을 통해 메서드, 프로퍼티, 서브스크립트를 자신만의 내용으로 만들 수 있다.
//자식 클래스에서 프로퍼티 감시자를 구현할 수 있다.

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("Speaker on")
    }
    
}

class Bicycle: Vehicle { //부모 클래스의 프로퍼티, 메서드, 서브스크립를 모두 사용할 수 있다.
    var hasBasket = false
    
}

var bicycle = Bicycle()
bicycle.currentSpeed //부모 클래스의 프로퍼티 사용

class Train: Vehicle {
    override func makeNoise() {
        //부모 클래스의 특성을 활용하고 싶은 때에는 super라는 키워드를 사용한다.
        super.makeNoise() //부모 클래스의 메서드를 실행
        print("Choo! Choo!")
    }
}

let train = Train()
train.makeNoise()

//프로퍼티를 오버라이드, 즉 재정의한다는 것은 프로퍼티의 getter, setter, Observers(감시자)를 재정의한다는 말이다.

class Car: Vehicle {
    var gear = 1
    //프로퍼티 오버라이드
    override var description: String {
        return super.description + "in gear \(gear)"
    }
    
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

//프로퍼티 Observers 감시자 오버라이드
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10 ) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutimaticCar: \(automatic.description)")

//final 키워드를 메서드, 프로퍼티 앞에 작성하면 오버라이드를 막을 수 있다.
//클래스 앞에 final 키워드를 사용하면 상속을 막을 수 있다.


//18. 타입 캐스팅
/*
 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 클래스나 서브 클래스로 취급하는 방법
 인스턴스의 타입 확인, 인스턴스를 슈퍼클래스 또는 서브 클래스처럼 다루기 위해 사용
 is, as 연산자 값의 타입을 확인하거나 다른 타입으로 전환하는데 사용.
 */

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name:String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "기생충", director: "봉준호"), Song(name: "Butter", artist: "BTS"),
    Movie(name: "올드보이", director: "박찬욱"),
    Song(name: "WonserWall", artist: "Oasis"),
    Song(name: "Rain", artist: "이적")]
//라이브러리 배열은 타입 추론의 의해 Movie, Song 클래스의 부모 클래스인 MediaItem이다.

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie { //타입 확인
        movieCount += 1
    } else if item is Song {//타입 확인
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

//형을 변환할 수 있는 다운 캐스팅
/*
부모 클래스 타입의 배열을 다운 캐스팅을 이용하여 자식 클래스들을 참조할 수 있다. as? 또는 as!로 형변환 가능
 
 as? : 조건부 형식인 as?는 다운 캐스팅하려는 값이 옵셔널값으로 반환된다. 옵셔널 값이므로 if let 구문으로 값을 꺼내온다. (욥셔널 바인딩)
 as! :  강제형식인 as!는 강제로 언래핑하여 값을 반환한다. -> 성공할거라 확신이 들 떼 사용.
*/
for item in library {
    if let movie = item as? Movie {//Movie 타입으로 다운 캐스팅될 수 있으면 다음 구문 실행
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}



//19. assert와 guard
/*
 assert
 - 특정 조건을 체크하고, 조건이 성립되지 않으면 에러와 함께 메세지를 출력하게 할 수 있는 함수
 -assert함수는 디버깅 모드에서만 동작하고 주로 디버깅 중 조건의 검증을 위하여 사용한다.
 guard문
 -뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정하는 것
 -guard문에 주어진 조건문이 거짓일 때 구문이 실행된다.
 주로 얼리엣이라 하여 조건이 맞지 않으면 이후 문장을 실행하지 않도록 방어코드로 사용한다.
 */

//assert
var value2 = 0
assert(value2 == 0)

//value2 = 2
//assert(value == 0, "값이 0이 아닙니다.") //조건에 맞지 않으면 에러와 함께 메세지 출력


//guard문 - 보통 잘못된 값이 함수에 들어가는 것을 방어하기 위해 사용
//함수 내부에서 사용하도록 만들어진 구문
/*
 guard 조건 else {
 //조건이 false이면 else 구문이 실행되고 return or throw or break을 통해 이 후 코드를 실행하지 않도록 한다.
 }
 */
func guardTest(value: Int) {
    guard value == 0 else {
        return
    }
    //value가 0일 때만 print문 출력
    print("안녕하세요. guardTest입니다.")
}

guardTest(value: 2)//value가 0이 아니기 떄문에 출력 안 됨
guardTest(value: 0)

//guard문을 이용해 옵셔널 바인딩을 할 수 있다.
//guard문을 사용하면 옵셔널바인딩된 상수를 조건문 밖에서도 사용할 수 있다.
func guardOptionalBinding(value: Int?) {
    guard let value = value  else {// value인수에 값이 있다면 value상수에 할당되도록한다. value인수가 nil이라면 else구문 실행
        return
    }
    //value가 0일 때만 print문 출력
    print("안녕하세요. \(value)입니다.")
}

guardOptionalBinding(value: 2)
guardOptionalBinding(value: nil)


//20. 프로토콜
/*
 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구하상 등의 청사진
 구조체 클래스 열거형은 프로토콜을 채택하여 프로토콜이 요구하는 사항을 구현할 수 있다.
 프로토콜의 요구사항을 모두 충족하면 해당 타입이 채택한 프로토콜을 준수한다고 말할 수 있다.
 */

protocol SomeProtocol {
    
}
protocol SomeProtocol2 {
    
}

struct SoneStructure: SomeProtocol, SomeProtocol2 { //프로토콜 채택하기
    
}
/*
class SomeClass : 부모클래스, 프로토콜1, 프로토콜2 {
}

 프로토콜은 특정 역할을 수행하는 메서드, 프로퍼티, 기타 요구사항 등에 청사진 요구, 채택한 타입에게 요구사항을 준수하라고 요청
 */
protocol FirstProtocol {
    //프로퍼티의 요구사항으로 이름과 타입, get set을 설정할 수 있다.
    var name: Int {get set}
    var age:Int {get}
}

protocol AnotherProtocol {
    //타입 프로퍼티를 요구하려면 static 키워드 필수
    static var someTypeProperty: Int {get set}
}

protocol FullyNames {
    var fullName: String {get set}
    func printFullName(name: String)
}

struct Person: FullyNames {
    var fullName: String
    
    func printFullName(name: String) {
        print(fullName)
    }
}

protocol SomeProtocol3 {
    //프로토콜이 요구사항으로 메서드 생성 시 메서드의 매개변수를 설정해주어야 하는데, default 값은 지정할 수 없다.
    func someTypeMethode()
}

//이니셜 라이저 요구사항
//프로토콜은 생성자도 요구할 수 있다.
protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5 {
    init()
}

class SomeClass2: SomeProtocol5 {
    // 클래스에서 프로토콜이 요구한 생성자를 구현하려면 required 키워드가 필요하다.
    //만약 클래스 자체가 상속받을 수 없는 final 클래스라면 required 키워드가 필요없다.
    //구조체에서 생성자 요구사항을 준수할 때는 required 키워드가 필요없다.
    //즉 상속 가능 여부에 따라 required 필요 여부가 달라진다.
    required init() {
        
    }
}

//21. 익스텐션 extension
/*
 스위프트의 강력한 기능
 기존의 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가하는 기능
 새로운 기능을 추가할 수는 있지만, 기존의 기능을 오버라이드(재정의)할 수 없다.
 
 익스텐션이 타입에 추가할 수 있는 기능
 - 연산 타입 프로퍼티/ 연산 인스턴스 프로퍼티
 - 타입 메서드/ 인스턴스 메서드
 -이니셜라이저
 -서브스크립트
 -중첩타입
 -특정 프로토콜을 준수할 수 있도록 기능 추가
 */

//Int형 타입의 연산 프로퍼티를 추가해 기능 확장
//extension은 연산 프로퍼티는 추가할 수 있지만, 저장프로퍼티는 추가할 수 없다.
//타입에 정의되어있는 기존의 프로퍼티의 프로퍼티 감시자를 추가할 수 없다.
extension Int {
    var isEven: Bool{
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

var number2 = 3
number2.isOdd
number2.isEven


//extensin을 통해 타입에 메서드 추가하기
extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string2 = "0"
string2.convertToInt()



//22. 열거형 enumeration
/*
 연관성이 있는 값을 모아놓은 것을 말한다.
 열거형의 각 항목은 그 자체로 하나의 값이다.
 자체로도 하나의 값이지만 원시값을 가질 수 있다.
 열거형은 연관값도 가질 수 있다. - 열거형 내 항목이 자신과 연관된 값을 가질 수 있다.
 */

//열거형은 하나의 타입으로 사용할 수 있다.
enum CompassPoint: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east
direction = .west //direction 변수가 CompassPoint로 타입추론되었기 때문에 이러한 방식으로 사용 가능

//열거형은 switch 구문과 사용하면 다양하게 활용할 수 있다.
switch direction {
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

//원시값을 가지고 열거형을 반환하게 할 수도 있다.
//열거형 인스턴스를 생성할 때 매개변수로 원시값을 넘겨주면 된다.
 let direction2 = CompassPoint(rawValue: "남") //direction2의 열거형 항목으로 "남" 인수값과 원시값이 대응하는 south 항목이 할당된다.


//열거형의 연관값
enum PhoneError {
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")
//연관값을 추출하려면 if case..? 또는 switch문 사용
switch error {
case .batteryLow(let message): //연관값을 넘겨받을 수 있는 상수 선언
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}


//23. 옵셔널 체이닝
/*
 옵셔널에 속해 nil일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정
  옵셔널에 값이 있다면 프로퍼티, 메서드 등을 호출하고, 옵셔널이 nil이라면 nil을 반환한다.
 */

struct Developer {
    var name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

var developer = Developer(name: "han")
var company = Company(name: "Gunter", developer: developer)
print(company.developer)
print(company.developer?.name) //?로 옵셔널 체이닝 - Optional로 값이 감싸진 채로 있다 -> 옵셔널 바인딩을 통해 값 추출 가능
print(company.developer!.name) //!로 옵셔널 체이닝 - 강제 추출된다

//이렇게 내부 프로퍼티를 접근할 때, 옵셔널 바인딩 없이 옵셔널 체이닝을 사용하여 쉽게 값에 접근할 수 있다.



//24. try-catch
/*
 에러 처리란?
 프로그램 내에서 에러가 발생한 상황에 대응하고 이를 복구하는 과정
 스위프트에서 런타임 중 에러가 발생한 경우 이를 처리하기 위해
 발생(throwing), 감지(catching), 전파(propagating), 조작(manipulating) 을 지원하는 일급(?) 클래스를 제공한다.
 
 오류 처리 기능을 통해 이러 상황들을 구별하여 프로그램 자체적으로 오류를 해결할 수도 있고, 사용자에게 어떤 오류가 발생했는지 알려줄 수도 있다.
 */
// 스위프트에서 에러는 Error 프로토콜을 따르는 타입의 값으로 표현된다.
//Error 프로토콜은 요구사항이 없는 빈 프로토콜이지만 에러를 표현하기 위해서 채택해야한다.
//스위프트의 열거형은 오류 원인을 나누고, 해당 오류에 대한 특성에 대한 추가 정보를 전달하는모델을 만드는데에 적합하다

enum PhoneError2: Error {
    case unkown
    case batteryLow(batteryLevel: Int)
}

//throw PhoneError2.batteryLow(batteryLevel: 20) //throw 구문을 통해서 에러가 발생할 것 같은 부분에 에러를 던져준다.

//던져진 오류를 처리하기 위한 코드를 작성해야한다. 던져진 오류가 무엇인지 판단하여 다른 방법으로 문제를 해야해 본다던지, 사용자에게 오류를 알리는 등의 코드를 작성해야한다.

/*
 스위프트에서 오류를 처리하는 4가지 방법
 1. 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파
 2. do-catch구문을 이용해 오류 처리
 3. 옵셔널 값으로 오류 처리
 4. 오류가 발생하지 않을 것이라 확신하기
 */

//1. 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파
func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    //false일 경우 else 구문 실행, 함수 조기 종료
    guard batteryLevel != -1 else {throw PhoneError2.unkown}
    guard batteryLevel > 20 else {throw PhoneError2.batteryLow(batteryLevel: 20)}
    
    //두 guard문이 true여야 아래 문장 실행된다.
    return "배터리 상태가 양호합니다."
}

//이 메서드를 사용하려면 오류를 발생할 수도 있기 때문에 do-catch 구문이나 try?, try!를 사용하여 오류를 처리할 수 있어야 한다.

//(1) do-catch 구문
do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError2.unkown {
    print("알 수 없는 에러")
} catch PhoneError2.batteryLow(let baterryLevel) {//연관값을 상수로 전달되게 한다.
    print("배터리 부족: \(baterryLevel)%")
} catch { //catch 뒤에 오류의 종류를 명시하지 않아도 코드블록을 생성하며 블록 내부에 암시적으로 error라는 이름의 지역상수가 오류 내용을 담아 들어오게 된다.
    print("그 외 오류 발생: \(error)")
}

//(2) try?
//오류를 옵셔널 값으로 변환하여 처리할 수 있다.
//try ? 구문을 통해 동작하던 코드가 오류를 던지면 그 코드의 반환값은 nil이 된다.
//만약 오류가 나지 않으면 Optional 값이 반환된다.
let status1 = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status1)
let status2 = try? checkPhoneBatteryStatus(batteryLevel: 20)
print(status2)


//(3) try!
//에러를 던져주지 않은 것이라 확신할 때 사용
let status3 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status3)


//25. 클로저
/*
 참조타입이고, 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급 객체의 역할을 할 수 있다. -> (나)익명함수도 함수이기 때문
 일급객체란?
 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수도 있다.
 
 클로저는 Names Closure, Unnames Closure 둘다를 말한다. 하지만 주로 Unnamed Closure, 즉 익명 함수를 뜻한다.
 {(매개변수) -> 리턴 타입 in //클로저 헤드
    실행 구문 //클로저 바디
 }
 
 전달 인자 레이블은 사용하지 않는다.
 */

let hello2 = {()-> () in
    print("Hello")
}

hello2()

let hello3 = {(name: String) -> String in
    return "Hello \(name)"
}

hello3("Renee")

//매개변수가 closure인 함수 생성
func doSomething(closure: () -> ()) {
    closure()
}

//매개변수가 closure인 함수 호출
doSomething(closure: { () -> () in
    print("hello")
})

//반환 값이 closure인 함수 생성
func doSometing2 () -> () -> () {
    return {() -> () in
        print("Hello doSometing2")
    }
}
//반환 값이 closure인 함수 호출
doSometing2()()

//후행 클로져
doSomething {
    print("후행 클로저")
}

//다중 후행 클로저
func doSomething2(success: () -> (), fail: () -> ()) {
    
}

doSomething2 {
    print("성공")
} fail: {
    print("실패")
}


//클로저 표현 간소화 -> 문법을 통해 코드를 단순하게 표현 가능

func doSomething3(closure: (Int, Int, Int)-> Int) {
    closure(1, 2, 3)
}

//표현 간소화 없이 작성
doSomething3(closure: {(a, b, c) in
    return a+b+c
})

//파라미터(매개변수)의 데이터 타입을 생략할 수 있다. 그리고 타입 유추를 통해 리턴 타입도 생략할 수 있다.
//약식 인수($)를 사용하여 매개변수 이름을 대신할 수 있다.
doSomething3(closure: {
    return $0+$1+$2
})

//단일 리턴문만 남는다면 return 키워드도 생략할 수 있다.
doSomething3(closure: {
    $0+$1+$2
})

//후행 클로저 형식 사용가능
doSomething3(){
    $0+$1+$2
}

//단 하나의 클로저만 매개변수로 전달하는 경우 소괄호를 생략할 수 있다.
doSomething3 {
    $0+$1+$2
}



//26. 고차함수
/*
 다른 함수를 전달 인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수
 스위프트에서 함수는 일급객체이기때문에 함수의 매개변수, 반환값으로 사용될 수 있다
 map, filter, reduce 모두 컬렉션(Collection) 타입에 구현되어있다.
 */

//map
//컨테이너 내부에 기존 데이터를 변형하여 새로운 컨테이너를 만든다.
let numberArray = [0,1,2,3] //컨테이너
let mapArray = numberArray.map({(number) -> Int in
    //numberArray 내부 데이터 변형하여 새로운 컨테이너 mapArray를 만든다.
    return number * 2
})
print("map \(mapArray)")

//filter
//컨테이너 내부의 값을 조건에 맞게 걸러 새 컨테이너를 추출한다.
let intArray = [10, 5, 20, 13, 4]
let filterArray = intArray.filter{ $0 > 5}
print("filter \(filterArray)")

//reduce
//컨테이너 내부의 요소들을 하나로 통합시켜준다
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0) { //첫번때 매개변수 initialResult(초기값) 0 설정
    (result: Int, element: Int) -> Int in //result 매개변수(첫번째 매개변수)는 누적값을 뜻한다.
    print("\(result) + \(element)")
    return result + element
}

print("reduce \(reduceResult)")

