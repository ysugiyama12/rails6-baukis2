Rails.application.config.assets.version = "1.0"

Rails.application.config.assets.paths << Rails.root.join("node_modules")

Rails.application.config.assets.precompile += %w(staff.css)
Rails.application.config.assets.precompile += %w(admin.css)
Rails.application.config.assets.precompile += %w(customer.css)
