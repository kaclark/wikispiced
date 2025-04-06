# wikispiced

spice wiki for food research

The first research source to be integrated into this wiki is Stuart Farrimond's The Science of Spice IBSN 9780241302149. This work is explicitly cited yet it is hoped that through use of the wiki the reader would have little practical reason to consult any existing paper or PDF embedding of the information.  

This will be integrated into 9front running in virt-manager on a fedora powered Dell Inspiron. Originally, it was planned to be a browser powered markdown wiki but now .ms 9front wiki is the plan.

Spices are given spice profiles in Farrimond's book, and an index of these spice profiles for their pages is given in spiceindex.csv. This will need to be modified to use the file format found the in spreadsheet calculator sc. cf https://github.com/n-t-roff/sc 

### Command Line Interface

```bash
rc awk-testing -a #to see all spices
rc awk-testing -m $spice #to get page number for spice
rc awk-testing -r #TODO: get user input with menu?
```

9front grep, awk, and sed will be used to modify sc files in order to manipulate data from the index. Information gathered will be stored in manuscripts with time.

### 9front tips

On boot, factotum will not remember the rsa key info for ssh. The info only needs to be written to the file in order to update the security agent filesystem accordingly. 

```bash
cat /usr/glenda/rsa_key > /mnt/factotum/ctl
rc prep-factotum-for-git-ssh.rc #wrapper for above
```
