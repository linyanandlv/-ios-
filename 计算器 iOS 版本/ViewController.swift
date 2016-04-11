//
//  ViewController.swift
/*
calculation 计算
Calculator 计算器
Displaycache 显示缓存
cache 缓存
evalution 求值
click 点击
number 数字
Lastnumber 前一个数字
temporary 临时
result 结果
screen 屏幕
point 小数点
olgorithmjia 算法加
olgorithmjian 算法减
olgorithmcheng 算法乘
olgorithmchu 算法除
olgorithmpingfang 算法平方
olgorithmzhishumi 算法指数幂
Resetall 重置所有
Reseynow 重置当前
equalsign 等号
yunsuanresult 运算结果
*/


import UIKit

class ViewController: UIViewController {
    
    
    var Calculator:calculation= calculation()
    var Displaycache:String = ""
    var cache  = 0.0
    var cache 2:Double?
    
     @IBOutlet weak var screen:UITextField!
    
    @IBAction func number0(sender: AnyObject) {
        click ("0")
    }
    @IBAction func number1(sender: AnyObject) {
        click ("1")
    }
    @IBAction func number2(sender: AnyObject) {
        click ("2")
    }
    @IBAction func number3(sender: AnyObject) {
        click ("3")
    }
    @IBAction func number4(sender: AnyObject) {
        click ("4")
    }
    @IBAction func number5(sender: AnyObject) {
        click ("5")
    }
    @IBAction func number6(sender: AnyObject) {
        click ("6")
    }
    @IBAction func number7(sender: AnyObject) {
        click ("7")
    }
    @IBAction func number8(sender: AnyObject) {
        click ("8")
    }
    @IBAction func number9(sender: AnyObject) {
        click（"9")
    }
    @IBAction func point(sender: AnyObject) {
        click (".")
    }
    
    @IBAction func olgorithmjiasender: AnyObject) {
        Calculator .Setcurrentalgorithm(.addition)
        evalution()
    }
    @IBAction func olgorithmjian(sender: AnyObject) {
        Calculator.Setcurrentalgorithm(.subtraction)
        evalution()
    }
    @IBAction func olgorithmcheng(sender: AnyObject) {
        Calculator.Setcurrentalgorithm(.multiplication )
         evalution()
    }
    @IBAction func olgorithmchu(sender: AnyObject) {
        Calculator.Setcurrentalgorithm(.division)
        evalution()
    }
    @IBAction func olgorithmpingfang(sender: AnyObject) {
        Calculator.Setcurrentalgorithm(.pingfang )
        evalution()
        
        
        
    }
    @IBAction func olgorithmzhishumi (sender: AnyObject) {
        Calculator.Setcurrentalgorithm(.zhishumi )
        evalution()
        
        
    }
   
    @IBAction func Reseynow (sender: AnyObject) {
        Displaycache = ""
        self.screen.text = "当前输入已撤销👉 0.0"
        
    }
    @IBAction func Resetall (sender: AnyObject) {
       Displaycache  = ""
        cache= 0.0
        cache2 = nil
        Calculator.Setcurrentalgorithm(.未选择)
        self.screen.text = ""
        
    }
    @IBAction func result(sender: AnyObject) {
        evalution()
    }
    func 点按(数字:String) {
        Displaycache += number
        self.screen .text = Displaycache
    }
    func 求值() {
        
        if !Displaycache.isEmpty {
            let temporary  = Displaycache as NSString
            cache = temporary .doubleValue
            Displaycache = ""
        }
        let temporary = cache
        var result = ""
        
        if let 前一个数字 = cache2 {
            result = calculation.求结果(前一个数字, 被操作数: temporary )
            
            self.screen.text = result
            let temporary = result as NSString
            cache2 = temporary .doubleValue
        } else {
            cache2 = cache
            cache= 0.0
        }
        
    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        screen.editing
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

