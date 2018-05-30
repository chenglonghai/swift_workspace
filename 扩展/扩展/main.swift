//
//  main.swift
//  扩展
//
//  Created by longhai on 2018/3/26.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation
//使用扩展添加属性、方法、可变方法、构造器、下标、嵌套类型
/**
 [修饰符] extension 已有类型{
 //添加新功能
 }
 修饰符可以省略，private internal、public其中之一
 类型可以是枚举、结构体、类
 **/

//扩展添加3种属性：1.类型存储属性 2.实例计算属性 3.类型计算属性 方法:类方法和实例
//extension Array
//{
//    //定义可变方法，用于计算数组的交集
//    mutating func retianAll(array:[Any], compartor:(Any,Any)->Bool){
//        var temp  = [Any]();
//        for ele in self {
//
//            for target in array{
//
//                if compartor(ele,target){
//                    temp.append(ele)
//                    break;
//
//                }
//
//
//            }
//
//        }
//
//        self = temp as! Array<Any>;
//
//    }
//
//
//}
//
//var books = ["iOS","Android", "Swift", "Javar"];
//books.retianAll(["Android","iOS","C"],{
//    return $0 == $1
//})
//print(books)


