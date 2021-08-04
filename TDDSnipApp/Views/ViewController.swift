//
//  ViewController.swift
//  TDDSnipApp
//
//  Created by Ramata N’diaye on 7/26/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().delegate = self

        // Do any additional setup after loading the view.
    }


}
extension ViewController: UNUserNotificationCenterDelegate {
func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
print(notification.request.content.body);
completionHandler([.alert, .sound])
}}
