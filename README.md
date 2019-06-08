# Diorama Deployment

Deploy Diorama to your own VM.

## Pre-requisites

### Your real machine
You need [Python](https://www.python.org/downloads/) (either 2.7 or 3.5+ are
okay) installed on your Unix machine, as well as
[pip](https://pip.pypa.io/en/stable/installing/). Unless you're using Windows
10's Subsystem for Linux, Windows isn't supported, so sorry if that's what
you're using. You can find out if you have these already installed by running:
```bash
which python
which pip
```

Next, install Ansible by running:
```bash
sudo pip install ansible
```
If you don't have permissions to run sudo, run it without, and then inside the `deploy.sh` file, replace `ansible-playbook` with the path to your ansible playbook executable (for example, `~/.local/bin/ansible-playbook`).

### Your virtual machine
Set up an Ubuntu VM - you could use [VirtualBox](https://www.virtualbox.org/) or
a cloud VM provider like [Microsoft Azure](https://azure.microsoft.com). These
scripts have been tested on:
- Ubuntu Server 18.04.2 LTS

Make a user account on your VM which has **passwordless sudo access**. There's
[a helpful article](https://www.cyberciti.biz/faq/linux-unix-running-sudo-command-without-a-password/)
on how to do that if you're not sure.

## Deploying
```bash
./deploy.sh IP_ADDRESS_OF_YOUR_VM USER_ACCOUNT_NAME
```

For example, `./deploy.sh 192.168.0.123 alice`.

Hopefully 🤞, that will run. After it's finished, you can open the web interface
by visiting your VM's IP address in your browser.
