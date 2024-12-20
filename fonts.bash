# FONTS

fontdir="$HOME/.local/share/fonts"

declare -a fonts
fonts+=("Inconsolata")
fonts+=("Ubuntu")
fonts+=("Hack")
fonts+=("DejaVuSansMono")

# Create font dir
test -d "${fontdir}" || mkdir -p "${fontdir}"

# Download fonts
for font in "${fonts[@]}"; do
  wget -q -O "/tmp/${font}.zip" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${font}.zip" && cd "${fontdir}" && unzip -u "/tmp/${font}.zip" && rm "/tmp/${font}.zip"
done

# Refresh cache
fc-cache --force --verbose "${fontdir}"
