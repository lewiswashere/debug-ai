//
//  ViewController.swift
//  debug-ai
//
//  Created by Lewis Gardner on 7/9/18.
//  Copyright © 2018 Thought Experiment, Inc. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
import Vision

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeSession()
    }

    func initializeSession() {
        let session = AVCaptureSession()
        let devices = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaType.video, position: .back).devices
        do {
            if let device = devices.first {
                session.addInput(try AVCaptureDeviceInput(device: device))
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

