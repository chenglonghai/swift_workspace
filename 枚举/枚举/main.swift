//
//  main.swift
//  枚举
//
//  Created by longhai on 2018/3/19.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation

print("Hello, World!")
//Swift定义枚举的语法格式
//enum 枚举名{
//    //使用case关键字列出所有枚举值
//    //枚举的其他成员
//
//}
//定义枚举
enum Season {
    case Spring
    case Summer
    case Fall
    case Winner
}
//使用一个case列举所有的值
enum Season2 {
    case Spring, Summer,Fall,Winter
}
//使用枚举声明变量
var weather:Season
weather = Season.Spring;
print(weather);

//枚举值与switch语句
var chooseDay = Season.Fall;
//使用switch语句判断枚举值
switch (chooseDay){
    case Season.Spring:
    print("春天");
    case Season.Summer:
    print("夏天");
    case Season.Fall:
    print("秋天");
    case Season.Winner:
    print("冬天");
    default:
    print("啥也不是")
    
}

//原始值
//enum 枚举名:原始值类型 {
//    case  枚举值 = 原始值
//}
enum WeekDay:Int {
    case Mon,Tur,Wen = 3, Thur, Fri, Sat, Sun
}
enum Season3: Character {
    case Spring = "春"
    case Sunmmer = "夏"
    case Fall = "秋"
    case Winter = "冬"
}

//获取原始值 rawValue
print(WeekDay.Mon.rawValue);
print(Season3.Fall.rawValue)
var myseason = Season3(rawValue: "春");
print(myseason!)
if myseason != nil{
    switch(myseason!){
    case Season3.Spring:
        print("春天。。。");
    case Season3.Sunmmer:
        print("夏天...")
    default:
        print("未知.....")
    }
    
    
}
//关联值
enum Planet {
    case Earth(weight:Double, name:String)
    case Mars(desity:Double, name:String)
}
var p1 = Planet.Earth(weight: 100.0, name: "地球");
var p2 = Planet.Mars(desity: 50.0, name:"火星");
switch (p2){
case Planet.Earth(var weight,var name):
    print("此行星的名字为:\(name),\(weight)")
case let Planet.Mars( desity:d, name:n):
    print("这个是:\(n),\(d)")
    
}




