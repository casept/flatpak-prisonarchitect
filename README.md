# flatpak-prisonarchitect    

A flatpak package for the humble bundle version of prison architect.      

## Building     
First checkout the repo:     
```
git clone https://github.com/casept/flatpak-prisonarchitect     
cd flatpak-prisonarchitect      
git submodule init     
git submodule update     
```

Install the needed runtime and SDK:        
```
flatpak remote-add --user --if-not-exists --from gnome https://sdk.gnome.org/gnome.flatpakrepo       
flatpak install --user gnome org.freedesktop.Sdk 1.4      
flatpak install --user gnome org.freedesktop.Platform 1.4          
```

Name a containing the game `prisonarchitect.tar.gz` and place it into the `flatpak-prisonarchitect` directory.
Then just run:         
```    
make     
```     
 
## Installation      
Just run `make install`. This will install the engine only for your user.        
If you wish to install systemwide you'll have to run       
```     
flatpak install --bundle prisonarchitect.flatpak     
```     
manually.     
## Running      

In most desktop environments a menu entry will have been created under games. If that's not the case you may need to log out and back in again. If you still can't find the icon your DE might not be looking in the directory where flatpak places .desktop files. If that's the case you'll have to run `flatpak run com.introversion.prisonarchitect` manually.

## Accessing save games etc.
For sandboxing reasons the game is configured to save user data to `~/.var/app/org.openmw.openmw/.Prison Architect` instead of the usual `~/.Prison Architect`. This directory will have the same structure as it does when Prison Architect is installed systemwide by normal means.