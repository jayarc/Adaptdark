#!/bin/bash

rm -R ~/.themes/Adapta*
sudo rm -rf /usr/share/themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
rm -rf ~/.local/share/themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
rm -rf ~/.themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
./autogen.sh --disable-cinnamon --disable-flashback --disable-unity --disable-xfce --with-selection_color=#939393 --with-second_selection_color=#7D7D7D --with-accent_color=#C1C1C1 --with-suggestion_color=#BFBFBF --with-destruction_color=#575757 && make && sudo make install && sudo mv /usr/share/themes/Adapta* ~/.themes && sudo chown -R jmartinez:jmartinez ~/.themes
notify-send "Adapta theme finished compiling" "Success!"
