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
BZh91AY&SY�M�  E߀|�
 @����0�	IS�SL S��=OI�S��5541&4��#�!��d	DF�І��h��i��F�C�p�DDA�e�0��ҥM&%:0oPx�ʅ+'�(�2�
�є�rt I�-����Z�����;���q0�j�B�x��՜]��5)�}��B�enr��~5f[։���1IA9iTTW��۰�H/yk0�.E�]6xMc|-���Q���3<�����ˉ�
�1�!�q!� p��rV�e
�4"�t�ҥ0@�rq��yT/�A^@JO�w$S�	˔��