#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYv���  b߀@y�&M�����@�P  昘 L L ` &�&ҞS�ڞ��   �� i���� & `�HІ�x�JoF�4�L����<��=��WJ{Qx���Un�;(�=`���f$���2Tפ����;�D��+f��_w(:�2u�ߒs�]�yvH�5�?(�т�vU4�C���W�G�1M�8e�h�N&�d�,��'�h>T��8��kHr�Ya�^A�=gYz{�sa��n��z���$�SW�#�:���+������t���v1��"���x'�v\��5�]*�?x`/��sl<��*��V�s��wɮa����h����6�Cs�<ϔ?G࿐�8�<WUr�`��L$@��V�a�6��A��g��@�P�����fHT~��$��&T�A�һ���!�3 �Ƙ�����6�[�������݉]��j�7�����!�"B"h2��@�]IzPh:��K{A��Y�ؖ`A��(oN)��X4 "��h�4�s�}�\W6+��6��z�7�D��6I$��[�۝l�������F��id���%�T/q�o[-CX�K9Q�"mq.���x�no���l��ڎ�7/��oKZ�=�q<è;��:J���է�.�p� ���