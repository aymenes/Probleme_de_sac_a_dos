   M S B A M L   `   `   `  ����B  >Tpgo1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:Tpgo1._0Tpgo1._0  5   	   L HDataGrid2DLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP:clr-namespace:DataGrid2DLibrary;assembly=DataGrid2DLibraryDataGrid2DLibrary 5	   	       Tpgo1._0.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Tpgo1._0     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   Edg2d:clr-namespace:DataGrid2DLibrary;assembly=DataGrid2DLibrary  5	   	      MaterialDesignBody#���   5
   
   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignFont#���  5   
    � Title$ Problème de sac a dos��5   
   
������� � 
ResizeMode$ NoResize=�5   
   $
��1366��6    $	��752��6-    � 	Resources 5        DataTemplate_Level2  DataTemplate_Level1 �� Orientation��%K  &	       &	 �     �� 5   
   .R�5      �� $��30��6)   $��35��65   $��4,4,4,4q�6@   
�������
���   �$��12(�6w   $��0,0,0,0q�6�   ��6   �� 6�   5      �� 5   
   .R�5      �� #���  63   ��6   �� ��5      �� 5      .R�5      �� $ 
Horizontal=�6%   5      5       5!      5"      .��5#      ��  J� RenderTransformOrigin$ 0.449,0.494&�6   
���   �$��2q�6E   $��0,1,0,0q�6Y   $
��auto��6j   $
��auto��6x   ._�5$   
   �� $ 
Horizontal=�6   .+�5%      �� $ 0.449,0.494&�6   
�������$	��250��6P   $��3,3,3,3q�6\   $
��Left=�6m   
�������$��4q�6�   ._�5&      �� $
��Left=�6   $	��483��68   $��8,8,0,0q�6E   $	��Top=�6V   $	��248��6n   $ Vertical=�6z   .+�5'      �� $ 
Horizontal=�6!   �� 5(      $��23��6    $��5,20,5,5q�6,   $
��Wrap=�6>   $	��Top=�6R   $,��&Entrer le poids maximal du sac a dos :��6j   �� 5)      -   5         ��Name$ 	Sac_a_dos��5)   Z   $��23��6    �� TextWrapping$
 Wrap=�6*   $��0��6>   $��3,0,19,0q�6H   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Entrer le poids maximal��6�   
 � 
InputScope$
 Number��6�   �� 5*      $��23��6    $��5,20,5,5q�6,   $
��Wrap=�6>   $	��Top=�6R   $��Le meilleur gain est :��6j   �� 5+      -   5        $ gain_maximal��5+   Y   $��23��6   $
 Wrap=�6*   $��0��6>   $��3,0,19,0q�6G    J� IsManipulationEnabled .  6o   �� 5-      $��23��6    $��
-1,20,11,5q�6,   $
��Wrap=�6@   $	��Top=�6T   $ ��La liste des objets pris :��6l   �� 5.      -   5         ��Name$ Liste_objet_selectione��5.      $
��Left=�6>   $	��384��6Y   $��10,0,0,0q�6f   $	��219��6x   $��Center=�6�   50      51      �� 53      $ 0.449,0.494&�6   
�������$
��auto��6Q   $
��auto��6^   $��3,3,3,3q�6l   $��Center=�6}   
�������$��4q�6�   ._�54      �� $ Vertical=�6   $
��auto��64   $
��auto��6A   $	��Top=�6O   $��Center=�6g    �� CanVerticallyScroll . .+�55      �� $ 0.449,0.494&�6   
�������$
��auto��6Y   $��3,3,0,3q�6g   $��Center=�6x   
�������$��4q�6�   $	��Top=�6�   $
��auto��6�   ._�56      �� -   5         ��Name$ 
grid_stack��56   %   $��0,0,0,6q�69   $ Vertical=�6J   $��Center=�6a   .+�57      &   System.Windows.Controls.DataGrid  -   5          Name$ data_grid_objet��57   8   $	��380��6(   $	��154��6R   $	��0,5q�6_   "   VerticalScrollBarVisibility$
 Auto=�6l   
�������$
��1050��6�    58   "   =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%  '        �� 59   &   "  6,   .�5:   *   ��  � ��
 ���w�6G   �� 5;   *    � ��
 �����6G   �� 5<   *    � ��$
 Bold"�6G   �� 5=   *    � ��$ 20��6C   �� 5>   *    � ��$ 1,1,1,1q�6L   �� 5?   *    � ��
 �   �6H   5@   '   5B   #      Columns 5C   "   0  *System.Windows.Controls.DataGridTextColumn  5D   &   ,  &System.Windows.Controls.DataGridColumn   Header$    Identifiant��6Q      Width5  /System.Windows.Controls.DataGridLengthConverter$	 140 6i   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *id+6i     5E   &   $    Objet��6T   $ * 6f    69   �� *objet+6f     5F   &   $    Poids��6S   $ * 6e    69   �� *poids+6e     5G   &   $    Gain��6R   $ * 6c    69   �� *gain+6c   5J      �� 5K      -   5        $ button_stack��5K   )   $ 
Horizontal=�6?   $��Center=�6X   $y�Visible=�6u   .+�5L   "   �� -   5        $��Center=�5L   )   
�������$��25��6Z   $	��126��6f   $��0,5,3,0q�6r   $��Center=�6�    J� Opacity$	 0.7Q�6�   
���   �.��6�   genere auto5N   #   �� 5O   "   -   5        $��Center=�5O   )   
�������$��25��6Y   $	��126��6e   $��5,5,3,0q�6q   $��Center=�6�   $	 0.7Q�6�   
���   �$	 Calculer��6�   .��6�   
calculer5Q   #   �� 5R   "   -	   5        $��Center=�5R   )   
�������$��25��6Y   $	��126��6e   $��5,5,3,0q�6q   $��Center=�6�   $	 0.7Q�6�   
���   �.��6�   ajout manuel5T   #   �� 5U   "   -
   5        $��Center=�5U   )   
�������$��25��6Y   $	��126��6e   $��5,5,3,0q�6q   $��Center=�6�   $	 0.7Q�6�   
���   �.��6�   	Refrecher5W   #   5X      �� 5Y      -   5        $ adding_stack��5Y   B   $ 
Horizontal=�6)   $y�	Collapsed=�6X   .+�5Z   "   �� $	��101��6,   $��Center=�68   $��Black"�6S   Entrer le poids :6y   �� 5[   "   -   5        $ poids_in��5[   *   $	��250��6<   6J   �� 5\   "   $��94��6,   $��Center=�67   $��Black"�6R   $��50,0,0,0q�6e   Entrer le gain :6�   �� 5]   "   -   5        $ gain_in��5]   *   $	��250��6;   6I   �� 5^   "   -   5         ��Name$ addding_button��5^   F   $��Center=�6)   
�������$��25��6q   $	��194��6}   $��75,5,3,0q�6�   $��Center=�6�   $	 0.7Q�6�   
���   �.��6�   	Ajouter6   5_      5`      5a      �� 5b      -   5         ��Name$ voila��5b   �   $6��0Aucun objet trouvé / Poids maximal inditerminé��6    $��22(�6V   $��Center=�6d   $y�Visible=�6�   6�   �� 5c      -   5         ��Name$ matrice��5c      $ 0.504,0.502&�6.   
�������$
��auto��6i   $
��auto��6v   $��Center=�6�   $��3,3,0,3q�6�   $��Center=�6�   
�������$��4q�6�   $y�	Collapsed=�6�   ._�5d      � $��Center=�6   $��Center=�6<   .+�5e      �� -   5         ��Name$	 lst��5e   +   #���  68   5f      5g      5h      5i      5j      5k      5o      