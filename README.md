# learn-rspec-100


## 教程

* [Effective Testing with RSpec 3](./9781680501988/)
* [寫測試了嗎？ 30 天的 RSpec 基本教學！](./ironman-4239/)

## Misc

```ruby
let(:burger) { Burger.new('Beef', 'Cheddar') }
```
```ruby
subject { {a:3, b: 4} }

it "should be 5" do
  expect(subject).to eq(5)
end

it { is_expected.to eq(5) }
```


## Ref

* [https://rspec.info/](https://rspec.info/)
* <https://rspec.ruby-lang.org.cn/>
* [Publisher: RSpec - Relish](https://relishapp.com/rspec/)
* [Better Specs](https://www.betterspecs.org/)