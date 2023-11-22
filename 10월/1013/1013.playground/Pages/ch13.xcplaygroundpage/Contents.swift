import Foundation

// 프로퍼티 래퍼 p. 115
struct Address {
    private var cityname = ""
    
    var city: String{
        get {cityname}
        set {cityname = newValue.uppercased()}
    }
}

var address = Address()
address.city = "London"

print( address.city )

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String{
        get {value}
        set { value = newValue.uppercased()}
    }
    
    init(wrappedValue initialValue: String){
        self.wrappedValue = initialValue
    }
}


struct Contact {
    @FixCase var name:String
    @FixCase var city:String
}

var contract = Contact(name: "park", city: "Seoul")
print(contract.name, contract.city
)
