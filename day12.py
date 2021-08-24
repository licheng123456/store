from threading import Thread
import time

bread = 0
price = 3
money = 3000


class chef(Thread):
    c_name = ""
    c_count = 0

    def run(self) -> None:
        while True:
            global bread
            global c_count
            if bread < 500 or bread >= 0:
                bread = bread + 1
                self.c_count = self.c_count + 1
                print(self.c_name, "做了", self.c_count, "个面包")
            elif bread == 500:
                time.sleep(2)


class People(Thread):
    l_name = ""
    l_count = 0

    def run(self) -> None:
        while True:
            global bread
            global money
            global l_count
            if bread > 0:
                bread = bread - 1
                self.l_count = self.l_count + 1
                money = money - 3
                print(self.l_name, "买了", self.l_count, "个面包")
                if money <= 0:
                    print("没钱了")
                    break
            elif bread == 0:
                time.sleep(2)


c1 = chef()
c2 = chef()
c3 = chef()

c1.c_name = "张三"
c2.c_name = "李四"
c3.c_name = "王五"

c1.start()
c2.start()
c3.start()

l1 = People()
l2 = People()
l3 = People()
l4 = People()
l5 = People()
l6 = People()

l1.l_name = "客户a"
l2.l_name = "客户b"
l3.l_name = "客户c"
l4.l_name = "客户d"
l5.l_name = "客户e"
l6.l_name = "客户f"

l1.start()
l2.start()
l3.start()
l4.start()
l5.start()
l6.start()