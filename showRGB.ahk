 flag:=1
 flag2:=2
Loop
{
	if (flag>=1)
		{
		function_get_RGB()
		
		}
	Sleep 300
}
   
F12::
  
   if (flag>=1) ;这里面非常麻烦, if里面的变量不允许在括号里面赋值.所以我们只能用一个flag2来传递
    {
			flag2=0
		
	}	
	if (flag<=0)
		flag2:=1
	flag=%flag2% ; 把flag2中间变量再给flag.
	;Msgbox, %flag2% %flag%
return 

















function_get_RGB()
{
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%    ;输出的是bgr


 

SetFormat, Integer , d



;ToolTip, % Asc(substr(color,3,2)) , %red_hex%


a1:=substr(color,3,1)
a2:=Asc(a1)-55



a3:=Asc(substr(color,3,1))
if a3>58:
	a3:=a3-55
else a3:=a3-48

a4:=Asc(substr(color,4,1))
if a4>58:
	a4:=a4-55
else a4:=a4-48
	
a5:=Asc(substr(color,5,1))
if a5>58:
	a5:=a5-55
else a5:=a5-48

a6:=Asc(substr(color,6,1))
if a6>58:
	a6:=a6-55
else a6:=a6-48
	
a7:=Asc(substr(color,7,1))
if a7>58:
	a7:=a7-55
else a7:=a7-48

a8:=Asc(substr(color,8,1))
if a8>58:
	a8:=a8-55
else a8:=a8-48
	
	
a9:=a3*16+a4
a10:=a5*16+a6
a11:=a7*16+a8
a12:="0X"substr(color,7,2)substr(color,5,2)substr(color,3,2)
a13:="   "

ToolTip,     %a13%   %a12%     R:%a11%    G:%a10%    B:%a9% 

SetTimer, RemoveToolTip, -500
return

RemoveToolTip:
ToolTip
return
}











;F2::  ; Control+Alt+Z hotkey.

;return
; autohotkey函数的入参用%%, 出参不用写%. 再一个是赋值都用:=即可. 别用等号.
