#!/bin/env bash
stylenum1=75
stylenum2=16
num1="$(expr $(( $RANDOM % $stylenum1 )) + 1 )"
num2="$(expr $(( $RANDOM % $stylenum2 )) + 1 )"
echo $num1 $num2
theme="style-$num1"
sed -i -e "s/@import .*/@import \"$num2.rasi\"/g" $theme.rasi || true
rofi -show drun -theme ${theme}.rasi
