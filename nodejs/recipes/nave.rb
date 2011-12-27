bash "download nave source" do
  cwd "/usr/local/sbin"
  user "root"
  code <<-EOH
    curl -L https://github.com/isaacs/nave/tarball/v#{node[:nave][:version]} | tar -zx && mv ./isaacs-nave-??????? ./nave@#{node[:nave][:version]}
  EOH
  not_if do 
    File.exists?("/usr/local/sbin/nave@#{node[:nave][:version]}")
  end
end

bash "link nave" do
  cwd "/usr/local/bin"
  user "root"
  code <<-EOH
    rm -f ./nave && ln -s /usr/local/sbin/nave@#{node[:nave][:version]}/nave.sh ./nave
  EOH
end
