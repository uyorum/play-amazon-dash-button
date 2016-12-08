# play-amazon-dash-button

## Requirements
I'm using OS X and have installed `pyenv`, `pyenv-virtualenv` and `Homebrew` already.

``` shell
$ pyenv install 2.7.12
$ pyenv virtualenv 2.7.12 amazon-dash
$ pip install -r requirements.txt
$ brew install libdnet
```

## How to find Amazon Dash Button
It is sayed in many blogs that can be found with `ARP Probe` packets.
But I can't capture that packets sometimes.

Next, I tried to capture `DHCP Discover` packets, but I've found that Dash Button doesn't send that packet every time pressed.
So I've decided that do that by capturing `DHCP Request` packets. (It seems to be sent always)

## Finding Amazon Dash Button
Run `dash-finder.py` with `sudo` and press the button.
Now you can see its MAC address.

``` shell
$ sudo python dash-finder.py
Password:
DHCP Request from: XX:XX:XX:XX:XX:XX
```
