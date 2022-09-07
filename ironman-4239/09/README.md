# Day 9 整理重複煩人的程式碼！

|本期版本|上期版本
|:---:|:---:|
`Wed Sep  7 22:36:48 CST 2022` | `Mon Jul 18 15:46:49 CST 2022`

## Before hooks

* 在每一個 example 前，做這件事情！

```ruby
before do
  @burger = Burger.new('Beef', 'Cheddar')
end
```