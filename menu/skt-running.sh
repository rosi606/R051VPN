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
BZh91AY&SY|�6, �_��}���?�߮����` �   P��䫳���ۨHCSA��hi=G�#=A�4���ʛA(z�OQ�$���h�1 � h�� i �����      ��@��F ѦL �#F� �M   D��Se����  =F� @ �,Q$�Cd�A��5)�$2c�����?1�p�b^�*L�׌�h�8�gv��4�2g�&� 	����x�B���A�-�md�g��*�L����0�O�I�Lpw�3���$����c)^��O�]f�{n�j��B]�pM엞H�ĩ���-Z��̂?�3���t�� �� s2�8��(]l]�'ī���U���Ւ	[���OwP>��h<��_o���3�	��i��rFB�?59�&[���G��ͯdwg9��R��#��zA�����;�Z�|���p����}���4_��r��cc��:�j;2��	��ӳ�n�Gτ٘@�+�@�Y�J�)E]�5I���ϙ3N�%JH��*�C��%xA�h&��1Rjw7v�s��mpc��k�+��'	���3�9����]]*e��I0�mG)1O������."9��x�|�&[� %3�ʘK�iˆ�} �"��U7�1�ԫX�}�bp�H���Ĳ�%�"p�K�Y�KMYo�sv�(B!v�I����$G!P��n�P�D=X�4����a���B��P9��������\p:��6[؏[wc�a��N��Հ��D���s_����JO�Q��ivbA�|cC�m1B�{Z1^��%R ˈ�r"Ɏ�n|P2A�� �m��e)�5dƐ^��~C�ސ��i�9Ϟ��� e�*�Q�׋�����y�p(_Oa�j�ylt�Y'��b��;e���F�i�x-U�%��_0V�b��us!4�`��L���J%&l��i����v<��
VW�[���%!��-���5�fƥ��/�8��<ə��Ki̴z~=�7���Գ>Bܣ��/͎�n(fd�sg��w�]#Eե��א       ff�<��oc�n�fH�H/�+���+�c���P�^m�4	��ר�6�����0�" ��0�%x�*�l�V_s����=�������U��7=Ʊer��TH2pU�I	&T����J5��M�6�CI⍳BL��w�@#�B��

+�XPyg�`į�]��BA��ذ