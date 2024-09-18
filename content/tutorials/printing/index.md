---
title: "Using the Purdue Printers"
description: "How to Add and Use the Purdue Printers on Linux"
date: "2024-08-16"
author: "i_lost_my_bagel"
---


## Install CUPS

CUPS is the printing system used on Unix-like operating systems such as Linux, macOS, and the various BSDs.

### Ubuntu/Debian

```
sudo apt install cups
```

### RHEL/Fedora

```
sudo yum install cups
```

### Arch Linux

```
sudo pacman -S cups
```

## Enable the CUPS Service on Boot

```
sudo systemctl enable cups
```

## Add and Configure the Black & White Printer

In a web browser, go to [http://localhost:631/](http://localhost:631/)

Click _Administration_ | _Add Printer_ | _LPD/LPR Host or Printer_ | _Continue_

Set the _Connection_ URL to

```
lpd://PURDUE_USERNAME@wpvapppcprt02.itap.purdue.edu:515/itap-printing
```

Click _Continue_

Name The Printer `itap-printing` and set the Description to something like `Purdue Black & White Printing`

Click _Continue_ | _Generic_ | _Continue_ | _Generic PostScript Printer_ | _Add Printer_ | _Query Printer for Default Options_

## Add and Configure the Color Printer

In a web browser, go to [http://localhost:631/](http://localhost:631/)

Click _Administration_ | _Add Printer_ | _LPD/LPR Host or Printer_ | _Continue_

Set the _Connection_ URL to

```
lpd://PURDUE_USERNAME@wpvapppcprt02.itap.purdue.edu:515/itap-colorprinting
```

Substitute PURDUE_USERNAME for your Purdue Career Account username.

Click _Continue_

Name The Printer `itap-colorprinting` and set the Description to something like `Purdue Color Printing`

Click _Continue_ | _Generic_ | _Continue_ | _Generic PostScript Printer_ | _Add Printer_ | _Query Printer for Default Options_


## Releasing the Print Job

In a web brower, go to https://wpvapppcprt01.itap.purdue.edu:9192/user and login with your Career Account username and password.

Click _Jobs Pending Release_ | _Print_ and then select a printer.
