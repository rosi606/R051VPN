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
BZh91AY&SYlj=d  ߀D}��.�ޮ����Pm�֎�t:h�%�#�i��4�mLj���hi���OL�jzj5256�i��A��    H�@S�i��4=P�=#C d��q�&�a22bh�A�L %M4�G�A��4 �   � �4��ƕ9��EO;��\GM�c�����m����e�,7ͥP�&-�����|k��ʞ^��D`2�!�=Е.�C9>f�w���%�б�qB��o��hD*P�e��$�,�S5����ؽ<��_�5ГF�Z�v��L$�l���UW-S-��&HO:t���,#-����ց�,��*���va�a4zl�*(�b�r0�7��@�^Ԁp�J��-Jy��`e�,�TKS�.�F7łBpfW>�	�"WI���������%���/H�.^R����/��P_`�&81t�]E�~��!���͐����O��>��y�'3�~�BcD=��[�>I��V������z�(��l���=��l�=��WJ1�4G`p�I"���u���3PIˈ��c,����ҍ�$��4���U����L��UV EY�A�3���̽�ס�nЃ?�6���I^�u@r+#�Z�Ƭ2d���+�[)�#��<m@��6Yy�1e�{[Q�@ۦ�?ĉ���k���Ox@7H7��&
/���X�72�&���aP�/�}�P�P%z�߷�m0���w� bpF�^gl�H��=%���ZVr��Y�fܠ#6󵻗��	��K1w��oz:�3�Qv�;;�`�Qj%M�+���P#��/��Z��~�Vϖ8��۰6-gT��Q���G�ަ&�ct�S$��Ds�)�)��.P�F�o,̡�F����@����Eݙ⊸����ܢ
��V������HS;���$I.Bks��|R��\�� ��Ę��3��I�.dT���O���-e䴤�J4۳�\�ѹ�ܼ�>"���C���t5LݜfV��\zl�ie'TKJʥ(×����^�C��w�cD�1���Wɢw������XFT��˓�$d�N��$a�� j��h��<Y���5
3L�>A�,���u�WI�-P�0���tJ4<��^W���z	��A	�� b�X�Wْ�!5�����-M��\`��R�)����\@��>�T,'UL�ǻ����w$S�	ƣ�@