#!/bin/bash

echo "Starting the script"
mkdir -p linux_all_commands
mkdir -p docker_screenshots

# Create some test files and directories for demonstration
touch linux_all_commands/newfile
echo "Sample text" > linux_all_commands/file1
mkdir -p linux_all_commands/dir1
cp linux_all_commands/file1 linux_all_commands/file2

commands=(

"touch linux_all_commands/newfile2"
"cat linux_all_commands/file1"
"cat linux_all_commands/file1 > linux_all_commands/file3"
"cat linux_all_commands/file1 >> linux_all_commands/file3"
"mkdir linux_all_commands/dir2"
"cp linux_all_commands/file1 linux_all_commands/file1_copy"
"mv linux_all_commands/file2 linux_all_commands/file2_renamed"
"mv linux_all_commands/file1_copy linux_all_commands/dir2/"
"alias ll='ls -alF'"
"clear"
"ls -l linux_all_commands/file1"
"chmod a+x linux_all_commands/file1"
"chmod go-wx linux_all_commands/file1"
"chmod go+w linux_all_commands/file1"
"chmod a-wx linux_all_commands/file1"
"chmod 641 linux_all_commands/file1"
"chmod 744 linux_all_commands/file1"
"chmod 666 linux_all_commands/file1"
"chmod 444 linux_all_commands/file1"
"chmod 642 linux_all_commands/file1"
"chmod 412 linux_all_commands/file1"
"chown \$USER linux_all_commands/file1"
"chown root linux_all_commands/file1 || echo 'Need sudo for chown root'"
"chown :$(id -gn) linux_all_commands/file1"
"chown \$USER:$(id -gn) linux_all_commands/file1"
"ping -c 2 google.com"
"ip a"
"ip addr show > linux_all_commands/ip_config.txt"
"nslookup ubuntu.com > linux_all_commands/nslookup_output.txt"
"ip r"
"traceroute -m 5 google.com || echo 'traceroute may need sudo'"
"hostname -I"
"docker run hello-world"
"docker --version"
"docker pull nginx"
"docker images"
"docker run -d --name mynginx1 -p 8080:80 nginx"
"docker ps"
"docker ps -a"
"docker stop mynginx1"
"docker rm mynginx1"
"docker volume create myvol1"
"docker volume ls"
"docker rmi nginx"
"docker network ls"
)

i=1
for comd in "${commands[@]}"; do
    echo "$comd"
    
    # Handle docker name conflicts
    if [[ "$comd" == *"docker run"* && "$comd" == *"--name"* ]]; then
        cname=$(echo "$comd" | grep -oP '(?<=--name )[^ ]+')
        if docker ps -a --format '{{.Names}}' | grep -w "$cname" &> /dev/null; then
            echo "⚠️ Container '$cname' already exists. Removing it..."
            docker stop "$cname" &> /dev/null
            docker rm "$cname" &> /dev/null
            echo "✅ Removed existing container: $cname"
        fi
    fi

    if eval "$comd"; then
        echo "✅ Successfully executed: $comd"
    else
        echo "❌ Failed to execute: $comd"
    fi

    # screenshot + delay
    sleep 2
    filename="docker_screenshots/step_${i}_$(echo $comd | tr ' /' '__' | cut -c1-60).png"
    gnome-screenshot -f "$filename"
    echo "📸 Screenshot saved: $filename"

    clear
    ((i++))
    sleep 1
done

echo "✅ All commands executed and screenshots captured in 'docker_screenshots/' directory."
