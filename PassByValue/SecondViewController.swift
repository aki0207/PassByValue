import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    //ViewControllerから値を受け取る
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //viewWillは、viewが生成される前なので、
    //既にlabel.textが切り替わってるように見える
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //受け取った値を代入
        label.text = text
        
    }
    //viewDidの方だと、label.textの切り替わりが遅い
    //    override func viewDidAppear(_ animated: Bool) {
    //        super.viewDidAppear(animated)
    //
    //        label.text = text
    //
    //    }
    

    @IBAction func backButton () {
        dismiss(animated: true, completion: nil)
    }
    
}
