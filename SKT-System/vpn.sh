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
BZh91AY&SYM�]  �߀|����� ����P	��z�l��u��tuU��$��Dh���I�OB
bi�B=M6�j�4�4���        (�*{Bb���� ڀ��  mP�j��mS��=C�i��� �   �M&���z�1�2  �����kg����-=���)�/"�u�%C9���ܣ�1�_VR!�����8�!;���6��d�A0�l=\��� *��dq�y�Lr@ˢ��YM���o�*	�K��iV�(�uv�>���3x�;;'g���Z�C�{q��i�O��_6␐��`�5�vS�?RQ���.�;�0��5Q�7w���cVԾ�fj�u�f>�{w'��xl��G�f��gSJ���)_�si���T٧]1-��BP˳��U0��|��$E��P;(��rG:a���f�QN/0"\�uE��_Zy�H�u^�B#����s���
�}t�o�@� �$$ddw��9�O�ө��0}�Ǹ�I��DJ@��*f\�ќ�v-0o$���rӤ�z�^JA�.s���.���p!��y�x�a�5��Ch���'�lXZ\�X�]�4m�a�؝��*М�g/`�1�j�;�3&d�q2a��ќK6K��՗�<t%�:�m�ir)^?$TO���aU��-AA�KBX���>��&@�?��L\�Dm����8�N�"ZQVAH&V$��A�@��(r��,�оK�=��=0¶� ɬ'�V�'&����w�S�D��n�p^�G�NT�uB�yd�V��؞�1�c.�Eg�|g[���2� ���>y$�j�f�`QAFQ[�.�;�
��c��]�J�&��p����]1�
��q�V�+j�U�^Λ�˓̚���c��Gl��E9�ބ�jD3h&�$����U�%#T	
@��.b���(���D�N��{π�z�y�:�� U������2Ifr^]* Q�i�N���	��q]V���摧sDz���ע�Pr\��a�]�s�}Uv�1L<���M`ƃ�	V_x�*,Dq��<���{N�ٸ=⩍ĻCf����x��{/sZ`s���&�F޶��������iD3p��o-���Ħ�V¢"�*ex[��W5a"��l����R�(���$E�g �^�#���57 ��IITd��K�I$��������=�s|9�@����{s͇|�Y�nWT�G��<3qD'Z�p�p�G<�?$��'��Q֔j��J��v��IHV���oy�[�q�W�GA�$Ka�P|K�bF*�I�Q,�p����`�W'ic
Qǅ�ṫkǊ�!���P(Q,,A$���.Jj:1c�����G�Wlyǵ߫qsћ~xpXA;��J��|B$���1Ue�+&���J�q�^.����̓) ���QF��R-�w��x:;, �CIN��qm�	���J�������ܑN$o@