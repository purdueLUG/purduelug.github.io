---
title: "Using Purdue's VPN"
description: "How to connect to Purdue's campus VPN on Linux"
date: "2017-03-06"
author: "Evidlo"
---

{{< notice note >}}
This tutorial has been copied verbaitim from the old PLUG wiki, and its contents may be out of date.
Please submit a pull request with any updates!
{{< /notice >}}


## Install Openconnect

NetworkManager needs the Openconnect plugin first.

### Ubuntu/Debian

```
sudo apt-get install network-manager-openconnect network-manager-openconnect-gnome
```

### RHEL/Fedora

```
sudo yum install NetworkManager-openconnect
```

## Configure

In Network Manager, go to

```
VPN Connections > Configure VPN > Add
```

Then choose `Cisco Anyconnect Compatible VPN`

Enter the following settings:

{{< embed-image settings.png >}}

Click save, then activate the VPN in Network Manager.

```
VPN Connections > [your vpn]
```

You will be prompted for a username and password on connecting.
