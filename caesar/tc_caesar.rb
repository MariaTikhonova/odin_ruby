require_relative "caesar"
require "test/unit"

class TestCaesar < Test::Unit::TestCase

def test_simple
assert_equal("xywnsl", Caesar.new("string").caesar("string",5) )
assert_equal("Bmfy f xywnsl!", Caesar.new("string").caesar("What a string",5) )
assert_equal("Hkkgo jkp hega Y jk ikna, dqj?", Caesar.new("Looks not like C no more, hun?").caesar("Looks not like C no more, hun?",22) )
end

def test_typecheck
assert_raise( RuntimeError ) { Caesar.new(1) }
end

def test_failure
assert_equal("abcedf", Caesar.new("string").caesar("string",5), "Encrypting isn't working" )
end

end



