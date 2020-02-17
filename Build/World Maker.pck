GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�_      �      d�a;1s���mыei�-<   res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex�[      |       5D��n�5,wWk�-   res://Scenes/Main.tscn  P      �      �|�B�x&+��/�Y9   res://Scenes/continent.tscn        �       �_�i�̆cg���?�   res://Scenes/map.tscn   �      �       ��@�#�|��+ Z�   res://Scenes/node.tscn  �      0      ���:�"���}��F�   res://Scripts/Main.gd.remap p      '       *�e�R��_�������   res://Scripts/Main.gdc  �      �      h�wR�ML�fݗTX�s   res://Scripts/Map.gd.remap  @p      &       ,����L�)KW��G�   res://Scripts/Map.gdc   p       h      6A.�YϦ��H�    res://Scripts/continent.gd.remappp      ,       �tYQ�����2TLj    res://Scripts/continent.gdc �5      �      ����O[��&����� (   res://Scripts/generate_button.gd.remap  �p      2       ���"��H�10)�w$   res://Scripts/generate_button.gdc   �;      D      �Y�K&�Z�S�Յ�g�   res://Scripts/node.gd.remap �p      '       �8��K ��j��7�   res://Scripts/node.gdc  =      �      1y"X:ߞ�QV8g    res://Sprites/node.png.import    \      �      M+�c5-a�G��CE�`t   res://UI/map_mode_group.tres�^      6       ������U�\��H��$   res://UI/map_size_buttongroup.tres  �^      6       ������U�\��H��   res://default_env.tres  0_      �       um�`�N��<*ỳ�8   res://icon.png  q      v      ge��@o�7�|AZ   res://icon.png.import   �m      �      �����%��(#AB�   res://project.binary�~      �      ]x�_�#e�����<        [gd_scene load_steps=7 format=2]

[ext_resource path="res://Scenes/map.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/generate_button.gd" type="Script" id=2]
[ext_resource path="res://Scenes/continent.tscn" type="PackedScene" id=3]
[ext_resource path="res://UI/map_mode_group.tres" type="ButtonGroup" id=4]
[ext_resource path="res://Scripts/Main.gd" type="Script" id=5]
[ext_resource path="res://UI/map_size_buttongroup.tres" type="ButtonGroup" id=6]

[node name="Main" type="Node2D"]
script = ExtResource( 5 )

[node name="Map" parent="." instance=ExtResource( 1 )]
position = Vector2( 104, 0 )
continent = ExtResource( 3 )

[node name="UI_container" type="VBoxContainer" parent="."]
margin_left = 1.89075
margin_top = -1.52588e-05
margin_right = 75.8907
margin_bottom = 228.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="map_size_label" type="Label" parent="UI_container"]
margin_right = 74.0
margin_bottom = 14.0
text = "Map Size"

[node name="small_size_button" type="Button" parent="UI_container"]
margin_top = 18.0
margin_right = 74.0
margin_bottom = 38.0
toggle_mode = true
group = ExtResource( 6 )
text = "Small"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="medium_size_button" type="Button" parent="UI_container"]
margin_top = 42.0
margin_right = 74.0
margin_bottom = 62.0
toggle_mode = true
pressed = true
group = ExtResource( 6 )
text = "Medium"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="large_size_button" type="Button" parent="UI_container"]
margin_top = 66.0
margin_right = 74.0
margin_bottom = 86.0
toggle_mode = true
group = ExtResource( 6 )
text = "Large"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="continents_label" type="Label" parent="UI_container"]
margin_top = 90.0
margin_right = 74.0
margin_bottom = 104.0
text = "Continents"

[node name="continents_box" type="SpinBox" parent="UI_container"]
margin_top = 108.0
margin_right = 74.0
margin_bottom = 132.0
min_value = 2.0
value = 12.0

[node name="generate_button" type="Button" parent="UI_container"]
margin_top = 136.0
margin_right = 74.0
margin_bottom = 156.0
text = "Generate"
script = ExtResource( 2 )

[node name="smooth_button" type="Button" parent="UI_container"]
margin_top = 160.0
margin_right = 74.0
margin_bottom = 180.0
text = "Smooth"
script = ExtResource( 2 )

[node name="HSeparator2" type="HSeparator" parent="UI_container"]
margin_top = 184.0
margin_right = 74.0
margin_bottom = 188.0

[node name="settings_label" type="Label" parent="UI_container"]
margin_top = 192.0
margin_right = 74.0
margin_bottom = 206.0
text = "Settings"

[node name="Sea_level_label" type="Label" parent="UI_container"]
margin_top = 210.0
margin_right = 74.0
margin_bottom = 224.0
text = "Sea Level"

[node name="sea_level_box" type="SpinBox" parent="UI_container"]
margin_top = 228.0
margin_right = 74.0
margin_bottom = 252.0
min_value = 2.0
value = 9.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="apply_settings_button" type="Button" parent="UI_container"]
margin_top = 256.0
margin_right = 74.0
margin_bottom = 276.0
toggle_mode = true
group = ExtResource( 4 )
text = "Apply"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSeparator" type="HSeparator" parent="UI_container"]
margin_top = 280.0
margin_right = 74.0
margin_bottom = 284.0

[node name="modes_label" type="Label" parent="UI_container"]
margin_top = 288.0
margin_right = 74.0
margin_bottom = 302.0
text = "Map Modes"

[node name="Continent_mode_button" type="Button" parent="UI_container"]
margin_top = 306.0
margin_right = 74.0
margin_bottom = 326.0
toggle_mode = true
pressed = true
group = ExtResource( 4 )
text = "Continent"

[node name="Conflict_mode_button" type="Button" parent="UI_container"]
margin_top = 330.0
margin_right = 74.0
margin_bottom = 350.0
toggle_mode = true
group = ExtResource( 4 )
text = "Conflict"

[node name="Elevation_mode_button" type="Button" parent="UI_container"]
margin_top = 354.0
margin_right = 74.0
margin_bottom = 374.0
toggle_mode = true
group = ExtResource( 4 )
text = "Elevation"

[node name="Sea_mode_button" type="Button" parent="UI_container"]
margin_top = 378.0
margin_right = 74.0
margin_bottom = 398.0
toggle_mode = true
group = ExtResource( 4 )
text = "Sea"
[connection signal="map_generated" from="Map" to="UI_container/generate_button" method="_on_Map_map_generated"]
[connection signal="pressed" from="UI_container/small_size_button" to="Map" method="_on_size_button_pressed" binds= [ "small" ]]
[connection signal="pressed" from="UI_container/medium_size_button" to="Map" method="_on_size_button_pressed" binds= [ "medium" ]]
[connection signal="pressed" from="UI_container/large_size_button" to="Map" method="_on_size_button_pressed" binds= [ "large" ]]
[connection signal="pressed" from="UI_container/generate_button" to="Map" method="_on_generate_button_pressed"]
[connection signal="pressed" from="UI_container/smooth_button" to="Map" method="_on_smooth_button_pressed"]
[connection signal="pressed" from="UI_container/apply_settings_button" to="Map" method="_on_apply_settings_button_pressed"]
[connection signal="pressed" from="UI_container/Continent_mode_button" to="Map" method="_on_Continent_mode_button_pressed"]
[connection signal="pressed" from="UI_container/Conflict_mode_button" to="Map" method="_on_Conflict_mode_button_pressed"]
[connection signal="pressed" from="UI_container/Elevation_mode_button" to="Map" method="_on_Elevation_mode_button_pressed"]
[connection signal="pressed" from="UI_container/Sea_mode_button" to="Map" method="_on_Sea_mode_button_pressed"]
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/continent.gd" type="Script" id=1]

[node name="continent" type="Node"]
script = ExtResource( 1 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Map.gd" type="Script" id=1]
[ext_resource path="res://Scenes/node.tscn" type="PackedScene" id=2]

[node name="Map" type="Node2D"]
script = ExtResource( 1 )
node = ExtResource( 2 )
        [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/node.png" type="Texture" id=1]
[ext_resource path="res://Scripts/node.gd" type="Script" id=2]

[node name="node" type="Sprite"]
position = Vector2( 389, 249 )
scale = Vector2( 8, 8 )
texture = ExtResource( 1 )
script = ExtResource( 2 )
GDSC             2      ���ӄ�   �����϶�   �������������������¶���   �����������Ķ���   �������������ζ�   ����Ӷ��   ������������ڶ��   ������������ζ��                                                 	   	   
   
                           !      "      (      0      3YYYYYYYYY0�  PQV�  -YY0�  PQV�  .W�  �  T�  YY0�  PQV�  .W�  �  T�  Y`  GDSC   G      �        ���ӄ�   ������������Ҷ��   �������Ӷ���   ���Ӷ���   ��������¶��   ����Ŷ��   �����鄶   �����酶   �����邶   ���������������϶���   ���������Ӷ�   ��Ѷ   ��������������������Ķ��   ����   ���������Ŷ�   ��������ڶ��   ����޶��   �����¶�   �����϶�   ����������Ķ   ������Ķ   ������������ڶ��   ��������������Ŷ   ���������¶�   �������������������¶���   ߶��   �����Ӷ�   ���������϶�   ������������¶��   �������Ӷ���   ��������Ҷ��   ���¶���   �����Ҷ�   ��������Ѷ��   �����Ҷ�   ����   ���������������Ӷ���   ���������Ŷ�   �����������Ķ���   �������������Ŷ�   ����������������Ŷ��   ���������������ض���   �����������������Ŷ�   ����϶��   ��������������Ŷ   ���Ҷ���   ���Ҷ���   ������������Ŷ��   ����Ӷ��   ܶ��   ��������ض��   ����������Ӷ   �������Ӷ���   ׶��   Զ��   ������������¶��   ��������������������������Ҷ   �������Ӷ���   �������������������Ӷ���   ����������Ŷ   ����������ڶ$   ��������������������������������Ҷ��$   �������������������������������Ҷ���$   ��������������������������������Ҷ��   ��������������������������Ҷ   ���Ӷ���   ���������Ӷ�   ������������������������Ҷ��$   ��������������������������������Ҷ��   ����������������������Ҷ   ���Ӷ���                	      t      L                                                  sea       map_generated      	   continent         continentconflict      	   elevation         small      @      0         medium        large      �      p                                                       	   "   
   (      .      4      5      :      C      H      I      N      S      X      ]      ^      d      j      k      r      v      {      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4     5     6     7     8     9   #  :   )  ;   /  <   5  =   ;  >   <  ?   B  @   M  A   \  B   k  C   ~  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^     _     `     a     b     c   (  d   .  e   9  f   E  g   N  h   S  i   f  j   m  k   t  l   w  m   x  n     o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �      �     �     �     �     �     �   #  �   '  �   ,  �   -  �   3  �   8  �   9  �   ?  �   D  �   E  �   K  �   P  �   Q  �   W  �   \  �   ]  �   d  �   j  �   p  �   w  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   3YYB�  YY8P�  Q;�  Y8P�  Q;�  YY;�  LMY;�  LMY;�  LMY;�  LMY;�	  LMYY;�
  Y;�  �  T�  PQY;�  �  YY;�  �  Y;�  �  Y;�  �  Y;�  �  YY0�  PQV�  �  T�%  PQYY0�  P�  QV�  /�  V�  �  V.�  �  �  V.�  �  �  V.�  �  �  V.�  YY0�  PQV�  .�  YY0�  PQV�  �  �  PQT�  PQ�  )�  �K  P�  QV�  ;�  �  P�  Q�  ;�  �  T�  PQ�  �  P�  Q�  �  T�  P�  R�  Q�  �	  T�   P�  Q�  ;�!  �	  �  *�!  V�  �!  �  �  )�  �	  V�  &�  T�"  PQV�  �!  �	  �  )�#  �  V�  )�  �#  V�  �  T�$  PQ�  )�#  �  V�  )�  �#  V�  �  T�$  PQ�  )�#  �  V�  )�  �#  V�  �  T�$  PQ�  )�#  �  V�  )�  �#  V�  �  T�$  PQYY0�%  PQV�  �  �&  P�
  R�
  R�  Q�  �  �&  PP�  �  QR�
  R�  Q�  �  �&  P�
  RP�  �  QR�  Q�  �  �&  PP�  �  QRP�  �  QR�  Q�  �'  PQ�  �  PQ�  �  Y0�(  PQV�  )�#  �  V�  )�  �#  V�  �  T�)  PQ�  )�#  �  V�  )�  �#  V�  �  T�)  PQ�  )�#  �  V�  )�  �#  V�  �  T�)  PQ�  )�#  �  V�  )�  �#  V�  �  T�)  PQ�  Y0�'  PQV�  �*  P�  Q�  �*  P�  Q�  �*  P�  Q�  �*  P�  QYY0�*  P�+  QV�  )�#  �+  V�  )�  �#  V�  �  T�,  PQYY0�&  P�-  R�.  R�  QV�  ;�/  LM�  )�  �K  P�  �  QV�  ;�0  LM�  )�1  �K  P�  �  QV�  ;�2  �  T�3  P�
  R�  Q�  ;�4  �  T�  PQ�  �  P�4  Q�  �4  T�  P�  �-  R�1  �.  R�
  R�  R�2  Q�  �0  T�   P�4  Q�  �/  T�   P�0  Q�  .�/  YY0�  P�  QV�  *�	  V�  ;�  �  T�3  P�  R�  Q�  ;�5  �  T�3  P�
  R�  �  �  Q�  ;�6  �  T�3  P�
  R�  �  �  Q�  ;�#  �  /�  V�  �  V�#  �  L�5  M�  �  V�#  �  L�5  M�  �  V�#  �  L�5  M�  �  V�#  �  L�5  M�  ;�  �#  L�6  M�  &�  T�  �  V�  �  T�7  P�  Q�  .�  YY0�8  PQV�  �  &�  V�  �9  PQT�:  PQ�  (V�  �%  PQ�  )�  �K  P�
  R�  QV�  �(  PQ�  �;  P�  Q�  �  �	  �  �<  P�  QYY0�=  PQV�  �;  P�  QYY0�>  PQV�  �;  P�  Q�  Y0�?  PQV�  �;  P�  Q�  Y0�@  PQV�  �;  P�  Q�  Y0�;  P�A  QV�  )�#  �  V�  )�  �#  V�  �  T�B  P�A  Q�  )�#  �  V�  )�  �#  V�  �  T�B  P�A  Q�  )�#  �  V�  )�  �#  V�  �  T�B  P�A  Q�  )�#  �  V�  )�  �#  V�  �  T�B  P�A  QYY0�C  PQV�  �(  PQ�  �;  P�  QYY0�D  PQV�  �  �  PQT�  PQ�  �;  P�  QYY0�E  P�F  QV�  /�F  V�  �  V�  �  �  �  �  �  �  �  V�  �  �  �  �  �  �  �  V�  �  �  �  �  �  YY`        GDSC         -        ���Ӷ���   ��������Ķ��   ����Ŷ��   ���������������Ŷ���   ��Ѷ   ��������������������Ķ��   ����   �������������ض�   ��������������ض   �����϶�   ���¶���   �����Ҷ�   ���������Ӷ�   ����������Ӷ   �����Ҷ�   ��������ض��   �����Ҷ�   ��������Ŷ��   ���Ӷ���   ���������Ӷ�   ���������Ŷ�   �������������Ŷ�   ��������¶��   ���ƶ���   ������������¶��   ��������������ض   �����Ӷ�   ���Ҷ���   ���Ӷ���                	                                                                                 #   	   &   
   '      -      3      4      =      A      L      S      Z      `      k      l      r      x      ~      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -   3YY;�  Y;�  LMY;�  LMY;�  �  T�  PQYY;�  Y;�  YY0�	  PQV�  �  T�%  PQYY0�
  P�  R�  QV�  �  �  �  �  �  T�  P�  R�  Q�  �  T�  P�  Q�  �  T�  P�  Q�  �  T�  �  �  �  �  T�  P�  R�  QYY0�  PQV�  ;�  LM�  )�  �  V�  ;�  �  �  ;�  �  T�  PQ�  )�  �  V�  &�  T�  �  V�  �  �  �  ;�  �  T�  PR�  Q�  &�  �  V�  �  T�  P�  Q�  �  T�  �  �  �  T�  �  �  �  T�  P�  Q�  &�  V�  �  T�  P�  T�  P�  QQ�  )�  �  V�  �  T�  P�  Q�  �  T�  P�  Q�  &�  T�  PQV�  .�  �  (V�  .�  Y`            GDSC            %      �����ض�   �����϶�   ��������������������Ҷ��   ���¶���      Clear                                                    	   	   
   
                                                               #      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  PQV�  �  Y`            GDSC   8   C   �   S     �����Ӷ�   ��������¶��   ��������������ض   �����������Ӷ���   ������������Ӷ��   ��������ض��   �   ﶶ�   ������Ķ   ���������Ŷ�   ��������������������Ŷ��   �������������Ŷ�   ���¶���   ����Ŷ��   ����Ŷ��   ���������Ӷ�   ������Ķ   ������������ض��   �������ض���   ���������������ض���   ����������������ض��   ���Ӷ���   ���Ӷ���   ���������������Ӷ���   ����������������Ӷ��   ���������Ӷ�   �������������Ķ�   ����������Ķ   �����Ҷ�   ��Ŷ   ���Ҷ���   ��������������Ŷ   ����Ŷ��   ���������¶�   ����������Ķ   ���������   ����޶��   �������ﶶ��   �����¶�   ����   �����������Ķ���   ������������Ķ��   ������������Ķ��   ������������   ��������������Ķ   ���������������Ķ���   �����������������Ķ�   ������������������Ķ   ������������¶��   ������������¶��   ���������Ӷ�   ���Ӷ���   ����������������Ӷ��   ��������ڶ��   ������������ڶ��   �����������ڶ���                    none                                                         	   continent     �G�z�?  �������?  �������?  {�G�z�?  ��Q���?  {�G�z�?  ���Q��?  �������?  �z�G��?  
ףp=
�?   	      
              �>            continentconflict      	   elevation                005a32       �?      238443        @      41ab5d       @@      78c679       �@      addd8e       �@      d9f0a3       �@      f7fcb9       �@      ffffe5        A      fff7bc       A      fee391        A      fec44f       0A      fe9929       @A      ec7014       PA      cc4c02       `A      993404       pA      662506       �A      fff7fb        sea       74a9cf        0570b0                                                      	      
   !      $      *      0      1      7      :      ;      J      W      [      _      c      g      h      n      s      y            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *      +     ,     -     .   &  /   *  0   0  1   1  2   7  3   C  4   S  5   c  6   d  7   l  8   v  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G     H     I     J     K   $  L   .  M   8  N   ?  O   K  P   Y  Q   a  R   k  S   r  T   s  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c     d     e   #  f   .  g   5  h   6  i   M  j   W  k   c  l   j  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x     y   
  z     {     |     }   ;  ~   E     Q  �   X  �   x  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   !  �   1  �   A  �   Q  �   a  �   q  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   %  �   /  �   9  �   C  �   M  �   W  �   a  �   k  �   n  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   #  �   -  �   7  �   >  �   F  �   I  �   Q  �   3YY;�  Y;�  Y;�  �  Y;�  �  Y;�  YY;�  Y;�  Y;�  Y;�	  LMY;�
  LMYY0�  PQV�  .�	  YY0�  P�  R�  R�  R�  R�  QV�  �  �  P�  �  R�  �  Q�  �  �  �  �  �  �  �  �  �  �  �  YY0�  PQV�  ;�  �  )�  �	  V�  �  �  T�  �  �  �  �	  T�  PQ�  �  P�  �  Q�  YY0�  PQV�  )�  �	  V�  &�  T�  �  V�  �  �  �  �  P�  QYY0�  P�  QV�  ;�  LP�  �  Q�  �  RP�  �  Q�  �  RP�  �  Q�  �  M�  ;�  L�  R�  �  �  M�  &�  �  V�  T�  P�  Q�  (V�  T�  P�  �  Q�  &�  T�  P�	  T�  P�  QQV�  �  �  �  �  T�  �  �  &�  T�  P�	  T�  P�  QQV�  �  �  �  �  T�  �  YY0�  PQV�  ;�   �!  PQT�"  P�  Q�  ;�#  �  P�  R�!  PQT�$  �  Q�  ;�%  �  P�  R�!  PQT�&  �  Q�  �  &P�#  QV�  ;�'  �   L�#  �  M�  �	  T�  P�'  L�%  MQ�  �
  T�  P�	  Q�  'P�  �  �  �  QV�  ;�(  �!  PQT�"  P�  �  Q�  ;�'  �(  L�  M�  �	  T�  P�'  L�%  MQ�  �
  T�  P�	  Q�  �  &P�%  QV�  ;�'  �   L�#  M�  �	  T�  P�'  L�%  �  MQ�  �
  T�  P�  Q�  'P�  �  �  �  QV�  ;�)  �!  PQT�"  P�  �  Q�  ;�'  �)  L�#  M�  �	  T�  P�'  L�  MQ�  �
  T�  P�  Q�  �  &P�#  �!  PQT�$  �  �  QV�  ;�'  �   L�#  �  M�  �	  T�  P�'  L�%  MQ�  �
  T�  P�  Q�  'P�  �  �  �  QV�  ;�*  �!  PQT�"  P�  �  Q�  ;�'  �*  LM�  �	  T�  P�'  L�%  MQ�  �
  T�  P�  Q�  �  &P�%  �!  PQT�&  �  �  QV�  ;�'  �   L�#  M�  �	  T�  P�'  L�%  �  MQ�  �
  T�  P�
  Q�  'P�  �  �  �  QV�  ;�+  �!  PQT�"  P�  �  Q�  ;�'  �+  L�#  M�  �	  T�  P�'  LMQ�  �
  T�  P�
  Q�  �  &PP�#  �%  QQV�  ;�'  �   L�#  �  M�  �	  T�  P�'  L�%  �  MQ�  �
  T�  P�  Q�  'P�  �  �#  �%  QV�  ;�,  �!  PQT�"  P�  Q�  ;�'  �,  L�  M�  �	  T�  P�'  L�  MQ�  �
  T�  P�  Q�  �  &PP�#  �!  PQT�$  �  �  �%  QQV�  ;�'  �   L�#  �  M�  �	  T�  P�'  L�%  �  MQ�  �
  T�  P�  Q�  'P�  �  �#  �!  PQT�$  �  �  �%  QV�  ;�-  �!  PQT�"  P�  Q�  ;�'  �-  LM�  �	  T�  P�'  L�  MQ�  �
  T�  P�  Q�  �  &PP�#  �%  �!  PQT�&  �  �  QQV�  ;�'  �   L�#  �  M�  �	  T�  P�'  L�%  �  MQ�  �
  T�  P�  Q�  'P�  �  �#  �%  �!  PQT�&  �  �  QV�  ;�.  �!  PQT�"  P�  Q�  ;�'  �.  L�  M�  �	  T�  P�'  LMQ�  �
  T�  P�  Q�  �  &PP�#  �!  PQT�$  �  �  �%  �!  PQT�&  �  �  QQV�  ;�'  �   L�#  �  M�  �	  T�  P�'  L�%  �  MQ�  �
  T�  P�  Q�  'P�  �  �#  �!  PQT�$  �  �  �%  �!  PQT�&  �  �  QV�  ;�/  �!  PQT�"  P�  Q�  ;�'  �/  LM�  �	  T�  P�'  LMQ�  �
  T�  P�  QYY0�0  P�1  QV�  �  �1  �  �2  P�  QYY0�2  P�3  QV�  /�3  V�  �  V�  /�  V�  V�4  P�  P�  R�  R�  R�  QQ�  �  V�4  P�  PR�  R�  R�  QQ�  �  V�4  P�  P�  R�  R�  R�  QQ�  �  V�4  P�  P�  R�  R�  R�  QQ�  �  V�4  P�  P�  RRR�  QQ�  �
  V�4  P�  P�  R�  RR�  QQ�  �  V�4  P�  P�  R�  R�  R�  QQ�  �	  V�4  P�  P�  R�  R�  R�  QQ�  �  V�4  P�  PRR�  R�  QQ�  �  V�4  P�  PR�  R�  R�  QQ�  �  V�4  P�  PR�  R�  R�  QQ�  �  V�4  P�  P�  R�  R�  R�  QQ�  �  V�4  P�  PR�  R�  R�  QQ�  �  V�  &�  V�  �4  P�  P�  R�  R�  R�  QQ�  (V�  �4  P�  P�  R�  R�  R�  QQ�  �  V�  /�  P�  QV�  �  V�4  P�  P�  QQ�  �   V�4  P�  P�!  QQ�  �"  V�4  P�  P�#  QQ�  �$  V�4  P�  P�%  QQ�  �&  V�4  P�  P�'  QQ�  �(  V�4  P�  P�)  QQ�  �*  V�4  P�  P�+  QQ�  �,  V�4  P�  P�-  QQ�  �.  V�4  P�  P�/  QQ�  �0  V�4  P�  P�1  QQ�  �2  V�4  P�  P�3  QQ�  �4  V�4  P�  P�5  QQ�  �6  V�4  P�  P�7  QQ�  �8  V�4  P�  P�9  QQ�  �:  V�4  P�  P�;  QQ�  �<  V�4  P�  P�=  QQ�  �>  V�4  P�  P�?  QQ�  �@  V�  ;�5  �!  PQT�6  PQ�  ;�7  �  �5  �  &�7  V�  /�  P�7  QV�  �  V�4  P�  P�  QQ�  �   V�4  P�  P�!  QQ�  �"  V�4  P�  P�#  QQ�  �$  V�4  P�  P�%  QQ�  �&  V�4  P�  P�'  QQ�  �(  V�4  P�  P�)  QQ�  �*  V�4  P�  P�+  QQ�  �,  V�4  P�  P�-  QQ�  �.  V�4  P�  P�/  QQ�  �0  V�4  P�  P�1  QQ�  �2  V�4  P�  P�3  QQ�  �4  V�4  P�  P�5  QQ�  �6  V�4  P�  P�7  QQ�  �8  V�4  P�  P�9  QQ�  �:  V�4  P�  P�;  QQ�  �<  V�4  P�  P�=  QQ�  �>  V�4  P�  P�?  QQ�  '�7  �  V�  �4  P�  P�A  QQ�  (V�  �4  P�  P�B  QQY`   GDST              `   PNG �PNG

   IHDR         �Ԛs   sRGB ���   IDAT�c���? $�0��    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/node.png"
dest_files=[ "res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex" ]

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
        [gd_resource type="ButtonGroup" format=2]

[resource]
          [gd_resource type="ButtonGroup" format=2]

[resource]
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�           [remap]

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

path="res://Scripts/Main.gdc"
         [remap]

path="res://Scripts/Map.gdc"
          [remap]

path="res://Scripts/continent.gdc"
    [remap]

path="res://Scripts/generate_button.gdc"
              [remap]

path="res://Scripts/node.gdc"
         �PNG

   IHDR   @   @   �iq�   sRGB ���  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�          ECFG	      _global_script_classes             _global_script_class_icons             application/config/name         World Maker    application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres      