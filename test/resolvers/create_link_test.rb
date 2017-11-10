require 'test_helper'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
  def perform(obj: nil, args: {}, ctx: {})
    Resolvers::CreateLink.new.call(obj, args, ctx)
  end

  test 'creating new link' do
    user_double = OpenStruct.new

    link = perform(
      obj: nil,
      args: {
        url: 'http://example.com',
        description: 'description',
      },
      ctx: { current_user: user_double }
    )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
    assert_equal link.current_user, user_double

  end
end
