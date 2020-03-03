#
# Cookbook:: gr_reboot_test
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file "/reboot.txt" do
  content 'Reboot'
  action :create
  notifies :request_reboot, 'reboot[Reboot Computer]'
end

reboot 'Reboot Computer' do
  action :nothing
  reason 'Reboot'
end
