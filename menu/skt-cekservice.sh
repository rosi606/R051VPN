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
BZh91AY&SY%o�Y �_�������������`��  � @ `���ie���͊�*�@Qfpe�� i�2i�� ��2���dHLF���S�ښxiM1= ��4�� h4 � �����@� 4C@ � "&�Q�CS��4��1�#Q�  ��   ����   �  2  H���jz!���jcI�f��ژ@z� 4h �	�=��A�4��!t�Y�C�$,UZ��c����޺���B1����r4��"<4���c7kYt��,2��x�$��U���!���h��68��x<��ċ݃�] �ґA&f���3�����`�����1
�)�_Q�h&#�
B5�OP�>%���Q�Q�"�KzV�����9@���=�pP�:q*4�OBp����2Ad�γ�E���J&�sc��}8;�+���k�710-�}Ò�����-�!],�βY
Yedl��޶�(�\�27Y�s�Ŧ��ɦ�j��ap��G�4�D�4<:��=3��*��TL��t���f��X�䵣����� ;��p�}�lƈ����a���4֔Cf�Ar36���|�%�*[��͔����l<�_���q�@g~'d�YZ���M�5�	u��O��&��Y�t�:0ի (�ʞ�������^ ����Ϻ�ع���W6�s�
k�/�XM�h�LQaEM*;#�$��A���Yܸ�_CȤ�*^/W炂��ɪ��B�	 "��rFf���(�1$��Y��E��?Y�8�JD�l?B��J��Ɣ��a��������}i�;���7<����t1����jsQ�$v��_MLf{U�C�#$ɢW?�k���a�*���w��^�I�;�/�J_QY��c���V	X�����-��Ґ��q(/���21+;=�M��ټ��6`��d��`(�G���y Řp�i8�|`"!^�c�,֘6ش-M�k�C�?�J��$��:,��D,`d��.w��8⾾��#�ɔ;AC�ZD}����յ`������·;Kķ�/���IP�Tꚷ-,�RM� ���1�6<���n�H��@���ݚ����d-8��[D&�i[z����cxvp���g�X�z�p��1�~	�쨷A}�TC���
זq�r�Ų��e�A$�>�]��(�Z,1$A�7����6�cW�2���f<�*�Yi�G�b��_P��|@�Y��[����R�2ĔCr�q!b$6f{�,pWvA�Q�
gwM�<�&�o��k�����R�B�`C\�`�L��A*v����dp9���a�-�Zh���n���O����{��B� \'�٪6���+��]��)��q�y_��з��ޙ���m4h�.�Z.<M�ui�v�k��d�*atH+�o��qq�9���Kb��K�5�b_�%׻p��e0�P+>/'7�1�c/����3��!�r�������:]�,��V�����F�Xq��ْu�;��n�����P2�'%P�E�,�}���r�C0��"���M�mr"gCc[�9�LO�mJ�.��W���h�ĥ��$"4h�+J��D�W�ʌ"D89́|���<�$��e���E�G`�H��B�@{Vp�a(�T٨���.���2i��N��<�~į�BmJ`�&��H��j�B�
��k�bAv���"D�����C�SJ��8��>�i�[����n%�k&�:3z6�/HeZ���PP�,��_7+ps�t�4&�m��hm��m����l�S@�A�o)5O*+��S4���<�)&0m/`�4Fݴ���\�SM�J��%�94pL�"�IZe�P˛;[#U����L�%hU 	'$>�sm�� ��E�#5#�g3�y�9�WN#lÝ��d]�Wz�Mbj����X�/K��� #zrݤ��V& m�"	�>ÌAE��6�$l~$�^�$)�R7��x���rE8P�%o�Y