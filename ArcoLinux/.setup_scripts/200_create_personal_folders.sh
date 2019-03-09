echo "Creating personal folders"

[ -d $HOME"/Personal" ] || mkdir -p $HOME"/Personal"
[ -d $HOME"/Workspace" ] || mkdir -p $HOME"/Workspace"

[ -d $HOME"/.config/i3" ] || mkdir -p $HOME"/.config/i3"

[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

[ -d $HOME"/.local/share/icons" ] || mkdir -p $HOME"/.local/share/icons"
[ -d $HOME"/.local/share/themes" ] || mkdir -p $HOME"/.local/share/themes"

echo "Deleting unsused folders"

rm -rf $HOME"/Videos"
rm -rf $HOME"/Music"
