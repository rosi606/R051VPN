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
BZh91AY&SY-�u�  �_�]�}���?�߬>�ޮ  ��   @�����S)6�46��6��h ѣG���� H@�4   ��@�� 2h�4�dhbF���� J�M�����  � 4 = z�BJ�{��	w� s O�m��A���`Zs�����D�)"���\w�;��,�L��^���̺��B�r��,$�!aZ#��c�J/ ��
��` 
�'�Tڶ7 ��GE��zGH&��8�n����!��&�O䦕R��bk|��޷Q�����"��7h�rV��f�4סRH��yN8��:�dN9�E/k��& ����|	l�=��H�(��Y���/,
﷑�Hr}J�G0I9$;�Y������%�2Hͨ�F[F��"h��,ݷ��u�,���P3U1�ݱ<*��ѧi�D ���u�3xR���&.����@&(�O� & � �D&	��U��/���)�o�h