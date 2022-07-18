# 第 4 章 创建有意义的测试数据

|本期版本|上期版本
|:---:|:---:|
`Sun Jul 17 10:04:43 CST 2022` | -

## 4.1 预构件 vs. 固件


* Rails 默认提供了快速生成示例数据的工具，叫做固件（fixture）。固件是 YAML 格式的文件，用于生 成示例数据。
* 在测试中我们可以引用 projects(:rogue_one)，这样就会得到一个全新的 Project 项目


## 4.2 安装 Factory Girl

* 打开 config/application.rb 文 件，把 fixtures: false, 这行删掉


## 4.3 开始使用预构件


```bash
bin/rails g factory_girl:model user
```


```ruby
FactoryGirl.create(:user)
FactoryGirl.build(:user)
```


## 4.4 使用序列生成唯一的数据

```ruby
sequence(:email) { |n| "tester#{n}@example.com" }
```

## 4.5 预构件中的关联

```ruby
association :project
```

## 4.6 避免预构件中出现重复

* 减少重复的另一个技术是使用性状（trait）构建测试数据，定义有变化的属性

```ruby
trait :due_yesterday do
	due_on 1.day.ago
end
```

## 4.7 回调