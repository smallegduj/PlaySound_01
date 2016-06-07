import UIKit
import AVFoundation

class ViewController: UIViewController {

    // 設置一個變數，將它指定為AVAudioPlayer的型別
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            // 設置一個變數來代表音效的儲存位置
            let filePath = NSBundle.mainBundle().pathForResource("airplane1", ofType: "mp3")
            // 將指定為AVAudioPlayer型別的變數與要播放的音效做關聯
            audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: filePath!))
        } catch {
            print("Error")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playButton(sender: AnyObject) {
        audioPlayer.play()
    }

}

