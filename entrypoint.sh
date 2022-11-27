#!/bin/bash
/etc/init.d/bind9 start
/bin/stubby -C /etc/stubby/stubby.yml