python_pkgs = value_for_platform(
  ['centos', 'redhat', 'fedora', 'amazon'] => {
    'default' => ["python#{node['python']['version']}"]
  },
  'default' => ["python#{node['python']['version']}"]
)

python_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

