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
BZh91AY&SY����  b߀@|� C����@�%���J��m)�Q�6��L�P�hz��JJmM��L�!�      ���h�J~I�'����0��H�U���`Ώ�k_ H�7l���os��'���P���p�W2�����cw�d�{Vś�Eu68�o*_�oR,@��@�xrS)n��<*�rs#B	\�PF�QQ������(U��>�V
�o�z��Ev�y��1&�s,Mg�8�㍻���9�eJRޢ�oyx�A|�J�����ņ�������:�բF���IH\"hU�j��(�R�{�7�)
�a�v��3� �a���)}k�KО��	3�ő��eeB��K��#�;�Č�	2d�����Y|׌p����#Ɇ~"C�H�ĉ�QI��8�}7g�������f�D8�d���胃��$�O�C���rE8P�����