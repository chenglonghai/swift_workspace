//
//  main.swift
//  协议
//
//  Created by longhai on 2018/3/27.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation

/**语法格式
 【修饰符】 protocol 协议名:父协议1，父协2，...{
   //协议内容
 }
 private/interal/public
 
 1、Struct 结构体名：第一个协议，第二个协议...{
    //实现协议要求
 }
 2、 Class类名：SuperClass，第一个协议，第二个协议,...{
 }
 **/

protocol Strokable {
    var strokeWidth:Double{get set}
    
}
enum Color {
    case Red, Green,Blue, Yellow
}

protocol Fullable {
    var fullColor:Color?{set get}
}

protocol HasArea:Fullable,Strokable {
    var area:Double{get}
}
protocol Mathable {
    static var pi:Double {get}
    static var e :Double {get}
}
//让Rect实现两个协议
struct Rect:HasArea, Mathable{
    var width:Double;
    var height:Double;
    init(width:Double, height:Double) {
        self.width = width;
        self.height = height;
    }
    var fullColor:Color?
    var strokeWidth:Double = 0.0;
    
    
    var area: Double{
        get{
            return width*width;
        }
    }
    
    static var pi:Double = 3.1415926
    static var e:Double = 2.17;
    
    
    
}





