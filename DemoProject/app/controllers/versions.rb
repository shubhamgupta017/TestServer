require 'json'

require 'user'

DemoProject::App.controllers :version, provides: :json do
	get :show, map: '/v1/version' do
		user = User.create_user('subham@gmail.com', 'subham')
		@view_obj = user.to_hash
		render 'shared/index'
	end
end
