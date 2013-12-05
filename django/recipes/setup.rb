node[:deploy].each do |application, deploy|
 if deploy[:application_type] != 'python'
   Chef::Log.debug("Skipping setup::python application #{application} as it is not a python app")
   next
 end

 Chef::Log.debug("Executing setup::python application #{application} is a python app")

 include_recipe 'python::default'
 Chef::Log.debug("Installing -> python #{node['python']['install_method']}")

end

