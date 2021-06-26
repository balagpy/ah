# frozen_string_literal: true

require "test_helper"

class MarkdownBodyTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "body_html" do
    topic = Topic.new(body: "Various systems will always need some functions such as **likes, favorites, follow/subscribe**, etc. more or less.\n\nDo we have to re-development every time? No! That's not the style of DRY. Use Active Record to store various types of action data, such as likes, likes, favorites, follow, subscribe, block (you can do more depending on your imagination) Things) wait.")
    assert_html_equal "<p>All kinds of systems always need some functions such as <strong>like, favorite, follow/subscribe</strong>, etc. more or less.</p><p>Do we have to re-development every time? No! That's not the style of DRY. Use Active Record to store various types of action data, such as likes, likes, favorites, favorites, follow, subscribe, block (depending on your imagination, you can also do More things) wait.</p>", topic.body_html
    assert_equal "Various systems will always need more or less likes, favorites, follow/subscribe and other functions. Do we have to re-develop each time? No! That's not the style of DRY. Active Record Polymorphic Association (Polymorphic Association) ) To store various types of action data,...", topic.description
  end
end
