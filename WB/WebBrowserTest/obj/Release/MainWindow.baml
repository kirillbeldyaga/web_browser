   M S B A M L   `   `   `  ���� U  QWebBrowserTest, Version=1.0.0.2, Culture=neutral, PublicKeyToken=cf29c18cc234edf5/clr-namespace:WebBrowserTestWebBrowserTest      WebBrowserTest.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:WebBrowserTest       � Title$  
MainWindow��$	��350��$	��800��.���  � ColumnDefinitions ��  � RowDefinitions �� $
��auto ��� $
��auto ��� .+���  �� Orientation$ 
Horizontal=�$��8q�.+��� $��Center=�URL-адрес�� -    ��Name$ txb_url��$
��14,0q�$	��250��$��Center=�$��professorweb.ru/���� -   $��5q�$+��%Получить информацию���� $��8,8,8,7q�$0��*Исходный код страницы: ��$��1���� -    ��Name$ 
tabControl��$��2��.@��� $��
WebRequest��.���  �� $
��auto ��� ��  �� $
��auto ��� $
��auto ��� �� $
��auto ��� .+��� -   $ txb_sourceCode��$��2��$��5q�$��8q� �� TextWrapping$
 Wrap=�" �� VerticalScrollBarVisibility$ Visible=�$��2���� $��3��$��Stretch=�$��	8,0,8,108q����#aaa$��2��$��2���� -   $ txb_serverInfo��$��4��$��5q�$��8q�$
 Wrap=�$ Visible=�$��2��R� -    R�Name$ treeView��$��2��$��2��$��3���� $��HttpWebRequest��.���  �� $
��auto ��� $
��auto ��� �� $
��auto ��� .+��� -   $ txbHttpWeb_sourceCode��$��2��$��5q�$��8q�$
 Wrap=�$ Visible=��� $��3��$��Stretch=�$��3��$	��8,0q����#aaa�� -   $ txbHttp_serverInfo��$��4��$��5q�$��8q�$
 Wrap=�$ Visible=��� $��FileWebRequest��.��� 	 J� RenderTransformOrigin$	 0.498,0.682&� �� $
��auto ��� $
��auto ��� .+��� -	   $ txbFileWeb_sourceCode��$��2��$��5q�$��8,8,8,0q�$
 Wrap=�$ Visible=��� $��Ip��.���  �� $
��auto ��� $
��auto ��� .+��� $��
8,8,8,7.92q�$6��0Ip-адреса для даного домена��$��0���� -
   $ txbIp��$��2��.��