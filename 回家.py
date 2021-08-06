'''
 python:数据类型：
    int str float bool
    list[]、tuple()
            key    value
    dict{   ""   :   ""   }
          键     值    键值对
          取键来获取值
    回家：
    三层字典：第一层：几号线{，，，，，} input出入了一个地铁没有的线路 为错
            第二层：那个小区 input出入了一个地铁没有的线路 为错
            第三层：门牌号
    for打印 乘法表  99 1010：我输入的数字打印出来的乘法表
'''
'''
dict={"12号线":{"西山口":{"公寓":{"0101":"你到家了"}}}}
name1=input("你要去几号线：")
if name1 == "12号线":
    print(dict["12号线"])
    name2=input("你要到达的出站口：")
    if name2=="西山口":
        print(dict["12号线"]["西山口"])
        name3 = input("你要去的小区名字：")
        if name3 == "公寓":
            print(dict["12号线"]["西山口"]["公寓"])
                print(dict["13号线"]["回龙观"]["流星花园"]
            else:
                print("你迷路了")
    else:
        print("你输错了！")                
else:
    print("你回不去了！")




