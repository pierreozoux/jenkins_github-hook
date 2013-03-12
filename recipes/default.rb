#
# Cookbook Name:: jenkins_github-hook
# Attributes:: default
#
# Copyright 2013, Angelweb, Unipessoal Lda.
#
# Licence WTFPL
#

include_recipe "jenkins"

if node['jenkins']['github_hook']['webserver'] == "nginx"
	include_recipe "jenkins_github-hook::reverse-proxy_nginx"
end
