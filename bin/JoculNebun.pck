GDPC                                                                               D   res://.import/Sprite-0001.png-4ba36b03720b98e07141178ca2f0a4cc.stex  #      i      �(�uv���	j�T�@   res://.import/Stalp.png-05bbabebafdaf56b3a3134a809a58b69.stex    =      �      0�	c|(�j�yC1>ӧ]<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex B      U      -��`�0��x�5�[   res://LiliacCangur.gd.remap �Q      '       H����K���L�5   res://LiliacCangur.gdc  �      F      ��>A.��z�%��h
�*   res://LiliacCangur.tscn �      u	      ��H
�"tj-�|t    res://RichTextLabel2.gd.remap   R      )       ���~�ngk��&>/   res://RichTextLabel2.gdcP      _      ����Ay*_�n�g-$օ   res://Stalp.gd.remap@R              gK7�u�9����M(T�   res://Stalp.gdc �      P      ��ї�n���KB��W   res://Stalp.tscn       5      �S�����b K�M�   res://World.gd.remap`R              ���z�����R�U�   res://World.gdc @      -      J���Y)�^�ī�M��   res://World.tscnp       �      ��M�Gn~�xw�x�i,   res://assets/sprites/Sprite-0001.png.import p:      �      ��SZ&���HM�{�(   res://assets/sprites/Stalp.png.import   �>      �      �B��z$�T�\��
l�   res://default_env.tres  PA      �       um�`�N��<*ỳ�8   res://icon.png  �R      �      G1?��z�c��vN��   res://icon.png.import   `O      �      �����%��(#AB�   res://project.binaryp_      [      n��#�F���I�|    GDSC       
   3   �      ������������τ�   �������   ��������󶶶   �����������   �����ض�   ��������   ���������¶�   ������Ҷ   �����϶�   �������Ŷ���   ����׶��   �����Ӷ�   ��������������Ķ   ���϶���   ����������Ķ   ������������ڶ��   ���¶���   ��������������ض   ζ��   ���������������Ŷ���   ����¶��   ���������������������Ҷ�   ϶��   �������������Ӷ�   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   �������Ӷ���   �����Ҷ�   ������������ڄ��   ������Ӷ(   ���������������������Ą��������������Ҷ�   �      �     �               Fly    	   Score: %d      �      	   ui_accept         LiliacCangur                                                          	       
   %      &      ,      .      2      3      :      D      E      V      W      X      Y      `      a      j      k      o      x      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   3YY:�  Y:�  �  Y:�  �  YY;�  �  T�  YY;�  �  Y;�  �  YY0�  PQV�  -�  �  �  �  Y0�	  P�
  QV�  W�  �  T�  P�  Q�  �  W�  �  T�  �  P�  T�  �  Q�  �  �  Y0�  P�
  QV�  �  �  �  T�  P�  Q�  �  &�  V�  �  T�  �  �
  �  �  T�  �  �
  �  �  �  T�  �  �
  �  �  �  �  P�  Q�  �  �  YYY0�  P�  QV�  &�  T�  �  V�  �  PQT�  �	  �  W�  �  T�  �	  �  �  �	  �  YYY0�  PQV�  �  PQT�  �	  �  W�  �  T�  �	  �  �  �	  Y`          [gd_scene load_steps=7 format=2]

[ext_resource path="res://assets/sprites/Sprite-0001.png" type="Texture" id=1]
[ext_resource path="res://LiliacCangur.gd" type="Script" id=2]
[ext_resource path="res://RichTextLabel2.gd" type="Script" id=3]

[sub_resource type="Animation" id=1]
resource_name = "Fly"
tracks/0/type = "value"
tracks/0/path = NodePath(".:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
}

[sub_resource type="CapsuleShape2D" id=2]
radius = 16.2112
height = 12.3093

[sub_resource type="CapsuleShape2D" id=3]
radius = 16.9812
height = 13.6876

[node name="LiliacCangur" type="KinematicBody2D"]
pause_mode = 1
position = Vector2( 74.9095, 127.805 )
scale = Vector2( 2, 2 )
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
hframes = 11
frame = 10

[node name="AnimationPlayer" type="AnimationPlayer" parent="Sprite"]
autoplay = "Fly"
anims/Fly = SubResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true
limit_top = 0
limit_bottom = 0
editor_draw_limits = true

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="RichTextLabel" type="RichTextLabel" parent="CanvasLayer"]
margin_left = 204.024
margin_top = 5.20071
margin_right = 261.024
margin_bottom = 38.2007
text = "Score:  0"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RichTextLabel2" type="RichTextLabel" parent="CanvasLayer"]
pause_mode = 2
visible = false
margin_left = 198.497
margin_top = 96.7351
margin_right = 275.497
margin_bottom = 172.735
text = "AI MURIT! 
Apasa space sa joci iar"
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 3 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]
[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
[connection signal="screen_exited" from="VisibilityNotifier2D" to="." method="_on_VisibilityNotifier2D_screen_exited"]
           GDSC            b      ������������ڶ��   �����϶�   �������Ŷ���   ����׶��   �������Ӷ���   �������¶���   ��������Ҷ��   ������Ҷ   ����¶��   ���������������������Ҷ�   �������������������Ӷ���   �����Ҷ�          	   ui_accept                                                           	   	   
   
                           7      ?      G      ]      ^      _      `      3YYYYYYYYY0�  PQV�  -YY0�  P�  QV�  &�  PQT�  PQT�  PQT�  PQT�  �  T�	  P�  QV�  �  PQT�
  PQ�  �  PQT�  �  �  �  PQT�  PQT�  PQT�  PQT�  �  YYYY` GDSC             %      ���������τ򶶶�   �����϶�(   ���������������������Ą��������������Ҷ�   ���������Ӷ�                                                 	   	   
   
                                                               #      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  PQV�  �  PQY`[gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/sprites/Stalp.png" type="Texture" id=1]
[ext_resource path="res://Stalp.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 7.60254, 15.4223 )

[node name="StaticBody2D" type="StaticBody2D"]
position = Vector2( 210.304, 21.2144 )
rotation = 3.14159
scale = Vector2( 3, 5 )
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -1.10571, 0 )
shape = SubResource( 1 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]
position = Vector2( -0.85736, 0.342952 )
scale = Vector2( 0.714207, 1.56587 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D2" type="CollisionShape2D" parent="Area2D"]
position = Vector2( -1.10571, 0 )
scale = Vector2( 1, 1 )
shape = SubResource( 1 )
[connection signal="screen_exited" from="VisibilityNotifier2D" to="." method="_on_VisibilityNotifier2D_screen_exited"]
           GDSC            �      ���ӄ�   ������������ض��   ����ƶ��   �����϶�   �������Ŷ���   ����׶��   �����������Ķ���   ��������������ض   ζ��   �����釶   �������Ӷ���   �����鄶   �����������ض���   ��������������ض   ��������Ҷ��   �      
   Stalp.tscn     �    ������4@    ��C                                                           	      
                            !      (      5      >      G      P      ^      l      r      w      |      }      ~      3YYYYYY;�  YY;�  �L  P�  QYYY0�  PQV�  -YY0�  P�  QV�  &W�  T�  T�  �  V�  �  W�  T�  T�  �  ;�	  �  T�
  PQ�  ;�  �  T�
  PQ�  �	  T�  P�  P�  �  R�  QQ�  �  T�  P�  P�  �  R�  QQ�  �  T�  �  �  �  P�	  Q�  �  P�  QY�  Y`   [gd_scene load_steps=4 format=2]

[ext_resource path="res://LiliacCangur.tscn" type="PackedScene" id=1]
[ext_resource path="res://Stalp.tscn" type="PackedScene" id=2]
[ext_resource path="res://World.gd" type="Script" id=3]

[node name="World" type="Node2D"]
script = ExtResource( 3 )

[node name="LiliacCangur" parent="." instance=ExtResource( 1 )]
position = Vector2( -0.896591, 144.778 )
scale = Vector2( 1.4, 1.4 )

[node name="StaticBody2D" parent="." instance=ExtResource( 2 )]
position = Vector2( 210.873, 20.6456 )

[node name="StaticBody2D2" parent="." instance=ExtResource( 2 )]
position = Vector2( 217.163, 264.709 )
rotation = 0.0
              GDST�  @            M  PNG �PNG

   IHDR  �   @    �   sRGB ���  IDATx��_h]ǝǿ��ډcla�HYY���jn�)�)��b�6q��Oew_b=�f�Җ�fi�]�(�ӗ�,,��l��Ȕ����bvcЃ�D�6��+�A6�c�
w��9s�3sfΟ9����t|����7�?�w�AA�G4� A�3q��yg/�VH;E�:fq�6�(��O��PL���[\�b��"ɒ�2��m�Q&>� w�� �9Ț�٨���)���&.�A�����	�e(� 9@�90M mT@�v��*�/��9pY���A�pJ�!�/>' 
c���5�1J�=)�w$�t�A�����\����Ϡ�G�����+@r�]|Կ�����/| �o�����(�S!��13zc�� 1�Hۨ�����/� (����δ�,�W�[����'����NY���:�O��Ig��$n|��m`��$�m�D��{��3yj��]��{WBs�1v>�<k�`.��g�3jo����]����F	�� ���j�B����:?|���`� Xh�H:��&�����Z;8�!	
%Q��"�L�8�[�]�ϯ��1q�P�9�X���A�O㳮ƿ:ȟyD��
�������[��S�;� ��+g �[��T@�N/9��h�  �9d�K�NMEک��++K������wٸ%��Q�V���D����Ϡ�W$6���@����[��+ ���U��`��'���XYY
~ �J(��V�a�}����B�6�D'�Ue<�?�?�?�������Ц�ʭ;W�Y�)������I�y���#�G����T/2��V;��m�[�c��:�m+��*��y��'�c|%Դ�*Ï���}���,)ρLv�����=��]��=���lW�s�t�K bՂ��dU���bu Ñ� ��vY�&�o��Ȓ6�+�j4)�2��>��'\{����Lbe#�p���ې�QE|�?��S��>�9��٬ [��]�ۈg��*{%��пr+	|{���	�$s�>��=��:P{jP� (&��m`w��{LH ��sȷ�c�Ñ>�
�������;��� ����������?������F��]���?@�����d�gu��[@� 9@x� �O �&��˗�;�����u }�|i@����~����y���>��NՂ_O���S��;����Y�l� �6 r�� o J �9`z[\h ��8�� �0�����'�����-��j@`�.���L� ��������&�@���A�KH	��	 #�6nn���v�Zplp`/���߻�6C���`w 8+�g�'��A�����d�g5��g�x�f @���u5 r�=|u��;`�� 2�/�w����P� ���� x��۸{k3r����tp��������)�=տ��O񯇯������S l��E�j ��@��y���0v����x�f�2g�Î?=q@�i��;� #=�? ��Y�~��% 쇭�yt/Ҹ|i��<��@�?~�����[��<��O�?���@%eWx�zcvfg��0yj�{�o~���Z��Xi/c���V�jp���:�b��$�NM)%�E?_���?��⟀G��I�m?�g`��[��	 %�js ��;�ǻo� {����9�\ �'R{�O�⟿��9��x��� Xs�S�wh�����'[��������'�O��_��_Nɟ׫�ko � ���� ��� 2T��;} X\�����a�9�}������)�%�E�K��3'�d � S���M��C��9d����o�^�Ņ��[�z!;O���S�K���.�=���0q�d�)��`�������#�� ��H�`g��
�3�]&���cPYwom�|�	  ��~!t�j�UBgf�g&� ��W)�e������:�|����ǿ| p彋�{�꯭�	�O^���6>�?�?�_�7���0�* ��I���@��~��i̽�+l�����̽� )��G:�:K`��j]Ŷ�[�m����q��m�/���^��^���Mܸs�k��<V1�Hy]�^�l����K�s]~+{�}6 9�t��� �2@S&��~L���2��� x���طw�<�{܎}{w�gOG�+{̶pY�:�l��ҩk�sY~k/������@���O�u�������r7���3n�y �z��xt�_`u�����^ ����6�"n���I�sϞ�����={�o?�|�<[�J��I��ƅ7�w�<yo��巟y>xp���; �c��&.�yH���G�˷����+U������o�sU~�o�et���S����L�1� ��?��W�h��o�d��ȓGC�_����;��^���T	�2�&�o�lt�<yn08���J �n088�}������砤�`$I �	�����ͫ�@~&���B'���e ݹ(@����Wq��`7��(����z�o�U�q��
��-PF���#'����E�ߦ���*�I�qW�Z�� Lg��A ���\�$]���7��{����o} p�7�N��o��B��䍥��O��?�^V(���lP����(�Xɔ� ��k�ϫRZtP�D�J	`dl�3s��C12:�Ņ��e�c��_�p��;w .�/{ ���0 (=^�"Uֿ�kP��{��6U���-@���*t��Q�-�*]��[�Y��q�@0���$(ql���34<�.��;tk���I��L��M%X��#;Ȓ^Fs@L�}�T��K���I�1�3� kWK,^�U��AuyT@\�?����4p1�H��
�n����ĳ��0����C���	`汪nG�P%f���q���C���	 �xc=KE62���C�τ��o��8�?�1T9�e�y�M+���Lk��p9�ȹ]��s㈌E���
HH~���gl�C��1H����C�\�Fk@#���ύ!2��+���G��+�<���q��M@����s}J+��pU�^V�0�@v��C-�_�?R���S�����=�k�����UGDL��{o���s�E����"���R<��9Аߊ�K�_�?CQ�@�
���#�a{`�6���cq	F���[b)$�/�fl�][oWV~H��w������M�����O+��b���U#R&"��g�b�����+���^Q�����/T�2�R�U��@ @9ȭi��+��r�Ih�Y���y��;C�Ad�!,][�ݒ/��I����f���@�����J�?�
p1{���Tv�'��R`���^A�<���EPGw�yG�3Ҭ�@&������8X>!��IA��	���|�#�7���~2&"��ǆ�u[��6�����غm�8�?[�����g��_��_���[ ���*�c ��W��R��B+�h�Wj7M�>ut��|�r���/tq�;2��$  ��Rp���4	�as�S��s�+�B���ظ2&<�ٙ�N�g�����!�ֆL~&{s �G��3���y[P�_�wz�d��P��Q��������L`�������`��dBIM�X����V�)Z�q��E��=2���::&�fFF�ǘ$��߶��-�� m�?���5GI�@H�|��� �܂�#N����������/K �t�os��>HK~�g�c�L�g���ꋜ׷�/��������M���K�������N��	po16$�����̅�~y ����'sq�%�*��~�UC��T�JpI볊��d��
�Zu�ѿ�>�P�P�����̜rX�h h�$��,.�Bki���7�_i�=���x
����� R�Sá������V���/Fœ�p�Uz������T���� L����%.V�J����:r}�x��6�?���m�-ޮLK {od�:�*|[��=������@ِ���]��
ſ.u�u��2W�%
�f�bɚ	/�&��4��v����Ǥ�0��Z* I~��D�����ٷѫ�/i|Y����`cvfN�m����	��^H�<��ߪ[!Lu0�ؐt?�*��ʉ�_���&(���!��%��N�_z�E%g*�����\��.���ϫT�mn���`��:�U��M���n0�0J��CN[!�Bs������3l�����*ƿ,�-��TN��8aM�osq������&� Jŕ[�*��/˭���翉�3�/D�U�ҭ�A�i�&�.�/ۣ� �_����!P�C�wW�_��?O�Ȍ��&�pW �򺵚Bp�:��.8�8,$?�V���-a��Rn�gL~���vkn�Dθ�lQ��/s�bŕ L�o��4q���-9�!��>��y&���\��W�s��0L~��M�� ��%�3~�	�����DWȳ�S|u$m������Q�����p��8�Y���,�֨��ŗ�&��?Pq����9����>���SG�>�1$�V�J��;񔽐�ŅV��+U�_[ok����SGq��A{I�ȯ����^W�K �/����R��/�-iW��٧�{��7U�RR}�N�����ی�mN+�*���$�ND�j��TabIPZjm����8��yi8=}1��G���eɏP�SN eKh�[n�/x$==A|������z?��y�����Y@���ج�^w�����M����+�/+.���o���<��ш{�h�;t0��\�Ɵx��4 ��W�	�]�f�?�G27��7��hS�i�@L@���j$Kr����~d�p��A�PV�bk����G]�ɪ2�GL�Uސv��&FF�1=}��Ѿ�F�F��1=}#�øwwS�Y�K_,��$����D����V(�ݧ����ܾ�;0�� #�V������& f�W�	�pL�֪<��� ��-��(9�!Y��;sj:	 �����b#5���&�",A]�������__���ul��d���M$�$������˘֎*.ٿ.��p,�Y����� ��ud� V��� ��˽ �取 ��
���V�?�����9�� Z?<�{��f( �{c�v"���c{n��{}k1�gѿD����p���� ۠(�[A�3�ya�URY� �u�<k��P���п��F���G�P�_��dwZ�d�]��ſ0����������Å�?SL�?U��|�"���ܻ��* @7��ww3Se��_<'�E��~R�VW�UD�?���*�
�?2TA�H�r����C?�Pu�[O~��/#�*�X����..�Dك������V�6p��U���NR���1��0������6���6�
� U��ݱɮ��ߓ�/�۶� ��R�T�0 �Q����۲�t�@�����Q��5Ǥ��,�HHZ�q�O:���gYޘ{\���d�qB�d����_���?S\���J���;mXB�8Et�j��DF}G��Կr_q iX���x�8W򚛪·o�Qa�p��)��������J�"cuDF�U�4\u���y8@ ���,k�T��U
_��9u�e^(��C�/\���zFe���@�w�8�S���� ��{������	�p��^�lU���XƜT)���j��f[E@��[~���W/�e�uv �)�ܘ�Y���b�7��lYM�C�A����O�Ϭ⟫�_!�h� a� ������AAAAAAAAAAAAAAAAi�?RCW�{�0Y    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Sprite-0001.png-4ba36b03720b98e07141178ca2f0a4cc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/Sprite-0001.png"
dest_files=[ "res://.import/Sprite-0001.png-4ba36b03720b98e07141178ca2f0a4cc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
          GDST                 s  PNG �PNG

   IHDR           szz�   sRGB ���  )IDATX��?
�0ƿ�A�Z����� ]E���:z /�&�@�U���Ҕ4$M_L���4�y���44$=���~9 �	#�gy܋��Oo2�K |eTP4qS I���F1�(# UI��;H� �0���� �m��p�� U�˶{�.��'�)@�l�'4��s���n' ��� �`��"�B���w��u1l����7-P��BR���/�� �;]Z���D���\�}]�b�&>b�..B  �۸ �I�,<פ*��A�@���
�2�C��|{ e�D��P    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Stalp.png-05bbabebafdaf56b3a3134a809a58b69.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/Stalp.png"
dest_files=[ "res://.import/Stalp.png-05bbabebafdaf56b3a3134a809a58b69.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://LiliacCangur.gdc"
         [remap]

path="res://RichTextLabel2.gdc"
       [remap]

path="res://Stalp.gdc"
[remap]

path="res://World.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      
   JoculNebun     application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     debug/settings/stdout/print_fps            display/window/size/width      �     display/window/size/height           display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d  )   rendering/environment/default_environment          res://default_env.tres       