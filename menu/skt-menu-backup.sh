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
BZh91AY&SY �)�  �_�|���?�߬����   @�Y)BJ	i���h  4 i�2=��(��3I���4 �  �� 	�4� h  ���  �&M��	���L����Ѧ�A�Et�x���l�����x���CM
���ۑAB��b�d�*=��ֻ#oA�z�+a�G�&S����ee����!<򐝒��b�`���C��/2 @o/�.>݉.e���D� �N��QD�1[@4��0�'���>v��p�aL�˜�obhT�3D;��ǃ���ڌA\�vcb%=��?7n�(<x9��*���
�$��9�LdͿ-���A1�X����X�7҉C�T'tt�)�2�!z����XuI���VT�-^_���r�[ә����×�6�R�Fi�Ɋp�<�2��E��5��ښU!zq��P�AKgȋ���MR�Hm��	�e�T��8i3h�ܦ9�͉a`�zrpц�8'�;�?�X�w-#?:f�-<h�5}�*UN�ʤ�@a+M	"{�	;�ad�#�!��U&���b,�4��P��B^F�W��(����)�yL�