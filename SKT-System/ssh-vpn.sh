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
BZh91AY&SY��D0 i�vp@ }�����������`k��v2��]��ve'*�T@�  ( ��	$#&&@Jo�5?D&�驣&L���M��G���P52`A'�i��SQ�A� 4   44O�T���  @       D�4Ч�O�SҘ��1���� �����hp�ѓF�hdd0�2 dh �2 � � &LBi�Od�4�ؠmA��hi� ީ��
3�Gc ��d����������|qu�������{~�Q.d�o
R��'}?+�ޖ�Q��A����v�71��I0�n v�Y�B
ڥ��PŖ�``,ಗ��"��"ʋ?�]ۋ*!d$6�� �/�'Nk��ė4*�5 Ā�VX	3X�m�{I�wg���k��vێʵf���Z��F�m/͡O/�o�[�U/�@�ϽŪnaxz�('h�Ӗ:Bhg	���L��]��9	�⥢��:MȂ4�e���EY��@��X�G1�a�Lk��hC	���f���=�k����_?���T�\�^$jP�Z��/F��E Z���2j��%���[2�NgM�ĵg��R��M7S - �a���!�웣/��P�x����F"�s�=>�<C!���И�"ov�Pe�qW��9��w�8�L�Q�f�4���^}w�8`���'���9�X��.��`�����*�o�1�=�V�]�����h�9�T�o�OgBE�9/zG���~A; 7���+Ν{��D��g�DF�x��O��������t^���Λ��}<z/����ÖI��$�1β�\){�2���[ݸ��-�bg��(�+Vw ,Z�
a%�JR�ԕj�E1�=����x�r�ԀG�a�Sn4���+'B�"�A*�#��«~�E_����׵��l;�t�,����>��@pƏ��{ +d�ۃ���eX���F2��Z�a�up���FC
�e
?~x�����qi�Ĵ�|��=�d���JK+._��`_my�Y�
�(�J��a��� ��~�7A�_��g�u������0*�&�����Ц�۶ؚ��w$#r.p.�"rAʒoD|�@�vF�I"/�* �k����}C��� 0ѧ �I����P�(>�T ��7/
1�o�I��~A��\��2#�S���>��&�^V��K2װ��@�^6$5z��p��$��I\����QTn����z}�/�$y��',-cl]�k��N��+�IG� ��hI���P}mu�{��gE4Nn��P��ll��Q��v�6n��Z����6��&�hR1�Xh4���o����xW4�����K׽���;��h���
o�Ӯj6�#*��#��� $�T +�����@�SsR�V�܃
�CFy�Q���!�ý�P��e�������J9�I~ԭ�ߛ���җ��#(�3) �xK�AT﮺d�B;+�?�D�i�����c���a�xB���o����E�J�W�]��n<�z�d������v�oSW����[��LS��<��ͬ $�ۘE.��JR)����-���j�����3@��<"�������8E�������y{��~Y{<����w��F�q�������q*(�mKSN��DF��M~G���4@�� �KgZ�Kz�e=�ssG
G�]5�$�{��t��T{��&��������X��}��ֆ�4CT$o��LٖA_��F�(j� ��Zv��I7�_L"Ć���I|����`e �I4��R<r?^�(�4R��ZPH��������
��#q,���E!b-�L�'<6. �r�愌la^dBaX��Q�����r�š�RVv�jI�TTdʏ঱���w6y�2$S9����Rj;޷��~$�0��eT�A�ؖ*�u�]gAd0��+7����ߡ�ưAIrp�����0~sR��ِϋB>CX�3��@��!�) �0�A�--��č��~]{ط����>�?%���=�C���jK�1h�Cz;7���}:���YrDv��^��4�͑	�Lh�%t��p������{���[$�����D����,�AH��@���4S�Wb�� �J' ���I��NbB�$�c	HH1�� Bh�`�=�puTу���*��%�vEUcaD�a�7�F�i�F4=��!Qp��p@Y^L+�eP����
L�7��Ë�4Hy�;�
�9�e��pR�C/$-�`A.�_R
ֶ`���$uJႅ���L�[��a���Կߝ:�E]��1е;;�vP8|�{�����N�{��dQ���R&LbdM�z]%w2���I3�]�hj*�\@С�KXoű�65}�^Ϸ��u��q���� 8����<�IV�*�[hj�����A��#ԴAۀGz����U�w� I�i�-9�w[,��؁�������W<�~5T���"\����[Qd �%�O��B�|ڒ��mݯ2�@��,BpLF��'��ք�_Nf��$�7��^��[��np��I�M�N�X���м���W8/�7-5ֺ 8l.�?E��:��]4����k��_��#G^a�4�W9�� `������wm�K����8t�]���X����<�sIv��"� �&����L��*�1�G����^�*�N{�xL�02��/'��B��^Gw��L���4 F���-�.���D�6�`�zTg�i�Ǹ$d���k�q�W*�L&d������Fa+�D��֋ÌrXТ9�<�`�ן��*.\�dQQ��5�v8��
~^�2�F��a�t�=S��F��0R��%\"�up�y��B)$ç�V��1��ޠhjh@�Ŗ�
4�`!*�X��:��
T؅����p�PXa�M�Lxe��SoYD(gQ��29�VJ~�g��ӄ-DH6L�.-z�k$"|��'=�(=Ҽ����*�-�UB�؈Q �Y��
��3-q&ʡ5���V@EՋJ����'^�^/CX8��xh��HZ�Ԍ��қ� ҈\bb��:k�\�^e����]jZ+AA;V�%*:FYV��P8-?At6nb0���N�0�ݚ��4`&�XXM�	�a��÷�dY�Ad��Ϛ<Jp[r�2%r�!�$�=�	��V�@R��*6����@�N�G&��GgS)1�	Ņ=�q�@]HX�Ӟ�O8F �#T�]�ژ=H��3Y琅_t[z̐ɠ4���I���>��u��}G��d޸��g����l`���I4���A��Ϭ�i�l��E^>����LjD�FW+!.A�F&N����fk��A�����t�����a�,�i՚�1��I޽�<q�d~����d!���t�H�\:�Ih�(��yD��#5F'��.�Oe"�f�j�B�$�M]WL� 8P�K 4&z����Vh�����0)Rۉ5(���"�[ �b�҃8.B����Oh�J���� 4� T �B�`�@Ӽ�JӰ\`��2E��B��4O�ѳ3�5]6{\f4���@��0N©|� ���-�8cY廣7~�����P;8��l<�,͆���]��2��d�4!>
��MPN9��*ȮjU�] f�	�J!i��H�����!#�J2cl%��ځ�t�H�j�rs'S�TYTP[a�K�I���pk��4�Ϣ����kZ)AFrՒ�0`��v��;���I]+Z�m$R�n՚�a¡�\�IT��°��X��J�dd �Rb+kd茊ҋ,P�M�T��ۺ�D�i�4�FC��~HF�@mP��`�,]��[Q�FZ���*�=���@���g-h��\/�OF�0XH����r��(���=/tY�䫝d<o���м-����+G�
��,N2�wT;�X�%֔�^���T]��γ�>Ƞ�"�pu�Hm5�>�	D�W�2����os"
���z�����7$O�%�p�c"�a}� �\܎?PqCLk�����h��d5F~����h^���e�UYT/X�s���>�c35��l0hF�1Ohbd��9֑����\n��EܑN$6�� 