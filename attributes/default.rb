

# Nginx
default['jenkins_master']['nginx']['install'] = true
default['jenkins_master']['nginx']['server_name'] = 'jenkins_master001.local'
default['jenkins_master']['nginx']['server_default'] = true
default['jenkins_master']['nginx']['template_cookbook'] = 'jenkins_master'
default['jenkins_master']['nginx']['template_source'] = 'nginx/jenkins.conf.erb'
default['jenkins_master']['nginx']['ssl'] = false
default['jenkins_master']['nginx']['ssl_cert_path'] = nil
default['jenkins_master']['nginx']['ssl_key_path'] = nil

# Packages
default['jenkins_master']['java']['install'] = true
