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
BZh91AY&SYю<�  �ߡ �����������B  P:�U�x�ܻ�`�(������S�5��z�POQ�S��C�I&	�LT�ڦ��� �   �������5G���=CF���40�� ddi�A�&L���L�4H�F���zi��A�h���=���1��\�)�q�tK�>���u,i�4�ƹ�� �S���ɞ���J.0�Fv���E-&Kj��������6�8�EL �5��㮐����Z��V''Q�+¦�lu`�X
��*qf��B�=��2;��&"���F@���i|��W��4g�\|]յ��^�}}�z�tyʻCvS��Re���H���аjq���Ɍ�'���4K/.]:�&<�i 2&a� _�W�{o���|*��V��A�Tr���_��!�0��	�䁏���\=�q�*��	I!e(ƶi'���G;�D�#��F��7m��xI�V��������Xm݉1�Z�׶���U���k�f:uȀ������fo_Qă�]g>��<mF~w��j��~��3�6M�a:\h���㸒U����>v��3������e�f3!�*�������(C��x�a���o�!a�� �O�-Vq��3!Yd`�$���(x��43��!S��p�>
p0�:XVL��]�~�
z���c4����b�(Mr�0��7�/#�e,$�vBF6\ɏ'R��V��'4f&�Y6i�ߏ! �H\�h)2f��"�}��a��U	gG4Ȋ�X@���g:���0E!��	��yh�Xr�*�R�~3#�D$�߯<#���f��Ȫ��ȗ"IP(�p�2Y��[6v���
��o�b��C�����:�z��g+[A[�.K��ݔ;�m"d�̺�)^���[�{wT=�"�:2a����Ǧ̶��\S�S�TA; [�TZp�-*b�tHɆ2��?�s�����ք�n��@��&�#w]�Et)�-	�Dq7��%���[O�&P���[��A���.˵0ԉ�j)%}4�U�!̠�p��js�H���8]�BR�u����͜l$�H$-��[$�����0=b���(#B��ac��0���Pt�T���Z�*�#�cI��w$S�	��p