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
BZh91AY&SY��� Q��D@ ����������� ���@  @ ��}w=]�lWp{��b�G��'BQ	�b�&�FG�I��OM'�~�z!頛Q� �Ѡ$��56����z�)�i�  �  L���l�e1 �4�@    �Q&����4���6�M G� �2 M4�hhhdh@M  0���I@&�L	�(z��4h�@����z�bL�#��ᾂ1jV��;U�I&���Sr�*7��m�:t-�ӜZn�5:�9gM4Q9T�֭b�Jm!o7r#�%u!���SE%i(HI%�*p�'�VgyK��$.��ó�хZ,���;v/��	��g����*�U����M�֗���D��G
e�е������>�lA٫yL"�n��׫�-w���k���Ĩթ��Mgh�^�h<��oE�G�*=7���8r��@�s��D��֯���������9�@а��~F�l (wŊ���J�c7I�s��+(+�s�`M$�$�fB����s��S���i2�56/m6�Wm�ª&�6
��\�l'�=н�5��S-Px8�`�A�l���I1D4:�2c��ݻd\�+�g��H�Lq��2��#��M�0��1�1��6n�ڈI�"S� �(!T�רAɻ��#�JIw��'S慝�:��.��2��gn<l�sq�7�jV���c"3(�<:����$�g��;�!x�jMb2�T�xK��r�rRO��NUD�D^�;p`�һ�E�8'���Y�k���})�H��[��l��p��K�*ԉ[��d5������t7���ͻ�AX�kF+��;��+�io�߳�7.j���ea�q��aS����J��P���o�D) ��oaMu`{��{S����4_{��8�V2����9;�[%���""��q8K���$��0[��;�r�gIB7��/"1�(�I��eh�78�J�Ma+����>F89�P*��5A��U�X��0��nG�0bLtɆeg���p�/���A�1�L��C�zHݻon=�J��F"�]yǶ�+3��U=���F�m(�)�{�L�E�琤�w��B�gD���3$u����+��E���eÌ�O�@e�ʕ�M[űVB:w�6�nx�=�A��aP�˵��隺N(Raٚmis�K���R��*w𞞑ߖr3�h�p��8R�qf��Hp1���~�A�#9�c�$�H݉�c@Q^(�
��x�C��uZ�<��㤣���שf�kl�np����-.� �ƕ�4ߓQbGXK��9>��k�D�v ���-�*�ZGh�0YQD� uA2�+����{EG��E����B!*�נ�Co�L�"7#c�f �u�����-S�`Pzs���!)��t�':�H�[����if�u���w�^]��6��*GW�b�p ]t�+�*�!H���-'��Z-�[\yĔ2c,��E ��$�����Ɣ�a�L�������Aj��R�+Fv*��H�Y/N]=N7L��gƊ%��������KyU�#�9;3b�c��8W�hWh�R|Oں�^�Bl�d�\l4$�Ӛ|��3V���U�ϊhI�6D����n����`O$�ZlW���_�M�����'S�3Q��c6�]e� �,<]A0�},��$��$ u�GԦL$!��ͨ�A��A*��u������)��Hծ�T�'<���$�mD�W0)���.mOJБ8�Q`0�Ueu�H*5�X.���<h+�!�ۈ7"�X�O��W�Y�J��o�[� �)�e5ݚ9l�3P�!����jmZ�!B�|��=$��0�J72\o1M��"Ay�����1��f`V"���	-Tq]`_<(=J��Ӈ����&&�LF�(�&2�kvcM�
�T��O�Et�p�WI='�M#A�kd��Q�0��s.ȑh�!��<�ԆE���(�%r��tT6��wAX`�.�<�$�$�0�&託E1�~H��2���O����$D���� ���y��=�p�F�A���"�(Hvn� 