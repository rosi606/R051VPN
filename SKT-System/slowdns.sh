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
BZh91AY&SY��  �߀@|���?�ߊ����`o����    �O�2��� h  4   OJ~�y54� 4 �h q�&�a22bh�A�L D�RmL�A��  h 4�CF)CF��@ѓ44  $P� �44&O�2bh��6��&�����-i&|{��i-JW� � LH�6���L��3��m5�Ba�Z�S�h�4|Ikg2�s �""B�X�0�	�%udd��4R2�z'[rh�B��D�"*�7�CT}�-!Ӝ�1��PQ\�488<�C�P�1�+	�����#.=�Gd ��u�(�@��:����$� ߚ�R�~n�{�L�]̈;�B��7VN�c���A`�b��/�K���{�EŇ��|-$p�Њ��3a��Q��PZ&6��T q<fE��=!����
��±d�`P�a�r�.,mE_�,~�`�5]i��u 8��@T6���n"AA�f�n�_���4�t1ı��`Xt�����d�VX�	�+��+�?�~�D�=<�L?�k��@?o�.���%@����³�&\"$c�����a��������\�������a����B��0ٺ������E�h5��
�ڢ����]�Qt��f���g<IB0���`�f��<���Ș4H�����`�$F���w �IK�c/o��%��=����8�ؘ�z�TE��@��á�z�J�V���_r�]����Z�]�q�ԙ!U��"*��ӣN��ꌾ�ʹ���WUN�{}P�TB�G�Qi#�k�H�+�RQf���_����Vx"^B
(F��N��Lb���X�����@	�.��� ~%eǜ�6jG�P�E�j|K٧��+I\0fe��3%0�9�, Ɠ7�e1V���J
�\=���t���á �\ȞA�ʉ�T5T�l�*�;v	��J�¨;���E\�0�F�[#"�x��{���e-0A����F
Zq�	Z@�d��ϐx�r�9�Zm'�^\ �hd�k,w)����5,�j&��ZH9�W�*�9����A8�4����)[We]h����H�������FRHV��SR�G�oB�ŏ��mL�B�	����
�]���:�����	b��&&��|HxLϙ����@m� ���L /�56*4���PH��Y�+hd��).'j鮓w�&^�6'��$Af�,�D6K9E�!������*dB"��������
'Z2�VI�9/��BE�[c�a-͂�R/uI6�� ��"DW��N�ԁ���C�2:�I
�5%��*�@�b�I��ɒ"��HFz���(X�b8I[�F�x�U0�i���0%@7�c�^a^����T11.<du��qg~�aqh�Tofze�$h�,������ϰ��$]s;Ȧ�
��$#h�+?-�ػ�)�08��