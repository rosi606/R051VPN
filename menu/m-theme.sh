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
BZh91AY&SY4�S ��]�@ |���?����߮@ f�  Py�R�c�	EOP��i�SL�4 ��MC��j Q4z�C@         DH�iOSi�3MF@ a����Q������4h&������щ��  �De0� z��i����4 ����o�wx������Fl���S$-"�[��P�%T*��#A��I%A%��~y��cG�'������7�iPgܜW�)�"��q��ID��ԝ[��e����M�k����B�ed�e0EQ���.	EI��J���[$��y�!X|sU�a��TM��F	mke��f[�=��ܱZä�ae�^bY���Ȭ��v~ƅR��24���P棺b�k�e��c�����(�u��
� %U)SZ��E2��B[�]�m��6�oC}t�㬈�VTC�ԂX�f�p�����V�$|Wr�L��8=��c�{������Ll&D+,��[�ږ�iP&��h8��0F~`�#�1"#����j� q� ��90�!�nRJ�'K�±��Q1_I����J����@M���L�_" ��(�G˔~���h��0X��g^ȮĦ�lU$a���.��瞝sO52McTG#ܘF(����P�*�x��IA���q���w��;��@��C�ㄽ|Xr7��.�H�c	_9Y�vZE&���ѥ$��6B$�aŘ�8+Ky��Aj�˦R���/;N�z�b4�!O=X&��4�i�.�z���ۙؐ�,�4���B8ARc3�ńP6G���Ri��o�[�`fe��ض��=��вq��P`�!Ah����P�pV����J
R �m�	�1������ێ$G������"'«����A�#0�HI�E�b��(��H �h�M5�.�p� i��