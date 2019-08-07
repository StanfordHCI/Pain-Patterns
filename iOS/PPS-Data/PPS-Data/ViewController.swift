//
//  ViewController.swift
//  PPS-Data
//
//  Created by Joshua Ren on 2019-06-24.
//

import UIKit
import ResearchKit
import SafariServices

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Hides the default parent level navigation bar upon navigating to a child screen
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     * Action: openEmail
     * Description: Opens the user's default email client, and an email within
     * the client addressed to the email address below.
     */
    @IBAction func openEmail(_ sender: Any) {
        let email = "renj@stanford.edu" // Email to be contacted
        if let url = URL(string: "mailto:\(email)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    /*
     * Function: openSurvey
     * Description: uses a SFSafariViewController to open a Qualtrics-based ESM.
     */
    @IBAction func openSurvey(_ sender: Any) {
        let urlString = NSURL(string: "https://stanforduniversity.qualtrics.com/jfe/form/SV_0P1d0g3k8oB6UV7")
        let svc = SFSafariViewController(url: urlString! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    /*
     * Function: openDiary
     * Description: uses a SFSafariViewController to open a Qualtrics-based ESM.
     */
    @IBAction func openDiary(_ sender: Any) {
        let urlString = NSURL(string: "https://stanforduniversity.qualtrics.com/jfe/form/SV_etIfLk7J9jTgIIJ")
        let svc = SFSafariViewController(url: urlString! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    
}