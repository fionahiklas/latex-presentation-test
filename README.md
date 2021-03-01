# Latex Presentation Test

## Overview

Trying out LaTeX for creating presentation files rather than the likes of PowerPoint or LibreOffice


## Notes

### Installing LaTeX

I tried running on Ubuntu (20.04) using the `latex209-bin` and `latex209-base` packages.  This caused 
the following when I tried to install the `beamer` package

```
tlmgr --usermode install beamer

/usr/bin/tlmgr: unexpected return value from verify_checksum: -5
```

After digging it seems that this is because the Ubuntu version of TexLive is really old.  Also 
checked with Debian packages and they seem to be quite dated.  Am going to try and install 
using this [installer](https://www.tug.org/texlive/acquire-netinstall.html) and these 
[instructions](https://www.tug.org/texlive/quickinstall.html)

* Created a directory `/usr/local/texlive`
* Changed permissions to make it world writable
* Uncompressed install and ran using the following command

```
./install-tl -gui text
```

It seems I guessed the location correctly and that is where the installer is going to place the distribution.

Selected "I" and hit enter.

On my RaspPi 4 the install took many hours to complete - it downloaded *everything*.  Also worth noting that 
it really slowed things down - I think likely because it was writing to SD alot and probably saturating that

Gives the following output

```
 ----------------------------------------------------------------------
 The following environment variables contain the string "tex"
 (case-independent).  If you're doing anything but adding personal
 directories to the system paths, they may well cause trouble somewhere
 while running TeX.  If you encounter problems, try unsetting them.
 Please ignore spurious matches unrelated to TeX.

    TEXTDOMAIN=Linux-PAM
 ----------------------------------------------------------------------


Welcome to TeX Live!


See /usr/local/texlive/2020/index.html for links to documentation.
The TeX Live web site (https://tug.org/texlive/) contains any updates and
corrections. TeX Live is a joint project of the TeX user groups around the
world; please consider supporting it by joining the group best for you. The
list of groups is available on the web at https://tug.org/usergroups.html.


Add /usr/local/texlive/2020/texmf-dist/doc/man to MANPATH.
Add /usr/local/texlive/2020/texmf-dist/doc/info to INFOPATH.
Most importantly, add /usr/local/texlive/2020/bin/armhf-linux
to your PATH for current and future sessions.
Logfile: /usr/local/texlive/2020/install-tl.log
```



### Installing packages in usermode

Seems that you need to initialise a user account for use with `tlmgr`, trying to run a package install without 
that generated the following error

```
tlmgr --usermode install beamer
TLPDB: not a directory, not loading: /home/fiona/texmf
tlmgr: running in usermode, did you call `tlmgr init-usertree'?
```

Trying to setup using the following command as suggested

```
tlmgr init-usertree
```

This seemed to work and created a `$HOME/texmf` directory

Trying the install again and got this error

```
tlmgr --usermode install beamer

/usr/bin/tlmgr: unexpected return value from verify_checksum: -5
```


### Installing Beamer




## References

### LaTeX

* [Beamer, template for presentations](https://ctan.org/pkg/beamer?lang=en)
* [Beamer tutorial](https://www.overleaf.com/learn/latex/Beamer_Presentations:_A_Tutorial_for_Beginners_(Part_1)%E2%80%94Getting_Started)
