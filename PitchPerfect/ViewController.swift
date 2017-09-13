//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Thieu Van Thien on 9/12/17.
//  Copyright © 2017 TVSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(_ sender: UIButton) {
       // print("record button was press")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.isEnabled = true
        recordingButton.isEnabled = false
    }
    @IBAction func stopRecording(_ sender: Any) {
        //print("stop recording button was press")
        recordingLabel.text = "Tap to record"
        stopRecordingButton.isEnabled = false
        recordingButton.isEnabled = true
        
    }
}

