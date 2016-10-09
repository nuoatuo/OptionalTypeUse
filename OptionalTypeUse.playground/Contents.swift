//: Playground - noun: a place where people can play

import UIKit
//========可选类型的使用========
/**
 可选类型的介绍
 注意:
    可选类型是swift中较难理解的一个知识点
    暂时先了解,多利用Xcode的提示来使用
    随着学习的深入,慢慢理解其中的原理和好处
 概念:
    在OC开发中,如果一个变量暂停不使用,可以赋值为0(基本属性类型)或者赋值为空(对象类型)
    在swift开发中,nil也是一个特殊的类型.因为和真实的类型不匹配是不能赋值的(swift是强类型语言)
    但是开发中赋值nil,在所难免.因此推出了可选类型
 可选类型的取值:
    空值
    有值
 */

/**
 总结
 1.定义可选类型
        1>Optional<String> 
        2>String?
 2.给可选类型赋值
    1>Optional("why")
    2>"why"
 3.从可选类型中取值:
    name!  ---->强制解包
 4.注意:强制解包非常危险，所以先判断，再解包
 5.语法：可选绑定
    if let name = name {
        print(name)
    }
 */

/**
 class Person {
 var name : String = nil
 }
 
 nil是一个特殊的类型
 在开发中，只有可选类型才能赋值为nil，其他类型都不能赋值为nil
 */
//var str : String = "why"

/*
//1.定义可选类型:泛型集合
//1>定义方式一:
//var name: Optional<String> = nil
//2>定义方式二:语法糖
var name: String? = nil

//2.给可选类型赋值
//2.1赋值方式一:
name = Optional("why")
//2.2赋值方式二:
name = "why"

//3.取出可选类型中的值
print(name)
//从可选类型中取值: "可选类型+!"  ---->强制解包
//print(name!)

//4.注意:强制解包非常危险，如果可选类型为nil，那么强制解包就会崩溃
if name != nil {
    print(name!)
}

//5.可选绑定(固定格式):该语法用于可选类型，使我们使用起来可选类型更加方便
//1>判断name是否有值，如果没有值，则直接不执行{}
//2>如果name有值，那么系统会自动对可选类型进行解包，并且将解包后的结果赋值给前面的tempName
if let tempName = name {
    print(tempName)
}

if let name = name {
    print(name)
}
*/

//========可选类型的应用========
/**
 只要一个类型有可能为nil，那么这个标识符的类型一定是一个可选类型
 */

//1.将字符串转成Int类型
let m : Double = 2.44
let n = Int(m)

let str: String = "123"
let num = Int(str) //123/nil
print(num)

//2.根据文件名称:123.plist,获取该文件的路径
let path : String? = Bundle.main.path(forResource: "123.plist", ofType: nil)   //string/nil

//3.将一个字符串转成NSURL
//如果字符串中有中文，那么就是转化不成功，返回结果nil
//let url: NSURL? = NSURL(string: "http://www.baidu.com")
let url = URL(string: "http://www.baidu.com")

//4.从字典中取出元素
let dict : [String : Any] = ["name":"why", "age":18]
let value: Any? = dict["name"]  //Any/nil





