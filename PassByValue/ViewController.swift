import UIKit

class ViewController: UIViewController {
    
    //値を渡す
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loadinvarhe view, typically from a nib.
    }
    
    @IBAction func first(_ sender: Any) {
        handOver("first")
        performSegue(withIdentifier: "perform", sender: nil)
    }
    
    @IBAction func second(_ sender: Any) {
        handOver("second")
        performSegue(withIdentifier: "perform", sender: nil)
    }
    
    @IBAction func third(_ sender: Any) {
        handOver("third")
        performSegue(withIdentifier: "perform", sender: nil)
    }
    
    //引数をtextに渡すだけ
    func handOver(_ word:String) {
        text = word
    }
    
    //遷移する際の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "perform" {
            let svc = segue.destination as! SecondViewController
            svc.text = text
        }
    }
    
}
