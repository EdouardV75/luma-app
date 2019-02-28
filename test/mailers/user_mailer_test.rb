require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    mail = UserMailer.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["edouard@luma-app.com"], mail.to
    assert_equal ["edouard@luma-app.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

class TestMailer < ActionMailer::Base
  def message
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'edouard@luma-app.com',
      :from => 'edouard@luma-app.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end

end

