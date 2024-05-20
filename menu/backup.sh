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
BZh91AY&SY�� 2��}� �����������PT@   �P�=ͷ5�+8\�k���D&LM4��i�S�ڌh�b3I���OI�1���G� JA0��z���L� 4  CC@H���OE3MM=F��b�2 4�   ����h � ��h  � ��EM4F��d=Q��6I�A� �   H�Bz�)���z��IJ|�e<5~!Ԯ��w�\��sj��Pr�J�Oy3�]ݍl�Kd`B*�����GE�+"|��f�FNي�w�a���l�'ٝ��ijT��1���{�#��L�Gp�mr�QD 4��n{���V�#P)/��*AR�<�}c��T�M�V-�Cv��K���ם��L}D3�W鑢5�z�W�b̿Jp��~�rsЖ`�9�H�](��c�9dէV�'|�G��t��]�m�Nf1�"٦ۧ�X�!S��[b�R��BR�01�6+�PO `�f�ي&�llr:Akcf/��*�ݶ��6$��F ��}���(�p�v_u#L�n�[��V��͠�|T,	�8o��m6Nu�nLv�T���"��
�,;2ՠ�)
�[
��s^���m �5 @����B0�@��m�
��h��%ITJ-�ңl�1��W�f�;"F�UuO9΂�D�b�NNX,�pf��2H���4��[�����mjѡ�����`��)r��.!���19�-���gQe]��'����y^r�c���٪v�j�U���Ԁb���/���!A��A� ��7Q�[+@VYV�E;�e$��c~��6vm#�ݰ��Gۦ�n�[l�8F.j`���C�4�UUO�j������w7p�v�*/��ݯt��5���P�����u=�:m�� 棬弩/�����*�W�-��%98���GDPT^�&d3��Y0S~R��v��D'��Kˮ��,�3�um���+�=��YH��Ϸ9"�H�H�E	���O1|���8�.�F|�D4�Q-g^�_2���L�)����lյ$Dȁa�bF�d�
ւ��݉�c(���9�du!�'#,"��R�Zb"=S.�"�4�;^Vvtgޣ/S{G2̅�)�����J�w�)�
���z�(;��τoW,ɟe���]�E .���@�V9bo���b&�4�D��B������a�˿3i/ea	J�K-�g���욭(<D�Bc7	a���["��)�\N�&r�i+4�T���#1�du����$�݇	A$����XQ��Ol�4�X�a�'"1�%qp�3�]d�њ,�@TGJ��Jk���I�VAjT��L��̂w�
��'��IV���B"$�p�	��R�5�����J����Yr�	��r�Է1��H3¦5l������r�i�F)�(�A'$20�]��"P*3f�fQ/2({(��L�\}7����)�ե�8�tD�vpa�q���c!sOR۠���k�k^F^���!n���$��n�����p�úJJ 
�Lc?��H�
��;`