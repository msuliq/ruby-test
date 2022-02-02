#script for automated testing of ListWithCommas.rb

#load minitest module
require 'minitest/autorun'
#load the test class
require 'listwithcommas'

class TestListWithCommas < Minitest::Test
    #test of joining one subject
    def test_it_prints_one_word_alone
        list = ListWithCommas.new
        #single item for test run
        list.items = ['apple']
        #comparison of test run and list join result
        #if true - test pass, if false - test fail
        assert('apple' == list.join, "Return value did not equal 'apple'")
    end
    #test of joining two subjects
    def test_it_joins_two_words_with_and
        list = ListWithCommas.new
        #two sample subjects for the test
        list.items = ['apple', 'orange']
        #test is passed if join returns the required line
        assert('apple and orange' == list.join, "Return value did meet requirements for 2 subjects")
    end
    #test of joining three subjects
    def test_it_joins_three_words_with_commas
        list = ListWithCommas.new
        #three sample subjects for the test
        list = ['apple', 'orange', 'pear']
        #test passed if join return same line
        assert('apple, orange, and pear' == list.join, "Return value did meet requirements for 3 subjects")
    end
end