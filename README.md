# Latex Presentation Test

## Overview

Trying out LaTeX for creating presentation files rather than the likes of PowerPoint or LibreOffice


## Notes

### Installing LaTeX

Since this is running on Ubuntu (20.04) I just used the `latex209-bin` and `latex209-base` packages.


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
