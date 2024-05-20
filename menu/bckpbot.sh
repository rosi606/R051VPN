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
BZh91AY&SY)�J  �g�� ����������@D@  P[ږ��!,�A%MM��ShP�S�Ѡ�I������Ć����@d�F�@ i�@  $"�ԏS�ڏQ�L'�hf�P�<��d@ `���@d�F�@ i�@  H &F��d��L12�)�zOS�z�7�!�0&6��a��Zla��|����M��&�1���;�t=�4�R�Y?�:V&#%�$H
�q�٬yW<�ݫ�[7����4j]�#-k\�����l���m�8���!Y`�Q��]a�L�_�ѳHf�5��.����E��Q���9�$��:��d�N�R]�	����B�<����)E	�WI�HV�LR>2Η�jd��Q8�0�V�����erOև��v�
�ָ�m��X#�oWSp����?�u�)&��i�dwX���F��u���sX�����%p�a�|��'t��ɃHD��h	�Sb'�Q%2��KĔxG�]����T���;��-���4�u��.�1]|��{����`��v��$����_�A�n"L0Հ�`����	��=D�j�)�g�Ҿ��I��H�~ۧ�h�,�Ą��2�_f�|����ã�䧯�@�ϯ4p�lv,Xu������ad)�u�oܳ&,�G��r�Ԛ�J�~��wF�Fnq�*�x�љ�=���%}��z�7���(q�Y�Ȳ�,��	0�C�"�J�gty�b+pt
�`f���3D7�
�\aw�������Ī ʕ�C �
�2�&&9��d��,�NL�0�a#�;�/)c%������z �F4��qQo��&R`���Fl������Kn�CV6�-��l��l��RT|8��8�#!8[R�5e��@8�)���oVlx7�����^�Ȑ�e�� �OF���T+R��A�*�=�#�~���G��vx�H��33Q��u��X7.�_u� f2g���&��������T�!(D�~E���U}x�a+-����s�@�a��S��^4Y*�#�ܪ�n� �rϤ���Zi�*�O6$>�H�9V�̔�{pȕs��|A!I��8b�laU�W���gd�#�ڟ�c��o6樇���C�C����L�� ` E�� ����"�(H�% 