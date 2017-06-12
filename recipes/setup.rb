######################################
### - RECETAS Martes 06 Xuñ 2017 - ###
#
#
package "tree"
# 
#Cambios en el banner de inicio para tomar datos de la VM sacados de ohai

file "/etc/motd"  do
content "Property of ...

IPADDRESS: #{node['ipaddress']}
HOSTNAME: #{node['hostname']}
MEMORY: #{node['memory']['total']}
CPU: #{node['cpu']['0']['mhz']}

"

 mode "0644"
 owner "root"
 group "root"
end


#
#
######################################

