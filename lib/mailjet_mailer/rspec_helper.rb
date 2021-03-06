# MailjetMailer helper module that requires custom matchers for use in RSpec specs.
# Example usage:
#
# In spec/spec_helper.rb):
#
# RSpec.configure do |config|
#   # ...
#   require "mailjet_mailer/rspec_helpers"
#   config.include MailjetMailer::RSpecHelper
# end
#
# In spec/mailers/user_mailer_spec.rb):
#
# require "rails_helper"
#s
# RSpec.describe UserMailer do
#   let(:user) { create(:user) }
#
#   context ".welcome" do
#     let(:mailer) { described_class.welcome(user) }
#
#     subject { mailer }
#
#     it 'has the correct data' do
#       expect(mailer).to use_template('Welcome')
#     end
#   end
# end
#
#

module MailjetMailer
  module RSpecHelper
    require 'mailjet_mailer/rspec_helpers/from_matcher'
    require 'mailjet_mailer/rspec_helpers/merge_var_matcher'
    require 'mailjet_mailer/rspec_helpers/merge_var_content_matcher'
    require 'mailjet_mailer/rspec_helpers/subject_matcher'
    require 'mailjet_mailer/rspec_helpers/template_matcher'
    require 'mailjet_mailer/rspec_helpers/to_email_matcher'
  end
end
