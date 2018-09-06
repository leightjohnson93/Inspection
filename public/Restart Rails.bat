@echo off
title Rails: Lens Testing Server
cd C:\sites\inspection
rails s -p 4000 -e production -b 0.0.0.0
@echo on
PAUSE
