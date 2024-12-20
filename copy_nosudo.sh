cp -r ./Xresources/.Xresources /home/pablo/ && xrdb /home/pablo/.Xresources

mkdir /home/pablo/.config/i3 && cp -r ./config/.config/i3 /home/pablo/.config/
mkdir /home/pablo/.config/picom && cp -r ./config/.config/picom /home/pablo/.config/
mkdir /home/pablo/.config/polybar && cp -r ./config/.config/polybar /home/pablo/.config/
mkdir /home/pablo/.config/nvim && cp -r ./config/.config/nvim /home/pablo/.config/

cp -r ./zshrc/.zshrc /home/pablo/
