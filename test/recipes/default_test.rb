# # encoding: utf-8

# Inspec test for recipe workstation::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

describe port(80) do
  it { should_not be_listening }
end


#####  primeira toma de contacto con InSpec #####
describe package ("tree") do
 it { should be_installed }
end

##### evitar puertos telnet #####
describe port(22) do
  it { should_not be_listening }
end

###### para comprobar o motd #####
describe file ('/etc/motd') do
 its('content') { should match(/Property of/) }
end

###### para comprobar o motd #####
describe file ('/etc/motd') do
 its('content') { should match(/Propiedade de manolez corporation/) }
end

