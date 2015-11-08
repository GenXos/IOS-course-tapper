//
//  ViewController.swift
//  Tapper
//
//  Created by Todd Fields on 2015-11-01.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  // Variables
  var maxTaps = 0
  var currentTaps = 0
  
  // Outlets
  @IBOutlet weak var logoImg: UIImageView!
  @IBOutlet weak var playBtn: UIButton!
  @IBOutlet weak var howManyTapsText: UITextField!

  @IBOutlet weak var coinImg: UIButton!
  @IBOutlet weak var tapsLbl: UILabel!

  @IBAction func onCoinTapped(sender: UIButton) {
    
    currentTaps++
    updateTapsLabel()
    if isGameOver() {
      
      restartGame()
    }
    
  }
  
  @IBAction func onPlayButtonPressed(sender: UIButton) {
   
    if howManyTapsText.text != nil && howManyTapsText.text != "" {
      logoImg.hidden = true;
      playBtn.hidden = true
      howManyTapsText.hidden = true
      
      coinImg.hidden = false
      tapsLbl.hidden = false
      
      maxTaps = Int(howManyTapsText.text!)!
      currentTaps = 0
      
      updateTapsLabel()
    }
  }
  
  func restartGame() {
    
    maxTaps = 0
    howManyTapsText.text = ""
    
    logoImg.hidden = false
    playBtn.hidden = false
    howManyTapsText.hidden = false
    
    coinImg.hidden = true
    tapsLbl.hidden = true
  }
  
  func isGameOver() -> Bool {
    
    if currentTaps >= maxTaps {
      return true
    } else {
      return false
    }
  }
  
  func updateTapsLabel() {
    
    tapsLbl.text = "\(currentTaps) Taps"
  }

}

