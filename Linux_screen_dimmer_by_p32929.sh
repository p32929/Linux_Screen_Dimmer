# Linux screen dimmer
# Made by p32929
# http://www.facebook.com/p32929

# Taking value from GUI
value1=`zenity --scale --text='Set brightness level:' --min-value=1 --max-value=100 --step=1 --value=10`

# Zenity Scale GUI doesn't support floating numers
# But Gamma value must be from 0.1 to 10.0
# So, dividing the value from GUI by 10
val=$(echo "scale=1; $a/10" | bc -l)

# Setting gamma value
xgamma -gamma $val

# Default gamma value is 0.1


