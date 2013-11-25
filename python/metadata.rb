maintainer        "Lukas Hetzenecker"
maintainer_email  "lukas@splots.co"
license           "Apache 2.0"
description       "Installs and configures python"
version           "0.1"

%w{ amazon }.each do |os|
  supports os
end

recipe "python::setup", "Setup a Python application"
recipe "python::configure", "Re-configure a Python application"

depends "deploy"

attribute "python/version",
  :display_name => "Python version",
  :description => "Python version (e.g. 27)",
  :default => "27"

