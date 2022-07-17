# 第 2 章 安装 RSpec

|本期版本|上期版本
|:---:|:---:|
`Sun Jul 17 11:20:04 CST 2022` | -

## 2.2 测试数据库

```ruby
bin/rails db:create:all
```

**注意**

* 在 Rails 5.0 之前，上述命令要写成 `bin/rake db:create:all`
* 如果使用的是 Rails 4.1 之前的版 本，要把 bin/rake 换成 `bundle exec rake`


## 2.5 生成器

* `fixtures: false` 禁止生成便于在测试数据库中创建对象的文件
* `view_specs: false` 的意思是不生成视图测试
* `helper_specs: false` 的意思是生成控制器时不生成对应的辅助方法测试文件
* `routing_specs: false` 的意思是不生成针对 config/routes.rb 的测试文件
* 默认会生成模型和控制器的测试文件，如果不想自动生成，可以在这个配置块中指明。例如，若想跳过 控制器测试，加上 controller_specs: false。