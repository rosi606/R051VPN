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
BZh91AY&SYZ7�\  X߀@x��?oߊ����P>z  �`&F F&&	�bi��`&F F&&	�bi��`&F F&&	�bi�Zz�I� 4�@dF�10�I�12LF�~�ȞL)�f)�M����M����Z(��ޣ{�͓C��]M,8�֪��=���J�5�ŝ�����vDFf��9�2�}:�
X�l���(��A ���b`l="�Gē	��!�zG����8���z�c)逝�s�*I����Vw=���̔�H�zh'1���F����e��:�&64� zZ]�7@v�'[KIS[�`y�Cc���5��oq=c������ś6���s$2����>c�i�������2t?�Ӊ���C��9� g������v�g~�S`63a����?cF�ő��v#��;Nϫ�py���<��b��Ðȗ>C@�����a3�񻱩.]-ф�f��ɑ�:��cCc���NG�V�w59sG-�F�ټY�X`���#s�@����ɠ�dM���F�od�Ӥ=��sC�6���q�Q	���~�\����a�ט�X����3��ݵ�in���d&֦��9<-r��b��!��C`^5���C{����:��3�6��A'Yc�#��!�֠,,��t�=��@������d�;�/i���чz@�D�ik�Ԅ�:\'����1!��L�$���c����i��pH,H���# �ؓ*�(f�7H�!Cژd�\�7���.���q�c�h�3�����˕��ߩ-��������hh{{'��F��]��BAh��p