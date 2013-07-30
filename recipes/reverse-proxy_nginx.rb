#
# Cookbook Name:: jenkins_github-hook
# Attributes:: default
#
# Copyright 2013, Angelweb, Unipessoal Lda.
#
# Licence WTFPL
#

include_recipe "nginx"

host_name = node['jenkins']['github_hook']['host_name'] || node['fqdn']

template "#{node['nginx']['dir']}/sites-available/github-hook.conf" do
  source      "nginx_github-hook.conf.erb"
  owner       'root'
  group       'root'
  mode        '0644'
  variables(
    :host_name        => host_name,
  )

  if File.exists?("#{node['nginx']['dir']}/sites-enabled/github-hook.conf")
    notifies  :restart, 'service[nginx]'
  end
end

nginx_site "github-hook.conf" do
  enable true
end
