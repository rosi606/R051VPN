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
BZh91AY&SY�$݉  �߀@0}s��8��
����P��𛻠 4Ԧ��4hѠ   @C�A�ɓ&F�L�LSH���� 4 h��4b4I54i4hh�@ �L�	"��M)�d h  h�@����|�sI�S)e���b+�DhBD��_H̉�ue��z���*�D�4b4�3�Ŗ�`�L
�~�]㵙�^��m-56-6L���S @��	e,��iP��=�(K*[˵pj\W��q^M�r��D�F�BE�'D���4,��N���R�Ք��[�2��@�K�J��+)[����ء�b)-�ʨl�J���tǪ�8tY������pb�n��r�=flȂ��L����#��IW �-Ė��(B�؍�1LPpj��^`�D�2�	{�$\K>t���S�Z�4e�c��I�)�"��d�I�B;b���sH���D$B���;q��TD�gs�]�XΧ�%�����i��YYB �7580^��G�(�p�X Ezd�?~Wd���d�|b�"�bh+�/(�`Q��Z�U �	k]�X�m2����@3p-�y��)�*	��b����5a���-
 �ߎ��rϦ%Lr����9�9h�@ML����D�*F�c�;�6Ib^A�X�#klb��0�т@�e�Ƚ̳	U�	t��R���6m�mFW�Z�o�Q�\��"C�."���2�
8:�i��L�\�^dn�lѤ1 RJ��,�٫�dE��-�E\��h;Gq���i5,�:��^N>ǀC��H��`j��N�
�I�����V�J�W�X!�i�RR_v�Р���i��$6�<C�Ѐm�*��MK6^�yZ葮�SK� �Ƴ����ܑN$;I7b@