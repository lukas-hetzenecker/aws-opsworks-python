node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'python'
    Chef::Log.debug("Skipping deploy::python application #{application} as it is not a Python app")
    next
  end

  Chef::Log.debug("Deploying Python app #{application}"

end

