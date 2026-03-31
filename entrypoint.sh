#!/bin/sh

envsubst </etc/tor/torrc.template >/etc/tor/torrc

exec tor -f /etc/tor/torrc
