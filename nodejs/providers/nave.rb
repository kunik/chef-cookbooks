action :install do
  execute "install nodejs v#{new_resource.version}" do
    command "nave install #{new_resource.version}"
  end

  execute "use nodejs v#{new_resource.version} as default" do
    user "root"
    command "nave usemain #{new_resource.version}"
  end
end

action :uninstall do
  execute "uninstall nodejs v#{new_resource.version}" do
    command "nave uninstall #{new_resource.version}"
  end
end
