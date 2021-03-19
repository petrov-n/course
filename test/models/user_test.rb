rrequire 'test_helper'

class UserTest < ActiveSupport::TestCase
	test 'new record' do
		test_input = 'test12@mail.ru'
		unless rec = User.find_by(email: test_input).nil?
		User.find_by(email: test_input).destroy
		end
		User.create(email: test_input, password: 'test12').save
		assert_not_nil User.find_by(email: test_input).nil?
		User.find_by(email: test_input).destroy
	end

  test 'similar keys' do
		test_input = 'test12@mail.ru'
		unless rec = User.find_by(email: test_input).nil?
		User.find_by(email: test_input).destroy
		end
		User.create(email: test_input, password: 'test12').save
		assert_not User.create(email: test_input, password: 'test12').valid?
		User.find_by(email: test_input).destroy
	end
endS