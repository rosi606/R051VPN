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
BZh91AY&SY_���  �_� |k�?���?���P���� ���=C ڀh  Ѡ��H6��P  �    ��=A��1  �M 4� �	���dɓ#	�i�F& � �!��4b���i����MLz&���_�{=�����(�^)K��|U\b�ק:�&U���C)�܉��j\�R�O�0q<�|-iC���	ƂH� b1"��N(GX�@��S�"àR��1��`�(d�h�����-Z�%�eI�6�?��S�o
b�h��Jp(�lI�@1�	����G�w����WZe/3���Hx6�c�\�4U���x��ӥQ?��?*Y��'��W2G2O;��Zѣ�U_y+����<#�7A������#]쩛�ȹ���FW\��ҬJ<��طGa��-�U����/U��<��`�V�9����"���f�����`�]�O��N.D��l�2����g�R�q�T�\R���12L�79E��%,h�%����0��*�B"�>p������]���T�m�d���!/{H��&o&����(�W����ӯ�ܿ�?�2��`��#3�w�ɏ��Qr�(7Uk)�p>�P���SF��eR#�j��owF	س)<w���ܘF�I)LB��v�����e��:D��g"�_-f�<�����&]�E=l��kb�&*�ڭ;"��_s,��7�s��z�wF�*�mo,w���=��^�)J/ԯ-im��:�������G+�������'����f�k��Dh�M��E��\[�̱'�nD�KH���Y\ܖ��;$`�S6ʥ��RLԁ=ڹ���3s����t5�0�w]yF�]H�7�|�v�00J��r��]���w�����8@����rE8P�_���