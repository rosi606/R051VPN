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
BZh91AY&SY��� ���E�@ ���?�������@�D@0  `���//{���z*��*	"Sh@Q��F�1��jz�M6P�4�	�ML�i��CFM4i���� ��i� @�M	 ��4��  ����d4 O�J���CM2z� @ @@4�h �@������" �4#@@��$�MO�(�T𦇤zLjd���h`=F�F�LCjMDA)�k�W�G?��aQ�J��)\�ZU��� ؟��g���N��� ��Y��Q|Cx���h(�,CY�,k0�(�����A�X�Ca��c���Kq+���;+�]+\&�x�v�f��!��s����fU�۶��4S|��e�c�v�ӈ��s��_IE�:��W(r��0�qJ�[Y&d�֙U��       �5-���N�{'��|�n�o�{�X�6�yW6��!!�W=�W����l��0�!B!8�ѵ��1�Є!2�iL��9�G�C37��29�������z�=Hoo��!���u[f��Hf�L1(��Zp�w}�����H� �寤y"�k�{G~Xz=s��HK�Xj P�v$r�H�R�Po��,+CH"&>�̅7s�&1a-i�@<�l%����!0+p��߆�H�b��Q�XY����S[p�!B�!�*��ʒ�5�R�oKEF`�P�����Z5���������9�9,�[��|9q�h���� `P��lɮ�Mj^6��d��3���{G�ϫt'\�c��_���f���A(�ZT`(	��b�	ľa�:��/��Ze���
�_�M�~;.PORj)�I�20�Jͱ%�Iy�1G+vl�P=%���81���ٿ
���!c���p���{`=��`���S�T�����+j�P�����5ՍI%BQ��:h*�5��I-lg|W7�p�b�����1�G�S�+� 2��uhvT�E��v�9Gy�9e����v��r����8(R��*XA��吩�8��\�$r<) "���ٔ�MApt�΄�]���1T�UĘ%񈈀iZ����CQGX�3�XHxzy��x��l�'R-
��C*�����Bp��r�_�'�/@A�A��'�A��Ƙ�Ww =�B�c�+����^��i�۬�{.�7�
 ��`�eJP���/�e���W���c�1�c�1�a�1�J��
�lB�ق;����AZ		
QH+�b:M�pVѬ����k�,��B��%o!��=�F�u(���5S�P�O ����y��(�E��������4t*��wl<!!eJ�}�c��EmM3mϷ���y]`;1���3gh������2��0�! i��ɥ�2�㇨ՠWE�=0X��n�WH0�9A�1�q������ؠ�8+qfp��@�5�N�d�5t
��-
��C�1�c3�$�J�u]c��d��GUEl��=aZ�dt�d��4�
��`��y�ݶP��I$!$�d4!x��
��%z鑱���E�w@�Nt�E�7>``��y��3� <�(0����r_� s�?�w$S�		����