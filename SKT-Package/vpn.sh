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
BZh91AY&SY��N�  �_�}�����:����`I�3JB�:�ɜ��d$��T�=G�����馣��4F���ڞ��h4jSC&CJyOI�����@ � ��8��&&�&L&�!�4�40hq��LML�M2C@h2h`�mBM4&��G�i&�h@ �  0� CD�h%4���2��y&A���<S�u���:z���=̯��~%��JW��Go�r�5~�}ȣ���zќ�(8
v�Ȕ��o��]��69�(\bFm�sȕ��d�̹^:lU��n���4�8a�M�遖�׼�&S*�ˏQ-���^}xL)��2vvN�c���ԩ
�ΆL����eӀ�39	��=���#3���ؔ�׎�,����h�W�?}���ʭ��2��͇���Ƃ�<��X��Ө�ʶ�*�s������|�]�_�R�g�ddZ�~M9c�M�W�K̴1� �(j��ϩJ���R��a�x��\ɕU ^F��ಥ:�B0�fPD�2�@�GR�j(�8�=}Ao'Ɯ8p[�cci�ڻ�^P���GU�%ީ�Ա-$�00K�G��8T��U
�rEЦ^��xIUO����LȀ��-�i-�q��u��FCj�H)%
�Lb˿�p����~���5�q��|��Bi�L�{�(�s��	��g(��m&%��t����ݮ�@���������yUeB�'��^���{;�;�cf�s�Ҋ��0�5$�f�C��n���_򬷧��	n4���o�����MYUH��D� ���C��a��A�m�K���؞�I�V�:=aE����	�k��s�Ҭ��g��3�:�����L����\��ʩ�]�N����Tݥ���q/@(�mP�a��3TV�3���P�	�w K��q+�$�gJ(RV��c1T㦱*�瘢�Mx��N`V%�,��i7Vݵ�8cn��]50\�.��xa�A|�R�.�f(�L:@�����,��˅8���B2C30��neU������N���f�MٷT%!-)�(s�����x�7�z���Uc^-m��� ��^D�����d��j3�#4�0[Y-�|*wo�-S�c�3Y�j5��C�4�1�
ح�B\7��kB�^�}�'z�,!Q��{NNa�
��t�P%<�$[S¬Fq�k*���%����P���d��Q5�U0���c
E@q��C2즔褥�<��p�ĬN�+��Go*�]8�"�]�E@
��E�	c'�%�a�S5eY��i�C&B�QkfhbcHY�4�R�-L7ЋE�|)�7S/�7�Ea���J`�]�q	����QSLg�!����Μ� ɕU�`hu 5@Ƙ�'%�H豓��*���RT�@��5E�į,/r�
��hX�Q3��G�w��q�-f��<��xx��<�y�� `"jW)'�i�N'PV��!�S4U�&�A�k�*�%:2c��BбD���" 0-�+tX�um�V*�К*�ص�{Ȭ��RU����YOt�ϼB%��\2>OY�Ƶ#���,r,7�hz�JcDQfd2L�$N�:B��Ы@��a5b���B�A�$U����0�'5/X:�����=_���)���t