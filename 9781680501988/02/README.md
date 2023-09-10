# 02 From Writing Specs to Running Them


## Customizing Your Specs’ Output

```ruby
context 'with milk' do
	before { coffee.add :milk }
	
	it 'costs $1.25' do
		expect(coffee.price).to eq(1.25)
	end
end
```

**The Documentation Formatter**

```bash
rspec --format documentation
```

**Syntax Highlighting**

* <https://rubygems.org/gems/coderay>

```bash
rspec -fd
```

## Identifying Slow Examples

```bash
# rspec --help | grep profile

rspec --profile 2
```

## Running Just What You Need


```bash
rspec spec/unit/specific_spec.rb
```

**Running Examples by Name**

> `include {:full_description=>/milk/}`

```bash
# rspec --help | grep example

rspec -e milk
```

**Running Specific Failures**

> `include {:locations=>{"./spec/coffee_spec.rb"=>[25]}}`

```bash
rspec ./spec/coffee_spec.rb:25
```

**Rerunning Everything That Failed**

> `include {:last_run_status=>"failed"}`

```ruby
RSpec.configure do |config| 
	config.example_status_persistence_file_path = 'spec/examples.txt'
end
```

```bash
rspec --only-failures
```

**Focusing Specific Examples**

> `include {:focus=>true}`

```ruby
config.filter_run_when_matching(focus: true)
```

* simply add an `f` to the beginning of the RSpec method name

**Tag Filtering**

```ruby
context 'with milk', focus: true do
```

```bash
rspec --tag focus
```

## Marking Work in Progress

* 实验待定
