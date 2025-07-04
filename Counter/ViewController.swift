//
//  ViewController.swift
//  Counter
//
//  Created by Никита Сарапкин on 02.07.2025.
//

import UIKit

class ViewController: UIViewController {
    private var counter: Int = 0
    
    func currentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return dateFormatter.string(from: Date())
    }

    @IBOutlet weak var historyChanges: UITextView!
    @IBOutlet weak var resetNumber: UIButton!
    @IBOutlet weak var increaseNumber: UIButton!
    @IBOutlet weak var reduceNumber: UIButton!
    @IBOutlet weak var displayСounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func cancelInput(_ sender: Any) {
        counter = 0
        displayСounter.text = "Значение счётчика: \(counter)"
        historyChanges.text += "\n\(currentDate()) значение сброшено\n"
    }
    @IBAction func minusOne(_ sender: Any) {
        if counter == 0 {
            historyChanges.text += "\n\(currentDate()) попытка уменьшить значение счётчика ниже 0"
            return
        } else {
            counter -= 1
            displayСounter.text = "Значение счётчика: \(counter)"
            historyChanges.text += "\n\(currentDate()) значение изменено на -1\n"
        }
    }
    @IBAction func plusOne(_ sender: Any) {
        counter += 1
        displayСounter.text = "Значение счётчика: \(counter)"
        historyChanges.text += "\n\(currentDate()) значение изменено на +1\n"
    }
}

