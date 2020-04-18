# rails-delegate

测试在`private`关键字下执行`delegate`是否会把委托方法自动转变为私有方法。

测试结果是不会转变，仍为公有方法。

[查看源码](https://github.com/rails/rails/blob/master/activesupport/lib/active_support/core_ext/module/delegation.rb#L244)本质是打开类添加方法，所以开的是类作用域，并不在`private`作用域下。

### How to delegate methods in rails as private

* https://blog.eq8.eu/til/how-to-delegate-methods-in-rails-as-private.html
* https://stackoverflow.com/questions/15643172/make-delegated-methods-private
