Sequel.migration do
	change do
		create_table(:users) do
			String :id, size: 32, primary_key: true, primary_key_constraint_name: :users_id_pk1
			String :service_user_id, size: 128, null: true, index: true
			String :email, size: 512, null: true, index: true
			String :name, size: 512, null: true
			String :type, size: 32, null: true
			TrueClass :active, default: true
			DateTime :created_at
			DateTime :updated_at
		end
	end
end
