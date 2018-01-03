#! /bin/bash

if [[ ("$1" != "") && ("$2" != "") ]]; then
    mkdir "$1-Build"
    cd "$1-Build"
    wget "http://bdcbldhttpnas.blr.amer.dell.com/ombuilds$/SCOM_ANSIBLE/1.0/$1/DellEMC_OpenManage_Ansible_Modules_version_1.0.$1.tar.gz"
    tar -xvf "DellEMC_OpenManage_Ansible_Modules_version_1.0.$1.tar.gz"
    cd "DellEMC_OpenManage_Ansible_Modules_version_1.0.$1"
    python2.7 install.py
    python3.6 install.py
    cd ../
    rm -rf "DellEMC_OpenManage_Ansible_Modules_version_1.0.$1.tar.gz"
    pip2.7 install "http://bdcbldhttpnas.blr.amer.dell.com/ombuilds$/OMSDK/1.0/$2/omdrivers-0.2.00$2-py2.py3-none-any.whl"
    pip2.7 install "http://bdcbldhttpnas.blr.amer.dell.com/ombuilds$/OMSDK/1.0/$2/omsdk-0.2.00$2-py2.py3-none-any.whl"
    pip3.6 install "http://bdcbldhttpnas.blr.amer.dell.com/ombuilds$/OMSDK/1.0/$2/omdrivers-0.2.00$2-py2.py3-none-any.whl"
    pip3.6 install "http://bdcbldhttpnas.blr.amer.dell.com/ombuilds$/OMSDK/1.0/$2/omsdk-0.2.00$2-py2.py3-none-any.whl"
else
    echo "Error: Command line argument should be ./ansible.sh ansible_build_no omsdk_build_no."
fi


