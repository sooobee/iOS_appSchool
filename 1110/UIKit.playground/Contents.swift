import Foundation
import UIKit


let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
myLabel.backgroundColor = UIColor.red

myLabel.text = "Hello, Swift"
myLabel.font = UIFont(name: "Georgia", size:24)
myLabel

let image = UIImage(named: "jjanggu")


let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
container.backgroundColor = UIColor.white

let square = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
square.backgroundColor = UIColor.blue

container.addSubview(square)

UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.red
    
    let rotation = CGAffineTransform(rotationAngle: 3.14)
    square.transform = rotation
    
})

PlaygroundPage.current.liveView = container

