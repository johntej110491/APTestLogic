//
//  ViewController.swift
//  APTest
//
//  Created by user on 03/06/18.
//  Copyright © 2018 amitpatel.softech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //   chesBoard()
        load()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func load(){
        
        let n = 5
        var iCount: Int = 0
        for _ in 0..<n {
            iCount += 1
             for j in 1...n {
                if j <  iCount {
                    print("\(j) ", separator: "", terminator: "")
                    
                }else{
                      print("\(j)")
                    break;
                }
            }
        }
    }
    
    
        func pyramid(){
            
            let n = 5
            
            for i in 1...n {
                
                for _ in 0..<(n-i){
                    print(" ", separator: "", terminator: "")
                }
                
                for _ in 1...(2*i-1){
                    print("*", separator: "", terminator: "")
                }
                print("")
            }
    }
    
    func chesBoard(){
        let n = 8;
        
        //Top
        print("+", separator: "", terminator: "")
        for _ in 1...n {
            print("-", separator: "", terminator: "")
        }
        print("+")
        
        for i in 1...n {
            //left
            print("|", separator: "", terminator: "")

            for j  in 1...n {
                if i  % 2 ==    j % 2 {//Inner
                    print("#", separator: "", terminator: "")
                }else{
                    print(" ", separator: "", terminator: "")
                }
                
            }
            print("|")//Right
        }
        
        //Bottom
        print("+", separator: "", terminator: "")
        for _ in 1...n {
            print("-", separator: "", terminator: "")
        }
        print("+")
    }
    
}

