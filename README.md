# Open Source Software Development

Halil İbrahim ŞENAYDIN | 200707069 | Atatürk University

This repository contains assignments and projects of the Open Source Software Development lesson. I also developed a mobile application where these assignments are listed. Thanks to the web api that I have set up on my server, the mobile application can receive the output of the commands run on the Ubuntu machine by sending a request to the api.

## Exec Script File

A script file is run like this:

```bash
chmod +x script.sh # add to executable permission
./script.sh # exec script file
```

## Mobile App Usage

It is necessary to log in to the system via the mobile application with a username and password defined in the system.

Username and password defined in the system:

```
userName = dogukaneren
password = Deren.25
```

## Assignment 2
> This assignment aims to understand and implement access rights in a shell.

### Exec Script File

```bash
chmod +x assignment-2.sh # add to executable permission

# ./assignment-2.sh <authority> <new_user> <new_group> <file>
./assignment-2.sh 777 parallels sudo deneme.txt # exec script file
```
Running the script file and output:

<img width="1036" alt="Screenshot 2023-12-21 at 10 41 21" src="https://github.com/halilsenaydin/open-source-software-development/assets/70847361/ade27e7f-4e3f-447b-9ff9-8a8b920a0d59">

