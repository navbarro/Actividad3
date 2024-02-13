import UIKit

class ViewController: UIViewController {
    
 
    @IBAction func numero1(_ sender: UISlider) {
        texto1.text = String(numero1.value)
                picachu.alpha = CGFloat(numero1.value)
    }
    
    @IBAction func numero2(_ sender: UISlider) {
        texto2.text = String(numero2.value)
        colorUpdater()
    }
    
    @IBAction func numero3(_ sender: UISlider) {
        texto3.text = String(numero3.value)
        colorUpdater()
    }
    
    @IBAction func numero4(_ sender: UISlider) {
        texto4.text = String(numero4.value)
        colorUpdater()
    }
    
    @IBOutlet weak var numero1: UISlider!
    
    @IBOutlet weak var numero2: UISlider!
    
    @IBOutlet weak var numero3: UISlider!
    
    @IBOutlet weak var numero4: UISlider!
    
    
    @IBOutlet weak var texto1: UILabel!
    
    
    @IBOutlet weak var texto2: UILabel!
    
    @IBOutlet weak var texto3: UILabel!
    
    @IBOutlet weak var texto4: UILabel!
    
    @IBOutlet weak var picachu: UIImageView!
    
    func colorUpdater() -> Void {
            let r = CGFloat (numero2.value)
            let g = CGFloat (numero3.value)
            let b = CGFloat (numero4.value)
            let a = CGFloat (numero1.value)
            picachu.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: a)
        }
    func Slider_Min_Max ()
    -> Void {
        numero2.value = 0.0
        numero3.value = 0.0
        numero4.value = 0.0
        numero1.value = 0.0
        numero2.minimumValue = 0.0
        numero2.maximumValue = 1.0
        numero3.minimumValue = 0.0
        numero3.maximumValue = 1.0
        numero4.minimumValue = 0.0
        numero4.maximumValue = 1.0
        numero1.minimumValue = 0.0
        numero1.maximumValue = 1.0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

