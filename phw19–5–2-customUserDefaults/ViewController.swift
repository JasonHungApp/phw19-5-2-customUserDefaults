//
//  ViewController.swift
//  phw19–5–2-customUserDefaults
//
//  Created by jasonhung on 2024/1/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 獲取應用程序的沙盒目錄
        if let appSupportDir = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first {
                    
              // 拼接 Preferences 子目錄
              let preferencesDir = appSupportDir.appendingPathComponent("Preferences")
                    
              // 檢查 Preferences 目錄是否存在
              if FileManager.default.fileExists(atPath: preferencesDir.path) {
                    print("UserDefaults 存儲位置：\(preferencesDir.path)")
              } else {
                    print("UserDefaults 存儲位置未找到")
              }
         } else {
            print("無法獲取應用程序沙盒目錄")
         }
        
        UserDefaults.standard.set("testValue", forKey: "testkey")
        
        let shoppingCartDefaults = UserDefaults(suiteName: "com.example.app.shoppingCart")!
        shoppingCartDefaults.set("testValue", forKey: "testkey")

        let userConfigDefaults = UserDefaults(suiteName: "com.example.app.userConfig")!
        userConfigDefaults.set("testValue", forKey: "testkey")

        let productListDefaults = UserDefaults(suiteName: "com.example.app.productList")!
        productListDefaults.set("testValue", forKey: "testkey")

        
        let appearanceSettings = UserDefaults(suiteName: "com.example.app.appearanceSettings")!
        appearanceSettings.set("testValue", forKey: "testkey")

        let subtitleSettings = UserDefaults(suiteName: "com.example.app.subtitleSettings")!
        subtitleSettings.set("testValue", forKey: "testkey")

        let soundSettings = UserDefaults(suiteName: "com.example.app.soundSettings")!
        soundSettings.set("testValue", forKey: "testkey")

        
        let user1Defaults = UserDefaults(suiteName: "com.example.app.user1")!
        user1Defaults.set("testValue", forKey: "testkey")

        let user2Defaults = UserDefaults(suiteName: "com.example.app.user2")!
        user2Defaults.set("testValue", forKey: "testkey")

        
        let testDefaults = UserDefaults(suiteName: "com.example.app.test")!
        testDefaults.set("testValue", forKey: "testkey")

        
        let cityPreferenceDefaults = UserDefaults(suiteName: "com.example.app.cityPreference")!
        cityPreferenceDefaults.set("testValue", forKey: "testkey")

        
   
        
    }


}

