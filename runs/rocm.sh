#!/usr/bin/env bash

echo "WARNING: Not completed do not run"
while [ : ]; do
    read -p "Still want to run [y/N]: " run
    echo $run
    if [[ $run == "n" || $run == "N" ]];then
        exit 0 
    elif [[ $run == "y" || $run == "Y" ]]; then
        echo "Running: "
        break
    else
        echo "Choose either y or N"
    fi
done


log(){
    if [[ $1 == "-i" ]]; then
        echo "Installing: $2"
    elif [[ $1 == "-p" ]]; then
        echo "Checking permissions and membership: $2"
    elif [[ $1 == "-n" ]]; then
        echo "$2"
    else 
        echo "Installing: $1"
    fi
    echo "\n"
}

log "prerequisites"

log "python dependences"
sudo dnf install python3-setuptools python3-wheel

log "env-modules"
sudo dnf install environment-modules

log "-p" "Group Membership"
sudo usermod -a -G video,render $LOGNAME
# For customizing group permissions go through ROCm official installation prerequisites and modify above line

log "Signing key: Can be changed as fedora doesn't use apt"
# Make the directory if it doesn't exist yet.
# This location is recommended by the distribution maintainers.
sudo mkdir --parents --mode=0755 /etc/apt/keyrings

# Download the key, convert the signing-key to a full
# keyring required by apt and store in the keyring directory
wget https://repo.radeon.com/rocm/rocm.gpg.key -O - | \
    gpg --dearmor | sudo tee /etc/apt/keyrings/rocm.gpg > /dev/null

# Need custom installation for this

log "Reginstering packages"
# Need to change this 
# This one is difficult to change as the installation packages are not clear also we can build from the source if needed but need more clear guidance for that

echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/rocm.gpg] https://repo.radeon.com/rocm/apt/6.4.1 noble main" \
    | sudo tee --append /etc/apt/sources.list.d/rocm.list
echo -e 'Package: *\nPin: release o=repo.radeon.com\nPin-Priority: 600' \
    | sudo tee /etc/apt/preferences.d/rocm-pin-600
sudo apt update

log "ROCm"
sudo apt install rocm

log "Post installation"
# This setup requires the installation of rocm in /opt/rocm in fedora for it to work
# Also for normal dnf installations the rocm.conf is not generated for fedora
sudo tee --append /etc/ld.so.conf.d/rocm.conf <<EOF
/opt/rocm/lib
/opt/rocm/lib64
EOF
sudo ldconfig

log "-n" "Configure ROCm path"
export PATH=$PATH:/opt/rocm-6.4.1/bin # THis is more sensible
export LD_LIBRARY_PATH=/opt/rocm-6.4.1/lib
