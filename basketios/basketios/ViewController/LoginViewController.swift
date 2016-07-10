//
//  LoginViewController.swift
//  basketios
//
//  Created by YuXiang on 6/19/16.
//  Copyright © 2016 YuXiang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func login(sender: UIButton) {
        var username = ""
        if usernameTextField.text == nil {
            usernameTextField.placeholder = "请输入用户名"
        }else {
            username = usernameTextField.text!
            if let password = passwordTextField.text {
                passwordTextField.placeholder = "请输入密码"
                if UserService.login(username: username, password: password) {
                    if let navigation = navigationController {
                        navigation.popToRootViewControllerAnimated(true)
                    }
                }else{
                    let alert = UIAlertView.init(title: "登录失败", message: "用户名不存在或密码错误", delegate: self, cancelButtonTitle: "重新登录")
                    alert.show()
                }
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
