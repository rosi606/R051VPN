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
BZh91AY&SYQ=  x߀ }��?7ߎ?���P=�U����L� �LL&4����L� �LL&4����$�Hj2h�M ��4Ѡ�E!4�iM2M�c@=#F���h�T)M�i�Dh�#&�A���w�~��?;���kA�r=_�c߁ɟ����)·aE�$�	����(&����?`��m%C�c(y���f\IP��� H��a�B��d�2�[Ḃ�J`Z�i"�y�J(����B��	�~>w�s\��<ҙ\�4��22\m��@�R�1�?��tje8��F�:�q�_���jqpa����Z��8����=���&�u�h�T��UF2��w˩�8I
�(&g�<��7I����r4�{#��r�w?7о&��:�v�+�n��8�(}\�pC�xZ��#���V_���a�y�9Qd�`kPlXac���t��Ƞ�s��	�Ē�v8�   ��}J�V��^��f>d8���=�ӰC@�7+����tJqI�ru�;��9�jo�(��m�n��e�   ��[ę9&a�+S�W�	����� I�驣����˛�I�u��MR32�r=/<��9��
�І�� J��k��m+b�,��E�Wz��3��[��:UɚE�oڵ���8ع������� �c����a��ܭ��c����ܮ��{��`z`6���3]oE���i�dU&�S�JL�jt�Э��!�l��W�'`�;��ܑN$AOC�