//
//  main.swift
//  闭包
//
//  Created by longhai on 2018/3/17.
//  Copyright © 2018年 猜猜猜. All rights reserved.
//

import Foundation

print("闭包")
/*****嵌套函数*****/
//func geAtMathFunc(type:String) ->(Int)->Int{
//    func squre(num:Int)->Int{
//        return num * num;
//    }
//    func cube(num:Int)->Int{
//        return num*num*num;
//    }
//    switch (type) {
//    case "squre":
//      return squre;
//     default:
//        return cube;
//    }
//
//}
//var myFunc = geAtMathFunc(type: "xx");
//print(myFunc(12));
/*********闭包**********/

//{(形参列表) -> 返回值类型 in
//    可执行表达式
//}

//func geAtMathFunc(type:String) ->(Int)->Int{
//
//    switch (type) {
//    case "squre":
//      return {
//        (num:Int)-> Int in
//        return num * num ;
//      };
//    default:
//        return {
//        (num:Int)-> Int in
//        return num * num * num;
//    }
//    }
//
//}
//var myFunc = geAtMathFunc(type: "xx");
//print(myFunc(12));


//利用上下文推断类型
//var squre:(Int)->Int = {(num) in return num * num}
//print(squre(10))

//var squre:(Int)->Int = {num in return num * num}
//print(squre(10))
//省略形参名，通过$0,$1...来引用第一个/第二个参数

var squre:(Int) ->Int = { $0*$0};
print(squre(12))











