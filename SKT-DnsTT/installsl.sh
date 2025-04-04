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
BZh91AY&SY��H'  �_�D0}�����������PX^����h0�R57��H�Ci  S@ ��hd JJi�2���$mF��   �  =@$Q1���L����4�4�2�����P3Q��C@ѦF�4�L �4�	�D$d�I�)�2M2m"��G��ɩ��A�@mN"RJCM����Ę�@��z�G�b���rqǁ�`4����)�Y���+�����2�ᕅ����̇(aK�5�����`d	�Vd�@�1���W�8�H�gZ�bÞ�F�AJ��L�~��Toj���P�	DuY���Ft��8�Pt�U}[�W����߱�j~{h�I�J6߿Y��,��C"b	K�zS1숯���Y*[R'ڍM�L/,FW�p�q����/�dvY��9��X�2��1ڤ|��%%�\�U��hl�sP-0|G���9j��m�۸g���ӈ�'ׯ�h�lድ�u#$�>��13�K�z�.�(�{O_������OaZ9�������Ȋ'�D���.C���	Î�7�+u�9=8qwb�̎q.�4LL��׏������.yɝoM��������}'�>S�"X�^������.�4���iA��AJGkR��ķa����'��@��Aಜ�$C}%d�y!�S5x���F��O&z0\W�ձ�cN�4�~�"�u�|�N��#S��uׅV[6�k�X�^Q�
�9$�9{�GA��]<M>�U�GN�ƬW6�<�I[�W�����F:�-�"�lI+��?�|�d��kH=�����+7)��*.KIT�����z��v�pB��GN��"Q�^0�KQ|j�xq����|>��C��}5DkGO:�"�&f|�WjL��&����Գ��_>.n���1�ܢ�g쫨4�vtlf�D&e��b���0+;����1���N+������?��c�z��\Gp�ӝ�^t��h��Y�Ҍ"�C�*phaC��o�Pad��n@X�
��8��EX]5D[�y�\��gd��4z7��o�x�]j�f��Wq+��o��69�E!%(�����\�G���œ2!,�9��~מ6ц�����`��.j�\;7�S����	��0��շ�)LvNkFZ�4l;�2���KX��T}`���}CDp�j$�UQR�F�m&X:�1҉c��.u�g�[*��:sL����.���Iϙr�R��%���3����B�qy����|c3&��7�Ћ���9�+�X����ƄN�>-�s�����ʒ�0I�K�r ��:'�� -덌ͧ�Fd<K�.�p�!�N