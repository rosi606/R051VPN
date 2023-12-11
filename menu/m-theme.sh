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
BZh91AY&SYR��m V_�e����?�������@D@  P�Ý��{�V̇f�������H&�!�PѣL����A�h h��$�4�M4��d�I��4h �@4bh2�z�4$�46����2A�!��  "�   @ 4z�F�    4�"���$�O$C�d�C4�z54i����i�:A&�݃�	/C�W������EB��B�x���a�4�o�JD~z�>��)=D�@�{�^0���hO,*'1�y�m�c�a`_|Pȷr���� m�Y\
�_�XL\�:��e<�xOA'��I�E.2&���1Z<��6��b�+7ʱ��G�p�o�;�[Ɖ$�=�}�,nvp�z��K�v�$���f�CX�.	�!�ӓS�ś�k��\�\�3{�BJ$��)>�I_��!
�)�ߌ �L�ϟ+��n��g�B�%�s��c�"̤�>!��%YK �� L�(t�g@��S��"v���bg����u���/�}@B��"���Ԉ��㗝$ٲIh��[�Eقņ=��d��(8<��̶�m������l�|2�D46�&�m-��1��8s����LL�@$�9$�$MI$��fI-By ��&rΔ�"!ac�$���uvT��*a풅/v�%	 =�:Ea�mw]3=:���8�$�����{�	: Gc� ��5� ���dT����T�D4� �	�s�@�p��K�-07��o��x�Nֱ:]�9p,颫�M�a̯-c�/�AKSD J�U��I�5� Ѳk@vlUJټ3�����Q�� g��.uv3,`�Fʪ�c�>��͊.���?zp�\��K��[hhЪ�6��[�A����G�,��砪�y�5!��E�E7���\rA,�[��PY3�uA����^\�����-��`�l�p$x�J1� �sH�N��TYR/Qj��)Ot�Zu	(b�w=)��D� 4�I�󌘵]� J�~¨m�?�@�,�@��G@���F;wK,��$.�ԉ�`\�eN�KDE����f��˫H�55�#(ւ!� LH�#�����A��᎛
�^���n��I���|X�m���v ��G��,@���{~~w�C���Ǘ �v�LW_�=���MGps'��Z�-iFВ�*��`a����80.��OBc.T��ӏ�s���Z ��^�c-�6Anu-xJ�ba�ۤAp׻cj����f�����V��y5��Ԙ*Zf���P������0`e��Gdwv���{}
���t��	/l����9F��gV�=@�N�\8��@)E$c�IX��"��*��B�>qHYPC� ���¤���X@U!R!S�rE8P�R��m