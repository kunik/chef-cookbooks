Chef cookbooks
==============

1. Cookbooks for Node.JS

        nodejs_version "0.6.6" do
          action :install
          provider "nodejs_nave"
        end

        nodejs_npm_package "jake" do
          action :install
          provider "nodejs_npm"
        end
