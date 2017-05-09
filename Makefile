all:
	rm -rf prisonarchitect 
	flatpak-builder --repo=repo --ccache prisonarchitect com.introversion.prisonarchitect.json 
	flatpak build-bundle repo prisonarchitect.flatpak com.introversion.prisonarchitect
clean:
	rm -rf build repo prisonarchictect *.flatpak .flatpak-builder
install:
	flatpak install --user --bundle prisonarchitect.flatpak
uninstall:
	flatpak uninstall --user com.introversion.prisonarchitect
