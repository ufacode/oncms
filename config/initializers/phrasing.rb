Phrasing.setup do |config|
  config.route = 'phrasing'
end

# List all the model attributes you wish to edit with Phrasing, example:
# Phrasing.whitelist = ["Post.title", "Post.description"]
Phrasing.whitelist = ["Page.title", "Page.content"]
# Phrasing.allow_update_on_all_models_and_attributes = true;
