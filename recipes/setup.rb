######################################
### - RECETAS Martes 06 Xuñ 2017 - ###
#
#

package "tree"

# 
#Cambios en el banner de inicio para tomar datos de la VM sacados de ohai
#Comentamos el fichero para utilizar la plantilla
#file "/etc/motd"  do
#IPADDRESS: #{node['ipaddress']}
#HOSTNAME: #{node['hostname']}
#MEMORY: #{node['memory']['total']}
#CPU: #{node['cpu']['0']['mhz']}
#end


template '/etc/motd'  do
 source 'motd.erb'
 mode '0644'
 owner 'root'
 group 'root'
end
######################################

