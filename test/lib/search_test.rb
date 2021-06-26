# frozen_string_literal: true

require "test_helper"

class Homeland::SearchText < ActiveSupport::TestCase
  test "initialize" do
    @search = Homeland::Search.new("(Ruby) language!")
    assert_equal ["Ruby", "Language"], @search.terms
    assert_equal "Ruby Language", @search.term
    assert_equal "TO_TSQUERY('simple', 'Ruby:* & Language:*')", @search.ts_query
  end

  test "empty term" do
    @search = Homeland::Search.new("")
    assert_equal "", @search.term
    assert_equal "TO_TSQUERY('simple', '')", @search.ts_query
  end

  test "prepare_data" do
    assert_equal "Ruby Language", Homeland::Search.prepare_data("RubyLanguage")
  end
end
