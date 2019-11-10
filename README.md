Raspberry Pi Salt Initial Setup
===============================

This codebase is a salt project that uses salt-ssh to install salt on, in my project's
case, three raspberry pis. There's no reason you can't update the `etc/salt/roster` file
and some other config around the project and use it to set up your set of machines so
long as they support salt. I have another project that I then use as a remote salt repository
to set up the machines using typical salt-master, salt-minion flows. This repository is
intended basically to:

* Set up static IP addresses for all salt machines on their network
* Updates hostnames for each of the salt machines and sets up /etc/hostname entries for the
  other instances in the cluster on all machines.
* Install salt on a set of machines
* Set up the machines to support git remote salt configs, and set up a list of remotes
  to pull


## Setup Requirements
You should be able to use this project so long as you have docker installed, and all of
the hosts in your and `/etc/salt/roster` files are reachable using the hostnames configured
in those files.


## Running salt
You can run salt-ssh using the docker-compose or pipenv config provided like so:

```
docker-compose run salt-ssh <args...>
```

or

```
pipenv run salt-ssh <args...>
```

e.g.

```bash
docker-compose run salt-ssh "*" state.show_top

pipenv run salt-ssh "*" state.apply node-ips
```
