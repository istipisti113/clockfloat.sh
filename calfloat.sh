#this must be set in the config of sway
#for_window [app_id=\"calendar\"] floating enable, resize set width 300px height 200px, move position 810 0
#swaymsg "for_window [app_id=\"calendar\"] floating enable, resize set width 300px height 200px, move position 810 0"

#if swaymsg -t get_tree | jq -e ".. | select(.app_id? == \"calendar_popup\")" > /dev/null 2>&1; then
#    #echo "Window found after ${elapsed}s!"
#else
#  swaymsg "exec alacritty -o font.size=15 -t 'calendar' --class calendar_popup -e bash -c 'cal; read -p \"Press Enter to close...\"'"
#fi
a=$(swaymsg -t get_tree | jq -e ".. | select(.app_id? == \"calendar_popup\")" | grep calendar)
if [ -z $a ]; then # -z means empty
  swaymsg "exec alacritty -o font.size=15 -t 'calendar' --class calendar_popup -e bash -c 'cal; read -p \"Press Enter to close...\"'"
fi

#sleep 0.2

#while [[ $elapsed -lt 5 ]]; do
#    if swaymsg -t get_tree | jq -e ".. | select(.title? == \"calendar\")" > /dev/null 2>&1; then
#        #echo "Window found after ${elapsed}s!"
#        break
#    fi
#    sleep 0.018  # Small sleep to prevent CPU spinning
#  elapsed=$(( $elapsed + 1 ))
#done

#swaymsg [title="calendar"] floating enable
##echo $(swaymsg resize grow right 1500);
#swaymsg [title="calendar"] resize set width 300px height 200px
## 1920/2 - 300/2
#swaymsg [title="calendar"] move position 810 0

#echo "asdfdsaf";
#size=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true and .pid?) | .rect | "\(.width)x\(.height)"');
#size=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true and .pid?) | .rect | "\(.width)x\(.height)"');
#size=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true and .pid?) | .rect | "\(.width)x\(.height)"');
#size=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true and .pid?) | .rect | "\(.width)x\(.height)"');
#echo "size $size";
#width=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true and .pid?) | .rect.width');
#height=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true and .pid?) | .rect.height');
#echo "width: $width, height: $height";

#cal
#read -p "enter to exit"

#cal;
#bash;
