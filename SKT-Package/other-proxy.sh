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
BZh91AY&SYx�F�  �߀@|��?o�@����Pg�t�̶�۸dD�f��I�ɩ�Dm&4��F�P��&�1A�1 a0�H���F��4ɓL�z���� q�&LF& L�&@F �$��M�z�4S��SF��i��ڂ��m�/~�-��<�m\�I+?���̛+s���C� `���ɓV�����6\�rpD4(\K�����}�]�lȈ���f6i�2�u���L�"�"G���/�<��l����;�D�Т�0�ߤ��խ�s(H��H[��ruHK]PM-u%a���� �9�`C.�D4b�����B�%!��U�S$��}�t�I�D0w�i��tl`gb,���u�t��@��*׾�>}���9;� @4���N�p2��l��5���UsJ�z%��w����:��$׼���P�Ql7������Yuf㉬�����Mz����0�F�P3��;s�R� �O�I"���S����ޡ�����ׁ�_�&C�^XS��|.͕0ZF��&�dW M�~��]C�H�g��Xd:*��W���p����]Ҏ��_S333pvQMCA����
��zC�"Bo.���Z��>�d�e�a%�F���x�Z��$�zHF۔4;V��C��Z#$��Z�A@��q}�8����0��@Xt	��qψ?S�++�HA��DłփD8`@'E��gV��֖CXb];bS\�\��ȹ�0�q�,c�Bbo����i�La&�I'i�"��^5�,aU�cIM�ޓP��|i���&�0�25G���i���J��_A4(#�C^� ���@�kn(�;��1�9i�-�Ӽ2�����r�q��^�f�;�x0=��$�t�f5E>d���Li�)!D%"�i�.�HF�@lB	��#V^�F�б`�M�ІP�L.�ҋ�zd�Άb/�� �	�X�F $��@R����ЪI���A��<�{9T⤈!4Gx�2
��+F��d"�����H�
�� 