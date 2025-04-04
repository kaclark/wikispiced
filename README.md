# wikispiced

testing from 9front!
spice wiki for food research

The first research source to be integrated into this wiki is Stuart Farrimond's The Science of Spice IBSN 9780241302149. This work is explicitly cited yet it is hoped that through use of the wiki the reader would have little practical reason to consult any existing paper or PDF embedding of the information.  

Consider using this [browser extension](https://github.com/simov/markdown-viewer) for interacting with the wiki on the browser in place of the command line interface.

The Browser will allow for wiki functionality from the index.md file. However, the command line interface should allow for user accounts with favorited spices, with calendar integration and planning, as well as other tools personalized with user data. 

In future, a port to Rust and build to WebAssembly with calls to an API running on a always online-desktop-as-server in place of sqlite can be implemented for a functional user data experience in the browser.

Spices are given spice profiles in Farrimond's book, and an index of these spice profiles for their pages is given in spiceindex.csv

### Command Line Interface

```
python wikispiced.py -h
```

Currently this does not work beyond just giving help message

### User Login

[Keyring](https://pypi.org/project/keyring/) will be used to create users for the command line interface of this application for the time being.

```
pip install keyring
```

```python
#store password once
import keyring
keyring.set_password("system", "wikispiced", "123456")

#recall the password at any time
password = keyring.get_password("system", "wikispiced")
```

The above code was taken from [here](https://swharden.com/blog/2021-05-15-python-credentials/)
