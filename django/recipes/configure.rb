node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'python'
    Chef::Log.debug("Skipping deploy::python application #{application} as it is not a Python app")
    next
  end

  Chef::Log.debug("Deploying Python app #{application}")
  Chef::Log.debug(" deploy to: #{deploy[:deploy_to]}")
  Chef::Log.debug(" current path: #{deploy[:current_path]}")
  Chef::Log.debug(" user: #{deploy[:user]}")
  Chef::Log.debug(" group: #{deploy[:group]}")

end

include_recipe 'python::localsettings'

