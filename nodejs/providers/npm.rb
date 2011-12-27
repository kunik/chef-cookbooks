action :install do
  package_name = "#{new_resource.name}"
  unless new_resource.version.nil? 
    package_name << "@#{new_resource.version}"
  end

  execute "install npm package #{package_name}" do
    user "root"
    command "npm install -g #{package_name}"
  end
end

action :uninstall do
  execute "uninstall npm package #{new_resource.name}" do
    user "root"
    command "npm uninstall #{new_resource.name}"
  end
end

