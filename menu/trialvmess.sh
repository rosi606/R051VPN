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
BZh91AY&SYuXW  ��@@ |��/��˿���@��n�h5�<�A�4��h � �h� 5M
m4���221��@ �D�Q2lDm0@�h�d�I4��)�=@$� 2���=	=A�L����<���C�N�0�Ë��A:�gj��N�����#��]�F�[w㸤=��SS�J[�x1�2�1+0+#xql�o	8MTU�$.z^�!8�&6��R�F���h�U����y`@r�����<}�d�"�f���G[�'(�	h���s��@#K���5�0�{5_��cnl�N
?�
I���<X-Y�<��f�����ެ��<�H�X5�bU�H�f���J��C�#8N+��7��yEP	�'	�C�
�h	�r��#"��bJ7oy3��.��h��#3PPc(���kD���>=�(���И��Jk�47��j4I#!JL��)
A��U�����z(&7��s�ķ�0��9Dʎ��,�e ���&l��%��R�w�K�M�(��T�*k�V�g�
>@z���RG�R���Ta�<�J�5 BBS���B� EV*��V���p`Z�+Z�|qڈAJ$��a���9��`��T'p��n��N0(�1�+�9��y��9�,��J�*�R���֝���3'>ӁvsWtN�קz셲��[F���)�۪¸