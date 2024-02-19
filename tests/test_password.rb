require 'minitest/autorun'
# require '../passwordCreator/passwordDraft.rb'
require '../app.rb'
require "../password"
require "../passwordCreate"


class TestPassword < Minitest::Test
  def test_password
    # password = Passwordcreate.new
    # password = PasswordCreate.new
    # assert(password != NULL)

    assert_same @password, nil, "Password test failed"
    # assert_includes Passwordbody.to_s, "[username:  - password: ]", "Couldn't find Input 2 string"
    # pp @password
    # if password.password.length == 6
    #   passwprd.password
    # else
    # pp "Password test failed"
    # end
  end
end
