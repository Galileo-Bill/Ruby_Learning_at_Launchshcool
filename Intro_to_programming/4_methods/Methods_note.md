# 3.Methods 笔记

1.obj.method or method(obj)

"Hi there".length.to_s

```ruby
def add(a, b)

	a+b

end
```

2.Ruby is pass-by-value or pass-by-reference language.

3.method invocation with a block and method definition

```ruby
[1, 2, 3].each do |num|

	puts num

end

def print_num(num)

	puts num

end
```

4. output and return

```ruby
p "Before mutate method"

puts "Before mutate method"

print "Before mutate method"
```

5.when using nested method calls

```ruby
def multiply(num1, num2)
  num1 * num2
end

add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=> 560
```

