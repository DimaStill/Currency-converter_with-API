   M S B A M L   `   `   `  ����M  ICurrency Converter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Currency_ConverterCurrency_Converter  5   	   #    Currency_Converter.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:Currency_Converter     5   	     � Title$  
MainWindow��5   	   $	��200��6   $	��250��6)   .��5	      � 
�������.+�5
   
   �� $	��100��6   $��25��6   $
��Left=�6(   $	��Top=�6C   $��10 25q�6[   .��6j   Введите сумму6y   �� 5   
   $��90��6   $��25��6   $��Right=�6'   $	��Top=�6C   $��	0 25 15 0q�6[   .��6n   Результат6y   �� 5   
   -   5        $��Amount��5   k   $��90��6   $��20��6   $
��Left=�6)   $	��Top=�6D   $��15 50q�6\   .��6y   06|   �� 5   
   -   5        $��Result��5   �   $��90��6   $��20��6   
�������$��Right=�6>   $	��Top=�6Z   $��	0 50 10 0q�6r   06�   �� 5   
   -   5        $	��100��5      $��30��6   $��Bottom=�6)   $��0 0 0 50q�6D   .��6k   Рассчитать6w   �� 5   
   -   5        $��FromCurrency��5   l   $��90��6   $��20��6   $	��Top=�6*   $
��Left=�6B   $��15 10q�6]   .@�5      �� UAH6   �� 5      RUB6   �� 5      USD6   �� 5      EUR6   �� 5      BTC6   5      �� 5   
   -   5        $��
ToCurrency��5   m   $��90��6   $��20��6   $	��Top=�6*   $��Right=�6B   $��15 10q�6^   .@�5      �� UAH6   �� 5      RUB6   �� 5      USD6   �� 5      EUR6   �� 5      BTC6   5      5      5      