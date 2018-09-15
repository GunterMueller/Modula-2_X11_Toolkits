	.comm simple_s, 8
	.text
	.stabs "/home/gunter/GM_LANGUAGES/Modula-2/GM_X11_Programming/GM_XGraphik_Sopra96-97/XGraphic/",100,0,0,.LBB0
	.stabs "simple.mod",100,0,0,.LBB0
.LBB0:
	.stabs "BOOLEAN:t1=eTRUE:1,FALSE:0,;",0x80,0,0,0
	.stabs "CHAR:t2=r2;0;255;",0x80,0,0,0
	.stabs "SHORTCARD:t3=r3;0;65535;",0x80,0,0,0
	.stabs "LONGCARD:t4=r4;0;-1;",0x80,0,0,0
	.stabs "CARDINAL:t5=r5;0;-1;",0x80,0,0,0
	.stabs "SHORTINT:t6=r6;-32768;32767;",0x80,0,0,0
	.stabs "LONGINT:t7=r7;-2147483648;2147483647;",0x80,0,0,0
	.stabs "INTEGER:t8=r8;-2147483648;2147483647;",0x80,0,0,0
	.stabs "REAL:t9=r8;4;0;",0x80,0,0,0
	.stabs "LONGREAL:t10=r8;8;0;",0x80,0,0,0
	.stabs "BITSET:t11=r4;0;-1",0x80,0,0,0
	.stabs "WORD:t13=r13;0;255;",0x80,0,0,0
	.stabs "BYTE:t14=r2;0;255",0x80,0,0,0
	.stabs "VOID:t16=16",0x80,0,0,0
	.stabs "ADDRESS:t15=*16",0x80,0,0,0
	.stabs "PROC:t12=*f16;",0x80,0,0,0
	.globl	xgraphic_XG_Sleep
	.globl	xgraphic_XGE_KeyPressed
	.globl	xgraphic_XGE_KeyCode
	.globl	xgraphic_XGE_Y_Position
	.globl	xgraphic_XGE_X_Position
	.globl	xgraphic_XGE_ButtonEvent
	.globl	xgraphic_XGE_MouseMove
	.globl	xgraphic_XGE_Button_R
	.globl	xgraphic_XGE_Button_M
	.globl	xgraphic_XGE_Button_L
	.globl	xgraphic_XGD_Flush
	.globl	xgraphic_XGD_Clear
	.globl	xgraphic_XGD_DrawPoly
	.globl	xgraphic_XGD_AddPolyPoint
	.globl	xgraphic_XGD_BeginPoly
	.globl	xgraphic_XGD_GetStringExtents
	.globl	xgraphic_XGD_DrawString
	.globl	xgraphic_XGD_DrawCircle
	.globl	xgraphic_XGD_DrawLine
	.globl	xgraphic_XGD_DrawArrowLine
	.globl	xgraphic_XGD_SetClipping
	.globl	xgraphic_XGD_NoClipping
	.globl	xgraphic_XGN_YesOrNo
	.globl	xgraphic_XGN_GetFileName
	.globl	xgraphic_XGN_FileSelector
	.globl	xgraphic_XGN_GetLastString
	.globl	xgraphic_XGN_InputString
	.globl	xgraphic_XGN_ShowNotice
	.globl	xgraphic_XGN_GetLastInteger
	.globl	xgraphic_XGN_InputInt
	.globl	xgraphic_XGF_SetDefault
	.globl	xgraphic_XGF_SetRight
	.globl	xgraphic_XGF_SetLeft
	.globl	xgraphic_XGM_SetItemActivity
	.globl	xgraphic_XGM_CreateMenu
	.globl	xgraphic_XGM_AppendItem
	.globl	xgraphic_XGM_NewMenu
	.globl	xgraphic_XG_SetTimer
	.globl	xgraphic_XG_StartMainLoop
	.globl	xgraphic_XG_Init
	.globl	GetEnv
	.globl	GetArgs
	.globl	simple
	.globl	simple_Repaint
	.globl	simple_Event
	.stabs "simple_Repaint:F16",36,0,0,simple_Repaint
	.align 4
simple_Repaint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,16,.LN1-simple_Repaint		# line 16, column 1
.LBB1:
.LN2:
	.stabn  68,0,17,.LN2-simple_Repaint		# line 17, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-simple_Repaint
	.stabn 224,0,0,.LBE1-simple_Repaint
	.stabs "simple_Event:F1",36,0,0,simple_Event
	.align 4
simple_Event:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN3:
	.stabn  68,0,9,.LN3-simple_Event		# line 9, column 1
.LBB2:
.LN4:
	.stabn  68,0,12,.LN4-simple_Event		# line 12, column 5
	movb	$0,%al
	leave
	ret
.LN5:
	.stabn  68,0,13,.LN5-simple_Event		# line 13, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab2 = 4
	.stabn 192,0,0,.LBB2-simple_Event
	.stabn 224,0,0,.LBE2-simple_Event
	.stabs "simple:F16",36,0,0,simple
	.align 4
simple:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab3, %esp
.LN6:
	.stabn  68,0,24,.LN6-simple		# line 24, column 1
.LBB3:
.LN7:
	.stabn  68,0,25,.LN7-simple		# line 25, column 5
	leal	simple_s + 4,%eax
	pushl	%eax
	leal	simple_s,%eax
	pushl	%eax
	call	GetArgs
	addl	$8, %esp
.LN8:
	.stabn  68,0,27,.LN8-simple		# line 27, column 5
	leal	simple_Event,%eax
	pushl	%eax
	leal	simple_Repaint,%eax
	pushl	%eax
	pushl	simple_s + 4
	movzwl	simple_s,%eax
	pushl	%eax
	call	xgraphic_XG_Init
	addl	$16, %esp
.LN9:
	.stabn  68,0,28,.LN9-simple		# line 28, column 5
	call	xgraphic_XG_StartMainLoop
.LN10:
	.stabn  68,0,29,.LN10-simple		# line 29, column 0
.LBE3:
	leave
	ret
	.Lab3 = 4
	.stabs "ArgTable:t17=*18=ar4;0;999;19=*20=ar4;0;999;2",128,0,0,0
	.stabn 192,0,0,.LBB3-simple
	.stabn 224,0,0,.LBE3-simple
	.stabs "simple_s:Gs8Args:17,32,32;Anz:3,0,16;;",32,0,0,0
