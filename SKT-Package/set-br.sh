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
BZh91AY&SY�[�n  %_� x��s!�����@�u���L�5124b4&�OPdFU?�B0���d@� 1� h �   �$ɔ��b�������E,�B&�\��JB���E��pyY�6��N޶e
ҳ�S2Ar�K��\l��L;Ȅj8������|�^8YȏB��5�%�i�d�y���G
�w�k�գ6B�b�!\B�$0V"�q= Ġ����4�&�@��h�������'�P�U����\��
9Q�)	8�o�0�<�h�#�*Q ��I�&��Qb����y�!�܊�S~�Z_���(��_���MS<�J��D\�Rz��$��넰35�T��+Sd��X]8��B�8��L����T��t�aC�֔P}%�X�B��6i�7"��f�p�����;K�V}��!�D�d�P5��1;D^1es�Y��|�6o�r���rQ
J����ISH9/-��b
L�I�B&�̊���4R��Sˋ��]��BBo��