jenkins_github-hook Cookbook
============================
This cookbook allows you to configure your webserver to reverse-proxy your jenkins_github-hook to the web.

It routes requests from the port 8081 to the github-hook url of your Jenkins. Then you can expose just the 8081 to Internet, without exposing your whole jenkins.

Requirements
------------
This cookbook doesn't aim to configure the plugin nor your github account. This has to be done separatly.
(Just install the plugin and follow instructions on the [plugin page](https://wiki.jenkins-ci.org/display/JENKINS/GitHub+Plugin) )

Tested on Gentoo. It should be fine on other platforms. Send your feedback, and I'll update this readme.

Works only with NginX yet. (If you want apache, you're more than welcome to PullRequest!)

Attributes
----------

node['jenkins']['github_hook']['host_name'] = Host name of your server

node['jenkins']['github_hook']['webserver']   = webserver for your reverse proxy (support just nginx for now)

node['jenkins']['github_hook']['port']      = your revers_proxy port


Usage
-----
Just include `jenkins_github-hook` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[jenkins_github-hook]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Pierre Ozoux

Copyright 2013, Angelweb, Unipessoal Lda.

Licence WTFPL
