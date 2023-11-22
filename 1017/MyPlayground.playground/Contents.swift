import UIKit

// 열거형 (p. 111)

/*enum Temperature{
    case hot, warm, cold
    
}

// P.113
func displayTempInfo(temp: Temperature){
    switch temp {
    case .hot:
            print("It is hot.")
    case .warm:
            print("It is warm.")
    case.cold where centigrade <= 0:
            print("Ice warning: \(centigrade) degrees." )
    case .cold:
            print("It is cold but not freezing.")
    }
}

displayTempInfo(temp: Temperature.hot)
print(Temperature.hot)

enum AnimalEnum {
    case dog
    case cat
    case duck
}

displayTempInfo(temp: Temperature.cold(centigrade: -10)) */


// 열거형을 사용하여 카드의 무늬와 숫자를 나타내는 타입을 정의하고,
// 카드 두 장을 비교하여 같은 무늬인지, 같은 숫자인지, 모두 같은지 또는 모두 다른지 출력하는 함수를 작성하세요.

// 무늬
enum Suit {
    case spade, heart, diamond, club
}

// 숫자
enum Rank {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
}

struct Card {
    var suit: Suit
    var rank: Rank
}

func compareCards(card1: Card, card2: Card){
    if card1.suit == card2.suit && card1.rank == card2.rank {
        print("두 카드는 모두 같습니다.")
    } else if card1.suit == card2.suit {
        print("두 카드는 같은 무늬 입니다.")
    } else if card1.rank == card2.rank {
        print("두 카드는 같은 숫자 입니다.")
    } else{
        print("두 카드는 모두 다릅니다.")
    }
}

// 예시:
// 카드 두 장을 생성합니다.
let card1 = Card(suit: .spade, rank: .ace)
let card2 = Card(suit: .diamond, rank: .ace)

// 카드 두 장을 비교합니다.
compareCards(card1: card1, card2: card2)  // 두 카드는 모두 다릅니다.

/** 비교 결과 4가지 경우
"두 카드는 모두 같습니다."
"두 카드는 같은 무늬입니다."
"두 카드는 같은 숫자입니다."
"두 카드는 모두 다릅니다."
*/





