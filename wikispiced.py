import argparse
import os
from dataclasses import dataclass
import keyring

parser = argparse.ArgumentParser(description="Command Line Interface of the Spice Profiles in Stuart Farrimond's The Science of Spice IBSN 9780241302149. Please pass only one option")

parser.add_argument('-o', '--open-wiki', help="opens browser at index.md", action='store_true') 

parser.add_argument('-u', '--login-user', help="username for login")        

parser.add_argument('-nu', '--new-user', help="create new user on localhost")        

parser.add_argument('-n', '--new-spice', help="open terminal menu for inputting new spice profile information", action='store_true')        

parser.add_argument('-nr', '--search-new', help="return random spice profile from index that is not yet stored", action='store_true') 

parser.add_argument('-ga', '--all-spices', help="return list of stored spice profiles", action='store_true')                            

parser.add_argument('-gr', '--random-spice', help="return random spice from stored spice profiles", action='store_true')                    

parser.add_argument('-g', '--show-spice', help="return spice if it exists or search index for research suggestion")   

args = parser.parse_args()

#TODO: Handle Parser States
def process_args():
    #TODO: safe python password input for -nu
    #import getpass
    #password = getpass.getpass('Password: ')
    pass

@dataclass
class SpiceProfile:
    """Class for keeping track of Spice Profiles"""
    name: str
    notes: str
    botanical_name: str
    other_names: str
    major_flavor_compounds: str
    parts_used: str
    cultivation: str
    preparation: str
    nonculinary_uses: str
    theplant: str
    spice_story: str
    kitchen_creativity: str
    blending_science: str
    release_flavor: str

def save_password(uname, password):
    keyring.set_password("system", uname, password)

def get_password(uname):
    return keyring.get_password("system", uname)

def password_verified(uname, attempt):
    prior = get_password(uname)
    if attempt == prior:
        return True
    else:
        return False


if args.open_wiki:
    os.system("brave-browser pages/index.md")
if args.search_new:
    os.system("shuf -n 1 spiceindex.csv") 
