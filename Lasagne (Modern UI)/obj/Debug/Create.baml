   M S B A M L   `   `   `  ����  Lasagne (Modern UI)     Lasagne__Modern_UI_.Create   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z VFirstFloor.ModernUI, Version=1.0.6.0, Culture=neutral, PublicKeyToken=2d21ec3cd074c59a0mui&http://firstfloorsoftware.com/ModernUI  5      
�������.��5	      �    ContentRoot#��[  6   $��	-40,0,0,0q�60   $��Center=�6C   $��Center=�6^   .+�5
   
   �� $!��Location of First directory��6   $��35��66   $	��199��6B   $��Tahoma)�6N   $��14(�6b   $��Center=�6p   $��90,65,411,362q�6�   �� 5   
   $ ��Enter a Name for this task��6   $��35��65   $	��199��6A   $��Tahoma)�6M   $��14(�6a   $��Center=�6o   $��90,10,411,435q�6�   �� 5   
   $"��Location of Second Directory��6   $��35��67   $	��199��6C   $��Tahoma)�6O   $��14(�6c   $��Center=�6q   $��90,205,411,240q�6�   �� 5   
   -   5          ��Name$	  tb1��5      $��36��6    �� TextWrapping$
 Wrap=�6,   $	��530��6@   $��Center=�6L   $��Tahoma)�6n   $��14(�6�   $��90,131,80,313q�6�    �� 
IsReadOnly . 6�   �� 5   
   -   5        $	  tb2��5      $��36��6   $
 Wrap=�6,   $	��530��6@   $��Center=�6L   $��Tahoma)�6n   $��14(�6�   $��90,268,80,176q�6�    . 6�   �� 5   
   -   5         ��Name$	 bt1��5      $��Browse��6   $	��141��60   $��36��6<   $��14(�6H   $��Tahoma)�6V   $��1q�6j   $��Center=�6�   $��Center=�6�   ���	#FFCCCCCC$��479,75,80,369q�6�   �� 5   
   -   5        $	 bt2��5      $��Browse��6   $	��141��60   $��36��6<   $��14(�6H   $��Tahoma)�6V   $��1q�6j   $��Center=�6�   $��Center=�6�   ���	#FFCCCCCC$��479,206,80,238q�6�   �� 5   
   -   5        $	 bt3��5      $��Create a Sync Task��6   $��36��6;   $��14(�6G   $��Tahoma)�6U   $��Center=�6{   $��Center=�6�   $��1q�6�   ���	#FFCCCCCC$��270,434,269,10q�6�   �� 5   
   -   5        $	  tb3��5      $	��215��6   $��36��6+   $��14(�67   $��Tahoma)�6E   $��1q�6Y   $��405,10,80,434q�6m   $��Center=�6�   �� 5   
   -   5         ��Name$ 	checkBox1��5      $��12(�6&   $��Tahoma)�64   $��Two Way Sync��6H   $��Center=�6�   $��90,344,488,108q�6�   �� 5   
   -   5         ��Name$ comboBox��5      $
��Left=�6%   $��444,327,0,0q�6@   $	��Top=�6U   $	��176��6m    �� 
IsReadOnly .  �� Text$ Conflict Resolution��6�   $��23��6�   &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�6�   	   TextHintingMode$	 Fixed=�6�   
 �� SelectedIndex$
 0��6�   .@�5      �� $��Don't Overwrite��6   $
��Left=�65   $	��174��6P   �� 5      $��Overwrite in Folder 2��6   $
��Left=�6;   $	��174��6V   5      �� 5   
   -	   5        $ 	comboBox2��5      {�.  $
��Left=�68   $��444,375,0,0q�6S   $	��Top=�6h   $	��176��6�    . $ Conflict Resolution��6�   $��23��6�   $ Display=�6�   $	 Fixed=�6�   $
 0��6  .@�5      �� $��Don't Overwrite��6   $
��Left=�65   $	��174��6P   �� 5      $��Overwrite in Folder 1��6   $
��Left=�6;   $	��174��6V   5      �� 5   
   -
   5         ��Name$ label��5      $��12(�6   $��Tahoma)�6-   $��Conflict Resolution��6A   $��Center=�6_   $��Center=�6�   $��326,351,269,0q�6�   $	��Top=�6�   $��16��6�   5      5       