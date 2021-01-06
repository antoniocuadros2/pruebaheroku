require "minitest/autorun"
require "minitest/mock"
require "rack/test"
require "date"
require_relative "./app.rb"

class TestAsignaturas < Minitest::Test
    include Rack::Test::Methods
	def setup

    end
    
	def app
		App
	end

    def test_raiz_ok
		get '/hello'
		assert_equal(last_response.content_type, 'text/html')
		assert_equal(last_response.body, 'Hello!')
    end
end