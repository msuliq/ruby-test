#script for automated testing of ListWithCommas.rb

#load minitest module
require 'minitest/autorun'
#load the test class
require_relative '../lib/ListWithCommas'

class TestListWithCommas < Minitest::Test
    #setup of testing conditions
    def setup
        #create ListWithCommas.new var for all test instances
        @list = ListWithCommas.new
    end 
    #test of joining one subject
    def test_it_prints_one_word_alone
        #single item for test run
        @list.items = ['apple']
        #comparison of test run and list join result
        #if true - test pass, if false - test fail
        assert_equal('apple', @list.join)
    end
    #test of joining two subjects
    def test_it_joins_two_words_with_and
        #two sample subjects for the test
        @list.items = ['apple', 'orange']
        #test is passed if join returns the required line
        assert_equal('apple and orange', @list.join)
    end
    #test of joining three subjects
    def test_it_joins_three_words_with_commas
        #three sample subjects for the test
        @list.items = ['apple', 'orange', 'pear']
        #test passed if join return same line
        assert_equal('apple, orange, and pear', @list.join)
    end
end