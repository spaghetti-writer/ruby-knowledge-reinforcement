require 'benchmark'

def test_yield
	yield
end

def test_block(&block)
	block.call
end

Benchmark.bm do |x|
	x.report('yield: '){
		test_yield { puts 'hello' }
	}
	x.report('block: '){
		test_yield { puts 'hello' }
	}
end