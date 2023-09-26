# 第 3 章 模型测试

|本期版本|上期版本
|:---:|:---:|
`Tue Sep 12 10:23:41 CST 2023` | -


```ruby
require 'rails_helper'

RSpec.describe User, type: :model do
end
```

## 3.3 RSpec 的句法


```ruby
expect(user).to be_valid

expect(user.valid?).to eq(true)
```


## 3.4 测试数据验证

```ruby
user.valid?
expect(user.errors[:first_name]).to include("can't be blank")
```