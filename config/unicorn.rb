# Set the working application directory
# working_directory "/path/to/your/app"
shared_dir = "/srv/shared"
working_directory "/srv/ChatApp"

# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Path for the Unicorn socket
listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64

# Path to logs
stderr_path "/var/www/my_app/log/unicorn.log"
stdout_path "/var/www/my_app/log/unicorn.log"

# Set proccess id path
pid "#{shared_dir}/pids/unicorn.pid"