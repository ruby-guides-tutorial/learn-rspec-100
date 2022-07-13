# Day 20 真真假假的 Instance doubles

|本期版本|上期版本
|:---:|:---:|
`Wed Jul 13 21:49:46 CST 2022` | - 

* 若是我們不慎移除掉真實的 Code，他依舊會通過測試，因為我們的測試裡面還是保有這個方法，但他不是真實的，一切都是捏造的！


## Instance Doubles

* 其實概念就和 double 非常相似，但就是多加了一個類別上去，讓 RSpec 去幫你檢查，所以我在這邊可以說，如果要使用 double 請用 instance double，小心駛得萬年船～

```ruby
burger = instance_double(Burger, yummy: "Yum!")
```

## Class Doubles


```ruby
burger_klass = class_double(Burger)
```

* 原來是因為我們還需要一個方法叫做 `as_stubbed_const` 接在這個 double 的後方，讓我們使用這個 double 物件去確實的取代程式碼內的 Burger.make 的這個 Burger。
