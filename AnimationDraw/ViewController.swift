
import UIKit

class ViewController: UIViewController {
    
    var myView = UIView()
    var myX = 0
    var myY = 0
    var i = 0
//    let myMax = UIScreen()
    
    var plusX = 1
    var plusY = 1
    
    var timer = Timer()
    
    let rocketView = UIView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createTimer()

        
    }
    
    func createTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(moveView), userInfo: nil, repeats: true)
    }
    
    @objc func moveView() {
        //self.i += 1
        if myX > 350 {
            plusX = -1
        } else if myX < 1 {
            plusX = 1
        }
        
        if plusX > 0 {
            myX += 1
        } else {
            myX -= 1
        }
        
        if myY > 600 {
            plusY = -1
        } else if myY < 1 {
            plusY = 1
        }
        
        if plusY > 0 {
            myY += 1
        } else {
            myY -= 1
        }
        
        
        createView(x: myX, y: myY)
        self.view.addSubview(myView)
        
        createRocketView()
        self.view.addSubview(rocketView)
        
        if i == 400 {
            timer.invalidate()
        }
        
        
        
    }
    
    
    func createView(x: Int, y: Int) {
        myView.frame = CGRect(x: x, y: y, width: 22, height: 22)
        myView.backgroundColor = .red
        myView.layer.cornerRadius = 12
        
    }
    
    func createRocketView() {
        
        rocketView.frame = CGRect(x: 350, y: 400, width: 22, height: 200)
        rocketView.backgroundColor = .green
        
    }


}

