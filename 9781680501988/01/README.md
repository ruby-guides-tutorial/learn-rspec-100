# 01 Getting Started With RSpec

|本期版本|上期版本
|:---:|:---:
`Tue Sep  5 20:22:28 CST 2023` |


## Installing RSpec

* `rspec-core`、`rspec-expectations`、`rspec-mocks`

## Groups, Examples, and Expectations

* `RSpec.describe` creates an example group
* `it` creates an example
* `expect` verifies an expected outcome

## Understanding Failure

* RSpec will look inside the `spec` subdirectory for files named `«something»_spec.rb` and run them:

## Sharing Setup (But Not Sandwiches)


* RSpec `hooks` run automatically at specific times during testing.
* `Helper methods` are regular Ruby methods; you control when these run.
* RSpec’s `let` construct initializes data on demand.

**Hooks**

```ruby
before { @sandwich = Sandwich.new('delicious', []) }
```


**Sharing Objects With let**

```ruby
let(:sandwich) { Sandwich.new('delicious', []) }
```
