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
BZh91AY&SYT� 6  [߀ y�W?oߊ����P�w�� 9�&    � 	�4��``  0m(!L�1 �h@4���� L��?@$h��M4dz�PEH��ja4ɦF������A���mަ���*J؏1I�ϝD��fL�
_E�Ju�5��d2%[m���jU4RbG9��29�Lb�P�bj��tǫiP��C�In��kI���m�~�1ѕ*#�[j���O��o���څfزJD�_�YN|�L�!0�1e�4���i0z��?�����h74ty�!���?���u(-D�!*
zQj=���2k��V �2�y6Y}�����u�fa��K$B;���
���x��$��� p�^���qNN����K?�s\X�X߿�r�^��h��
���A��YI��/{1,u2l|J�5��Xlrf$:����`������@�̃��ɛh��G��7>,����{���tn6��@�9>l���q�W�FL�6�DJ�]�n׈X3go{��"�I����j���k5��u�m�[Xf��9�>��\݆���b
 Hjlrƥ�1@6sg�m�RtrS��~-Na��j0����=og��8�K�q|��v���d����?i�'cj��{����@�L���a�!�!Y��`2Bf!�@g�K7A�f�7?���с���\2f�77%�Ok�d�u�������[�w�{��5���ןc{��s����`�]m˼6:86�6 b����u!���#�.�p� ��@l