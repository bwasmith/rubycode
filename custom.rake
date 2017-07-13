namespace :pick do
	
	desc 'Pick a random user! Please show up as documentation!'
	task :user => :environment do
		puts "Selected User: #{picker(User).name}"
	end

	task :company => :environment do
		puts "Selected Company: #{picker(Company).name}"
	end

	task :all => [:user, :company]

	def picker(model_type)
		model_type.all.choice
	end
end
