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
BZh91AY&SYb�J  �� 0 }���?�߮����P��    p�L�i�FL h	�L� @�ᦘ!��L��@4�F�0 ���M0C!��0�i�&�2`B����   ��   )�ɉ'�2SzL4#4L��h�ęB���$�� �c���ׂ]���Al9C��4	(�b�r��k[p�F�nk�a\n��<��8�9��~��|�nlٿ���}���w�_�R����&����S:3:�[}���)]Q^,qSE7����)?q�s� [����y�-�n�tr=g �ŀTSÇu�|\Q������JSr��X}��@��l^�����|��>�϶W����JRX��cn��� h�b���IX�k�g�FEu!6p��xH��H~�pAp�780͆�q�������1������Np���F��[c�?�.�����6^����3���N�2�h#!�Ь����dv���\-;����k	��:����/h��{G�v�Ֆ��&J~���^[��X2�4�d�����~v��; 㪘(�7mn�0�܀������5�S��24g�q���t݊3i�8��X��$���43���ӽ����e`�����r<���v� �_��n��X����t�7_j��cM����&�4��._CD1-�"�&Ѻ��hb�rQ�#��b���@�d���܆��[W3Q�����[��k�!���%u�0��C���f%n�͝�8L�7V���`�c�������_�����'������{ϑ��nmե�q:
+�f!��䱓N�.��
�쬚�:�V����v���������|{�_���G+��S\�Vn�_��M�����Ԥ��OAP�}�h�k!�MYF���|�7�B���G>D4�Hp��-���}:�NW���'V8H�k�Ϣ��`�ƿ:B�Mo����� �	߂������y�V���n&��������)�b��(�a���б��	�g��f�^;��j�7VN��͔�
�d�k�q�D!�a�[��16haӱ�FK4��ܛFM���W��àp��'ћ����B��4r7a.~�O�F�����7��Gq�����)��jP