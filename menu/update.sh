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
BZh91AY&SY��*D  �_� ���%�*���B  P�o{���iE$4)�4h 4�� z���b0&M2� ���h0�?�UCCFM4�&F�@���RT�$ƨ�~��   �� �I4j�eOF�j=FCOSL�bh���_��ٹ5Qp<G��BR�C589�kꊜ�����C�ŊDA�"��_Ul��P@*& �Z�}$B4IF�Gߐ     ffg@C��`v��� �>q-b�$U� ��XӒ���P���ss�G�r�QG�v��)JS.2C�4؈�5�����@8�*e��S�tTx���?h �Y �6 �eFxHHHHO�
D�r�ЪB�!B�!ؔB�PmA�v����?�3�ݽ��â�����ry��ݸ�A��"���~��L�:O@�|G��:l�5BC|u��=p������ rB�؎�	rJ�q���By��f��Vr+�s*�=$�=/��f�g7*��/A�Cu�$�I-�z�sW�� �A�ת�\����h4�v9���f��5��?���<��Y!���ԩ=c�{���٤��!M�Z �54(���؃h�,Ģ �d��Dt ­���L�m���r����\X�RCkp� �^�� �d��_7�YZ@����ؖ� Hk�x6\��k�� ሯQx���^�1�����6�XA�*�S�4j��j=q+\"":Dr"���ȆL��YƃA8�&i$�I*A��.w 赲�I���� ��w$S�	-Ҥ@