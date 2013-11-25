maintainer        "Lukas Hetzenecker"
maintainer_email  "lukas@splots.co"
license           "Apache 2.0"
description       "Installs and configures Python for Django"
version           "0.1"

%w{ amazon }.each do |os|
  supports os
end

recipe "django::setup", "Setup a Django application"
recipe "django::configure", "Re-configure a Django application"

depends "deploy"
depends "python"
