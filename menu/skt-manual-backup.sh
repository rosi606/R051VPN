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
BZh91AY&SYu�V� y�� �����߯����`CŃ�   @ `O�"�@
 �$����55='��M=M��1z�2i��M4���h�C#4�p �M @ @ @ � hh�M4       2 �� 4� d  4  4  � �� 4�@�  �  �    $H �A0���T�e=O)�0���MM=G�z�Q���4h�����ۿ7���؉ؾ��C�3�������CY&Fy�`,bQ?�ڗ�i~פ}|�����>��_��g�T�����P{u��:��D4m"E�=�ԥ=w�� �S(k1>�_
�Z��8�;?��SO/M�.�˛�E��Kl�n��g�M��Յ��/�\[+	N��6��N�����!�M��ez��O'���ݑ�rE�~���'�>-jE盥3�y�C
�.HX��r�ŪQ���&��/��S[�Վ�-];r�Nwp�UN'E�J��Y�ǿ��FlcMDv4�H�L�!���p�����Wd��Wa��FeP�i3��֪��ra��eA?}�����������2l$lchڶ$1�O�I*"7��)o���M[��#�ӄ��S���^d3R��e#%���׉��r�:��9��4����4��	���1Z�0��Ȼ2�KCz�Wu#�@y��<����O��m�)t��J�1�.���jD3��jɇ���w7p�_�3�Rs;�QS?Ӕ��$!���݅��\P�E�u����MQ��c�դ��ܨ@����H[�?�$BW�6�P�=�^�1����qY��*q�[���!���0-ѡS~\��d�+n�
k��a��
c�X�4ɚ��t�ER����m�	V�QH8�I0hӡh��v�>�)������Ԣб$Ja[	���|�˕"ɲR�I���ff�3 �����w
S��w�N7��^��t�w�2�̝��b4.�	���dQ�l%/�?^٦��#
�M`�OX��KD˫�P6̜��͊���Mh�$`q}��I���JX�4���������4�@M	W�̾�l�-38_���z�{$v�5 ��[٤��q� ��n,��w$���7W	ˣc���0�f�i/N�(h��J�����Qcä02��<�= �r���f8H�t��K7�a���[/�5M��&�"Ec�æ�Ju-��I5���y��:�[�v����p˗^�j�f��'�7.֜>_���^������i�}���C�+1��u�1��iE���B\�4��:S��\��4\��3 �B(�! ?�A�ܷq�u��3e�
\�~T�+,cp���7I@��cWL�$��	H�D�L�$J��oc���o�DH,�W��*�ϝtF�O���_�ڲ�%Ҹ"l�m6�eiR�I����#*�������۾Y-��3�!1Z5�-sN��Ǧ�V�d���n�1]�z�i,��R�ȝ0xΦq�Y!�>vZfuк$ɻ1}B��%��u�,��y�i�\VED���n����*b�Z��F�UY���4I��<ٱ���΀�4)՗#cGU��	v�rA=�5R��w�9����?��s΄$��	�. B@{m��M�h܎��}��2���;�.�p� ��