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
BZh91AY&SY{X�  d_� }���?�ެ����  D @zsn�'nBQF���54P� h��<��@% ��52C@Ѡ@�HSIz��=@��@4�$�Q����    �S��@�`�˸y��#�<�I��Z�V*�k�%q�|@~S�X��_�<r=Af���t,<�x*����y���5*R�[F8ؓ%�M�L���
Q�"˨2[d]k��Ų2�=�f0AFg��c@jcA�K�B�X���~i��Ŧd�y�R��I;=���M8�u9e�8b�R���4LUiP�W��@�B_y��9؈�e##�^/1M�R�
l�.,�D�P�;�X�Rv�7��@{ (��xL��_=ϯ��l�w��,I�F%��SC,"%F���� ��g�{�" �Uʫ8����d���Z-]-V�Y��UI�L|��ЀĢ�!_��M+Vc*�[���.�~:!�[C��HD�q$��.�i�\8��k��b�v���*6V
x�i�+H�zD]R�EU钒jpnF��bN��,��A��r@��5�%۴�6r�����-�	��E�Z�$P-@Ь�M+%岦� buVJ�A��Q6�O���0i�ŋ�b? ��I�X�rE8P�{X�