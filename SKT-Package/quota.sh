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
BZh91AY&SY�&z a�lTD@}�����k����@�P� ��z�WT]i
�����=OMF�x��hi���=C 4G��h 2��$ɣA4b��O*z=M� �7�2      � 4 �  4 �    4 H�!6����Q�i��4�h 2 !� � 4 �  4 �    4 H��d�M51<���MS���A��M���P�Ѥ��jjz� ����#%�?YJ������^G]']S�ص��[Qaٖ�4��淒(���כ��%,��J�S1��N���߃���Z�0���~�7��D�Q�B�ďM
^��nePu��n����ޥF<����`t�74dhn춇83ԟ��}|?t�8�J��n�᛾�c�5�U>�oA_�Y��>E�1��q�i�cAYAF-�^��Vd��F��eQ�Q6�i�5�v��Z�j�A�(�����W�<Jp`�iF���쐗BF��>�]$b��	]s�yC��u�bm���[i^m�NjZ�C �����$/e�B"k\F}q$ ��i`;q��U]<�hGۧ�,����!��#%hO��6�^���W��DN�Y����HLI�w gɌ2��XZ�9LʨB�n��|��3�!���,�H��2Zc؍_JP�L���H-Z��$ҽ�Ii�n
�]}��ܐ9f$�3')�e�C���,r�j4&lB���am�S�9�	ګ+@�<�����ㄨ/)��zE�o�1�f%UG�p����,�]
3��r92�<F4ǵa+���q��W���ߎꄆ�U�i�J�Y
�Iii�Τ������CՆ��ȁ՗i���mF�e�R��@�d,
�$l���̒��V���ُ9cWZu)��ґd��&
L�|1�"��]l��c�^�=?[YI�΅V���``�3��ϊ��i�q���i�� �W�(���,���.V:DB�bA�a�Gq��ty�P�|V�L��z|���c�v
�^�|�̥Qm��R�1�O��7�}�iw�QGU� [ުҬ���x��� ���1�r�f/�&͕�H�ϐ���(�U��V��̶�t��F�ͻ�,�]ݭTK.lF��	�C��U�:��k��\eZ�P4�m��s��%E{�l�xc:���P�y�T�!�0�Ѩ�<^�,�x���W;F� 9�+���µ�ؐ�S5�Y�Ը�����滵��0� �m�Z�(��=���,�;�Nv8�F��7^1KA�.Ecy�6�r�(�H1.�1J��8,��],ί&Zhb�M0����!*ǖ�HT(c�N�����Dr��Jd=��d��V�����U[2Fh�b`D^� U-.˪^�H* ��X^��#ay�Z)v��Y$�v�&NJll(�(�T�*"���+iUP=�1��Q�*�j`�oj�ۘ���z "0"��o.$�ŏ�B	)gX����_N�^�)c��!�-��8�孯�D5(*Q0��;���T����hw YV�Z���]�jɢ�-|^r�x�J�2H�BP<�X�
���Pl��f*�KlJ��Ub���$T��a\�Q��TE咡L�D�3��
cCj�v��rM�/7�\�60C�hZ�WHd�k�e.��R�6�]�o�|J�#�-&u*��w'[0֌ ���1%�t��[$&�b��dK@���`	5Ȼ6M#|I�>J�\�^��u3|�BJ�8w@�ch�8��3I~�����v�\��+�FH����%��g� J�$��}�d��`��(@M+�DD
�n�7���X�rE8P��&z