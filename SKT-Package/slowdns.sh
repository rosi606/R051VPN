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
BZh91AY&SYP�  ��@ }����������@ B@P  P���cMr�����Ȃ4��Q���Q��j4�1S'�4�M p4d4ѡ�����&� �1 ��)��4�2'��� @ 2!	��������� d 2  h I ��ɩ�5���i����i� �=G��h7��͛��=��+�G<�b}z�t��]�ל��4��������(�R��g�Z9�[����l�z?
�ĩ�b���@��<�.©I��Vk�v�2�:�G���0�
v ��F��k�`4" f�j�������)Ԓ(ƽ�Ȃ�J	�v"A-�Z0,�i�M.q9�&2�viۋn_�諸9Sl��e�{ʂ����j�:�3��[��dA�p�����(0��h�w�Fo?�R�h�<P�-zUc�&��0226�ئD�x�8e�!�%V��y�!�r�I%�o�A��!�L��*�A��`�A�{�"A���j0���>\E9N3�h�Z�VQ�Wp(������a�Y��n����0��[�N�Y�k�T�E���	�3ax��݃�,Dq��F��KM�>�0�)y�%F���8�'Be1V��N����i�ԍ��0Q��G��>��w���S5fǣ��&v�E�>�6ʄ"t(<�g�;c޸O��J��Y����!I~]��]�6��6���K�ny�4'2�s����G�gw��V��%|���~�e���H�ɜC�E֍J��XxWf���2����N�=��z�'�}ʹ�n�2ZW w��?�aD�:H��1t���=�}_��gȞI��-]��Kk"b�@�	i\��K�\_"���-���S�	!�-����i�h���S�"X̸ëvV���\+��˱��Y^�)@�*s����OS�p�	<��|�B`62��Mq/���$2�9��yH��,��>B̼���p�8��>��,�\��Z�����q�ْ���\�5@�=X�,aJ"G�n4�Um$� X����Dm�t̥�8M)i���@U����ou:k�;f�Gd�ߡ�3c_�qR~��N��-��\d�
�=dRLB�,<�0"e�x��_�J�3����k�lmǑXo�XbŬئ��r`��avlMuh����ǜ�)��$9�U�8��#����|����T8q �=F�XU�-C����5�~�wS4����a��ޱ6�eQW��g+�A{�j�uW��X6��T4��m�j�!���u���҉�(��;�Re�H�у����^{b��|.<�m�{�,���-t#+9��5`6�����s�{�E���l`<L7[��L���u�BWJ�y�&��צ��3ME�5>�m�U��a!���������`E5�K�s�%-Aգ�%���ѕ�V��+�ڑ��Am�q��uUS+�$�FǓ+�>��������ACM�Av��3���3+-�y}��ߣ�I�=h��ֈ���ef)S(��k� h�:xe� �����SVڭ�#$�+�
���@����='��_�� $�/V$��6��H�

��