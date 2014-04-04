#!/usr/bin/env puma

MODE = 'production'
DIR  = File.join ENV['HOME'], 'web'

directory    File.join DIR, MODE
rackup       File.join DIR, 'cfg', MODE + '.ru'
environment  MODE
pidfile      File.join DIR, 'run', MODE + '.pid'
state_path   File.join DIR, 'run', MODE + '.state'
bind         'unix:///' + File.join(DIR, 'run', MODE) + '.sock'

#stdout_redirect File.join(DIR, 'log', MODE) + '.log',
#                File.join(DIR, 'log', MODE) + '.err', true

##daemonize    false
##quiet        false
##threads      0, 16
