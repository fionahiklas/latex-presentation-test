#!/usr/bin/env bash
#

export PATH=$PATH:/usr/local/texlive/2021/bin/x86_64-linux

tlmgr init-usertree
tlmgr install --usermode beamer
tlmgr install --usermode etoolbox
tlmgr install --usermode pgf
tlmgr install --usermode xcolor
tlmgr install --usermode translator

