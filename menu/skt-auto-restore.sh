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
BZh91AY&SY*oe�  �_� {�=%ߪ����@��D�!� �C@P �!�A��2b�I�4� �C# hs	�L �L&�  L�hI@�CI���4��I�����hGO�����1��F�򶄵a�'�`���\��;��ٸA����M���Ac�)_ZAh�p,���㲼L��V�n���js����)3Q��g1�ޔ��>\(/(Eb@��"D��w���cC�Ѓ��g�m&U$���ٽ���w`�jd`�g.��A(��"$���%N����A4�&LKb~6�-˓r��do\����u���U�eq�7�}p�?e7�v֊��&�e߈^�I�VV#�(��l85�Rlr5��� ��X��&{��sꝳ�yUBs���D�f1RgGn��^eTW���� '� ���Zy|���\�1��h�k�q�V�U#� 5�5��Ġ<��9R��:,�H]5DX�H&܄+��3O'JA�Q���d:�u�Ǻ2M�͏Ȏ�����(0H��\�63d�+q`<��l�= �qf�v���^���̨զQ�LAN;�?(���2�u͈��J�J���Aͺ��P�%pn���*��B)SC�O0@rTFm�}�@@r�/8��erak��H2w8��a�rA��U��lɬ�4���أ�\���]��B@����