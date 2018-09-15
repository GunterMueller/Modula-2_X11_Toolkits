	.text
	.stabs "/home/gunter/GM_LANGUAGES/Modula-2/GM_X11_Programming/GM_XGraphik_Sopra96-97/XGraphic/",100,0,0,.LBB0
	.stabs "xgraphic.mod",100,0,0,.LBB0
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
	.globl	I_XG_Sleep
	.globl	I_XGE_KeyPressed
	.globl	I_XGE_KeyCode
	.globl	I_XGE_Y_Position
	.globl	I_XGE_X_Position
	.globl	I_XGE_ButtonEvent
	.globl	I_XGE_MouseMove
	.globl	I_XGE_Button_R
	.globl	I_XGE_Button_M
	.globl	I_XGE_Button_L
	.globl	I_XGD_Flush
	.globl	I_XGD_Clear
	.globl	I_XGD_DrawPoly
	.globl	I_XGD_AddPolyPoint
	.globl	I_XGD_BeginPoly
	.globl	I_XGD_GetStringExtents
	.globl	I_XGD_DrawString
	.globl	I_XGD_DrawCircle
	.globl	I_XGD_DrawTriangle
	.globl	I_XGD_SetColor
	.globl	I_XGD_DrawLine
	.globl	I_XGD_SetClipping
	.globl	I_XGD_NoClipping
	.globl	I_XGN_YesOrNo
	.globl	I_XGN_GetFileName
	.globl	I_XGN_FileSelector
	.globl	I_XGN_GetLastString
	.globl	I_XGN_InputString
	.globl	I_XGN_ShowNotice
	.globl	I_XGN_GetLastInteger
	.globl	I_XGN_InputInt
	.globl	I_XGF_SetDefault
	.globl	I_XGF_SetRight
	.globl	I_XGF_SetLeft
	.globl	I_XGM_SetItemActivity
	.globl	I_XGM_CreateMenu
	.globl	I_XGM_AppendItem
	.globl	I_XGM_NewMenu
	.globl	I_XG_SetTimer
	.globl	I_XG_StartMainLoop
	.globl	I_XG_Init
	.globl	Strings_CAPS
	.globl	Strings_compare
	.globl	Strings_Concat
	.globl	Strings_Copy
	.globl	Strings_pos
	.globl	Strings_Delete
	.globl	Strings_Insert
	.globl	Strings_Length
	.globl	Strings_StrEq
	.globl	Strings_Append
	.globl	Strings_Assign
	.globl	Strings_EmptyString
	.globl	MathLib_entierL
	.globl	MathLib_entier
	.globl	MathLib_realL
	.globl	MathLib_real
	.globl	MathLib_arctanL
	.globl	MathLib_arctan
	.globl	MathLib_cosL
	.globl	MathLib_cos
	.globl	MathLib_sinL
	.globl	MathLib_sin
	.globl	MathLib_lnL
	.globl	MathLib_ln
	.globl	MathLib_expL
	.globl	MathLib_exp
	.globl	MathLib_sqrtL
	.globl	MathLib_sqrt
	.globl	GetEnv
	.globl	GetArgs
	.globl	xgraphic
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
	.globl	xgraphic_my_Assign
	.globl	xgraphic_my_entier
	.stabs "xgraphic_XG_Sleep:F7",36,0,0,xgraphic_XG_Sleep
	.align 4
xgraphic_XG_Sleep:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,573,.LN1-xgraphic_XG_Sleep		# line 573, column 1
.LBB1:
.LN2:
	.stabn  68,0,574,.LN2-xgraphic_XG_Sleep		# line 574, column 9
	pushl	8(%ebp)
	call	I_XG_Sleep
	addl	$4, %esp
	leave
	ret
.LN3:
	.stabn  68,0,575,.LN3-xgraphic_XG_Sleep		# line 575, column 0
	call	ReturnErr_
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabs "Seconds:p7",160,0,4,8
	.stabn 192,0,0,.LBB1-xgraphic_XG_Sleep
	.stabn 224,0,0,.LBE1-xgraphic_XG_Sleep
	.stabs "xgraphic_XGE_KeyPressed:F1",36,0,0,xgraphic_XGE_KeyPressed
	.align 4
xgraphic_XGE_KeyPressed:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN4:
	.stabn  68,0,564,.LN4-xgraphic_XGE_KeyPressed		# line 564, column 1
.LBB2:
.LN5:
	.stabn  68,0,565,.LN5-xgraphic_XGE_KeyPressed		# line 565, column 9
	call	I_XGE_KeyPressed
	cmpl	$1,%eax
	jne	.Lab5
.Lab4:
.LN6:
	.stabn  68,0,566,.LN6-xgraphic_XGE_KeyPressed		# line 566, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab3
.Lab5:
.LN7:
	.stabn  68,0,568,.LN7-xgraphic_XGE_KeyPressed		# line 568, column 17
	movb	$0,%al
	leave
	ret
.Lab3:
.LN8:
	.stabn  68,0,569,.LN8-xgraphic_XGE_KeyPressed		# line 569, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab2 = 4
	.stabn 192,0,0,.LBB2-xgraphic_XGE_KeyPressed
	.stabn 224,0,0,.LBE2-xgraphic_XGE_KeyPressed
	.stabs "xgraphic_XGE_KeyCode:F2",36,0,0,xgraphic_XGE_KeyCode
	.align 4
xgraphic_XGE_KeyCode:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab6, %esp
.LN9:
	.stabn  68,0,556,.LN9-xgraphic_XGE_KeyCode		# line 556, column 1
.LBB3:
.LN10:
	.stabn  68,0,557,.LN10-xgraphic_XGE_KeyCode		# line 557, column 9
	call	I_XGE_KeyCode
	leave
	ret
.LN11:
	.stabn  68,0,558,.LN11-xgraphic_XGE_KeyCode		# line 558, column 0
	call	ReturnErr_
.LBE3:
	leave
	ret
	.Lab6 = 4
	.stabn 192,0,0,.LBB3-xgraphic_XGE_KeyCode
	.stabn 224,0,0,.LBE3-xgraphic_XGE_KeyCode
	.stabs "xgraphic_XGE_Y_Position:F7",36,0,0,xgraphic_XGE_Y_Position
	.align 4
xgraphic_XGE_Y_Position:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab7, %esp
.LN12:
	.stabn  68,0,547,.LN12-xgraphic_XGE_Y_Position		# line 547, column 1
.LBB4:
.LN13:
	.stabn  68,0,548,.LN13-xgraphic_XGE_Y_Position		# line 548, column 9
	call	I_XGE_Y_Position
	leave
	ret
.LN14:
	.stabn  68,0,549,.LN14-xgraphic_XGE_Y_Position		# line 549, column 0
	call	ReturnErr_
.LBE4:
	leave
	ret
	.Lab7 = 4
	.stabn 192,0,0,.LBB4-xgraphic_XGE_Y_Position
	.stabn 224,0,0,.LBE4-xgraphic_XGE_Y_Position
	.stabs "xgraphic_XGE_X_Position:F7",36,0,0,xgraphic_XGE_X_Position
	.align 4
xgraphic_XGE_X_Position:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab8, %esp
.LN15:
	.stabn  68,0,538,.LN15-xgraphic_XGE_X_Position		# line 538, column 1
.LBB5:
.LN16:
	.stabn  68,0,539,.LN16-xgraphic_XGE_X_Position		# line 539, column 9
	call	I_XGE_X_Position
	leave
	ret
.LN17:
	.stabn  68,0,540,.LN17-xgraphic_XGE_X_Position		# line 540, column 0
	call	ReturnErr_
.LBE5:
	leave
	ret
	.Lab8 = 4
	.stabn 192,0,0,.LBB5-xgraphic_XGE_X_Position
	.stabn 224,0,0,.LBE5-xgraphic_XGE_X_Position
	.stabs "xgraphic_XGE_ButtonEvent:F1",36,0,0,xgraphic_XGE_ButtonEvent
	.align 4
xgraphic_XGE_ButtonEvent:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab9, %esp
.LN18:
	.stabn  68,0,529,.LN18-xgraphic_XGE_ButtonEvent		# line 529, column 1
.LBB6:
.LN19:
	.stabn  68,0,530,.LN19-xgraphic_XGE_ButtonEvent		# line 530, column 9
	call	I_XGE_ButtonEvent
	cmpl	$1,%eax
	jne	.Lab12
.Lab11:
.LN20:
	.stabn  68,0,531,.LN20-xgraphic_XGE_ButtonEvent		# line 531, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab10
.Lab12:
.LN21:
	.stabn  68,0,533,.LN21-xgraphic_XGE_ButtonEvent		# line 533, column 17
	movb	$0,%al
	leave
	ret
.Lab10:
.LN22:
	.stabn  68,0,534,.LN22-xgraphic_XGE_ButtonEvent		# line 534, column 0
	call	ReturnErr_
.LBE6:
	leave
	ret
	.Lab9 = 4
	.stabn 192,0,0,.LBB6-xgraphic_XGE_ButtonEvent
	.stabn 224,0,0,.LBE6-xgraphic_XGE_ButtonEvent
	.stabs "xgraphic_XGE_MouseMove:F1",36,0,0,xgraphic_XGE_MouseMove
	.align 4
xgraphic_XGE_MouseMove:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab13, %esp
.LN23:
	.stabn  68,0,520,.LN23-xgraphic_XGE_MouseMove		# line 520, column 1
.LBB7:
.LN24:
	.stabn  68,0,521,.LN24-xgraphic_XGE_MouseMove		# line 521, column 9
	call	I_XGE_MouseMove
	cmpl	$1,%eax
	jne	.Lab16
.Lab15:
.LN25:
	.stabn  68,0,522,.LN25-xgraphic_XGE_MouseMove		# line 522, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab14
.Lab16:
.LN26:
	.stabn  68,0,524,.LN26-xgraphic_XGE_MouseMove		# line 524, column 17
	movb	$0,%al
	leave
	ret
.Lab14:
.LN27:
	.stabn  68,0,525,.LN27-xgraphic_XGE_MouseMove		# line 525, column 0
	call	ReturnErr_
.LBE7:
	leave
	ret
	.Lab13 = 4
	.stabn 192,0,0,.LBB7-xgraphic_XGE_MouseMove
	.stabn 224,0,0,.LBE7-xgraphic_XGE_MouseMove
	.stabs "xgraphic_XGE_Button_R:F1",36,0,0,xgraphic_XGE_Button_R
	.align 4
xgraphic_XGE_Button_R:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab17, %esp
.LN28:
	.stabn  68,0,511,.LN28-xgraphic_XGE_Button_R		# line 511, column 1
.LBB8:
.LN29:
	.stabn  68,0,512,.LN29-xgraphic_XGE_Button_R		# line 512, column 9
	call	I_XGE_Button_R
	cmpl	$1,%eax
	jne	.Lab20
.Lab19:
.LN30:
	.stabn  68,0,513,.LN30-xgraphic_XGE_Button_R		# line 513, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab18
.Lab20:
.LN31:
	.stabn  68,0,515,.LN31-xgraphic_XGE_Button_R		# line 515, column 17
	movb	$0,%al
	leave
	ret
.Lab18:
.LN32:
	.stabn  68,0,516,.LN32-xgraphic_XGE_Button_R		# line 516, column 0
	call	ReturnErr_
.LBE8:
	leave
	ret
	.Lab17 = 4
	.stabn 192,0,0,.LBB8-xgraphic_XGE_Button_R
	.stabn 224,0,0,.LBE8-xgraphic_XGE_Button_R
	.stabs "xgraphic_XGE_Button_M:F1",36,0,0,xgraphic_XGE_Button_M
	.align 4
xgraphic_XGE_Button_M:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab21, %esp
.LN33:
	.stabn  68,0,498,.LN33-xgraphic_XGE_Button_M		# line 498, column 1
.LBB9:
.LN34:
	.stabn  68,0,499,.LN34-xgraphic_XGE_Button_M		# line 499, column 9
	call	I_XGE_Button_M
	cmpl	$1,%eax
	jne	.Lab24
.Lab23:
.LN35:
	.stabn  68,0,500,.LN35-xgraphic_XGE_Button_M		# line 500, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab22
.Lab24:
.LN36:
	.stabn  68,0,502,.LN36-xgraphic_XGE_Button_M		# line 502, column 17
	movb	$0,%al
	leave
	ret
.Lab22:
.LN37:
	.stabn  68,0,503,.LN37-xgraphic_XGE_Button_M		# line 503, column 0
	call	ReturnErr_
.LBE9:
	leave
	ret
	.Lab21 = 4
	.stabn 192,0,0,.LBB9-xgraphic_XGE_Button_M
	.stabn 224,0,0,.LBE9-xgraphic_XGE_Button_M
	.stabs "xgraphic_XGE_Button_L:F1",36,0,0,xgraphic_XGE_Button_L
	.align 4
xgraphic_XGE_Button_L:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab25, %esp
.LN38:
	.stabn  68,0,485,.LN38-xgraphic_XGE_Button_L		# line 485, column 1
.LBB10:
.LN39:
	.stabn  68,0,486,.LN39-xgraphic_XGE_Button_L		# line 486, column 9
	call	I_XGE_Button_L
	cmpl	$1,%eax
	jne	.Lab28
.Lab27:
.LN40:
	.stabn  68,0,487,.LN40-xgraphic_XGE_Button_L		# line 487, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab26
.Lab28:
.LN41:
	.stabn  68,0,489,.LN41-xgraphic_XGE_Button_L		# line 489, column 17
	movb	$0,%al
	leave
	ret
.Lab26:
.LN42:
	.stabn  68,0,490,.LN42-xgraphic_XGE_Button_L		# line 490, column 0
	call	ReturnErr_
.LBE10:
	leave
	ret
	.Lab25 = 4
	.stabn 192,0,0,.LBB10-xgraphic_XGE_Button_L
	.stabn 224,0,0,.LBE10-xgraphic_XGE_Button_L
	.stabs "xgraphic_XGD_Flush:F16",36,0,0,xgraphic_XGD_Flush
	.align 4
xgraphic_XGD_Flush:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab29, %esp
.LN43:
	.stabn  68,0,476,.LN43-xgraphic_XGD_Flush		# line 476, column 1
.LBB11:
.LN44:
	.stabn  68,0,477,.LN44-xgraphic_XGD_Flush		# line 477, column 9
	call	I_XGD_Flush
.LN45:
	.stabn  68,0,478,.LN45-xgraphic_XGD_Flush		# line 478, column 0
.LBE11:
	leave
	ret
	.Lab29 = 4
	.stabn 192,0,0,.LBB11-xgraphic_XGD_Flush
	.stabn 224,0,0,.LBE11-xgraphic_XGD_Flush
	.stabs "xgraphic_XGD_Clear:F16",36,0,0,xgraphic_XGD_Clear
	.align 4
xgraphic_XGD_Clear:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab30, %esp
.LN46:
	.stabn  68,0,467,.LN46-xgraphic_XGD_Clear		# line 467, column 1
.LBB12:
.LN47:
	.stabn  68,0,468,.LN47-xgraphic_XGD_Clear		# line 468, column 9
	call	I_XGD_Clear
.LN48:
	.stabn  68,0,469,.LN48-xgraphic_XGD_Clear		# line 469, column 0
.LBE12:
	leave
	ret
	.Lab30 = 4
	.stabn 192,0,0,.LBB12-xgraphic_XGD_Clear
	.stabn 224,0,0,.LBE12-xgraphic_XGD_Clear
	.stabs "xgraphic_XGD_DrawPoly:F16",36,0,0,xgraphic_XGD_DrawPoly
	.align 4
xgraphic_XGD_DrawPoly:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab31, %esp
.LN49:
	.stabn  68,0,458,.LN49-xgraphic_XGD_DrawPoly		# line 458, column 1
.LBB13:
.LN50:
	.stabn  68,0,459,.LN50-xgraphic_XGD_DrawPoly		# line 459, column 9
	cmpb	$0,8(%ebp)
	je	.Lab34
.Lab33:
.LN51:
	.stabn  68,0,459,.LN51-xgraphic_XGD_DrawPoly		# line 459, column 26
	movl	$1,-8(%ebp) 
	jmp	.Lab32
.Lab34:
.LN52:
	.stabn  68,0,459,.LN52-xgraphic_XGD_DrawPoly		# line 459, column 39
	movl	$0,-8(%ebp) 
.Lab32:
.LN53:
	.stabn  68,0,460,.LN53-xgraphic_XGD_DrawPoly		# line 460, column 9
	cmpb	$0,12(%ebp)
	je	.Lab37
.Lab36:
.LN54:
	.stabn  68,0,460,.LN54-xgraphic_XGD_DrawPoly		# line 460, column 26
	movl	$1,-12(%ebp) 
	jmp	.Lab35
.Lab37:
.LN55:
	.stabn  68,0,460,.LN55-xgraphic_XGD_DrawPoly		# line 460, column 39
	movl	$0,-12(%ebp) 
.Lab35:
.LN56:
	.stabn  68,0,462,.LN56-xgraphic_XGD_DrawPoly		# line 462, column 9
	movzbl	20(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab38
.Lab39:
   	call	BoundErr_		
.Lab38:
	pushl	%eax
	pushl	16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	I_XGD_DrawPoly
	addl	$16, %esp
.LN57:
	.stabn  68,0,463,.LN57-xgraphic_XGD_DrawPoly		# line 463, column 0
.LBE13:
	leave
	ret
	.Lab31 = 12
	.stabs "f:7",128,0,4,-12
	.stabs "c:7",128,0,4,-8
	.stabs "tColor:t17=eSchwarz:19,Dunkelgrau:18,Mittelgrau:17,Hellgrau:16,Dunkeltuerkis:15,Mitteltuerkis:14,Helltuerkis:13,Dunkelblau:12,Mittelblau:11,Hellblau:10,Dunkelgelb:9,Mittelgelb:8,Hellgelb:7,Dunkelgruen:6,Mittelgruen:5,Hellgruen:4,Dunkelrot:3,Mittelrot:2,Hellrot:1,Weiss:0,;",128,0,0,0
	.stabs "color:p17",160,0,1,20
	.stabs "width:p7",160,0,4,16
	.stabs "filled:p1",160,0,1,12
	.stabs "closed:p1",160,0,1,8
	.stabn 192,0,0,.LBB13-xgraphic_XGD_DrawPoly
	.stabn 224,0,0,.LBE13-xgraphic_XGD_DrawPoly
	.stabs "xgraphic_XGD_AddPolyPoint:F16",36,0,0,xgraphic_XGD_AddPolyPoint
	.align 4
xgraphic_XGD_AddPolyPoint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab40, %esp
.LN58:
	.stabn  68,0,449,.LN58-xgraphic_XGD_AddPolyPoint		# line 449, column 1
.LBB14:
.LN59:
	.stabn  68,0,450,.LN59-xgraphic_XGD_AddPolyPoint		# line 450, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_AddPolyPoint
	addl	$8, %esp
.LN60:
	.stabn  68,0,451,.LN60-xgraphic_XGD_AddPolyPoint		# line 451, column 0
.LBE14:
	leave
	ret
	.Lab40 = 4
	.stabs "y:p7",160,0,4,12
	.stabs "x:p7",160,0,4,8
	.stabn 192,0,0,.LBB14-xgraphic_XGD_AddPolyPoint
	.stabn 224,0,0,.LBE14-xgraphic_XGD_AddPolyPoint
	.stabs "xgraphic_XGD_BeginPoly:F16",36,0,0,xgraphic_XGD_BeginPoly
	.align 4
xgraphic_XGD_BeginPoly:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab41, %esp
.LN61:
	.stabn  68,0,443,.LN61-xgraphic_XGD_BeginPoly		# line 443, column 1
.LBB15:
.LN62:
	.stabn  68,0,444,.LN62-xgraphic_XGD_BeginPoly		# line 444, column 9
	pushl	8(%ebp)
	call	I_XGD_BeginPoly
	addl	$4, %esp
.LN63:
	.stabn  68,0,445,.LN63-xgraphic_XGD_BeginPoly		# line 445, column 0
.LBE15:
	leave
	ret
	.Lab41 = 4
	.stabs "n:p7",160,0,4,8
	.stabn 192,0,0,.LBB15-xgraphic_XGD_BeginPoly
	.stabn 224,0,0,.LBE15-xgraphic_XGD_BeginPoly
	.stabs "xgraphic_XGD_GetStringExtents:F16",36,0,0,xgraphic_XGD_GetStringExtents
	.align 4
xgraphic_XGD_GetStringExtents:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab42, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN64:
	.stabn  68,0,435,.LN64-xgraphic_XGD_GetStringExtents		# line 435, column 1
.LBB16:
.LN65:
	.stabn  68,0,436,.LN65-xgraphic_XGD_GetStringExtents		# line 436, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN66:
	.stabn  68,0,437,.LN66-xgraphic_XGD_GetStringExtents		# line 437, column 9
	pushl	20(%ebp)
	pushl	16(%ebp)
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGD_GetStringExtents
	addl	$12, %esp
.LN67:
	.stabn  68,0,438,.LN67-xgraphic_XGD_GetStringExtents		# line 438, column 0
.LBE16:
	leave
	ret
	.Lab42 = 260
	.stabs "Feld:18=ar4;0;255;2",128,0,256,-260
	.stabs "h:v7",160,0,4,20
	.stabs "w:v7",160,0,4,16
	.stabs "text:p19=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB16-xgraphic_XGD_GetStringExtents
	.stabn 224,0,0,.LBE16-xgraphic_XGD_GetStringExtents
	.stabs "xgraphic_XGD_DrawString:F16",36,0,0,xgraphic_XGD_DrawString
	.align 4
xgraphic_XGD_DrawString:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab43, %esp
	movl	20(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	16(%ebp),%esi
	movl	%edi,16(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN68:
	.stabn  68,0,426,.LN68-xgraphic_XGD_DrawString		# line 426, column 1
.LBB17:
.LN69:
	.stabn  68,0,427,.LN69-xgraphic_XGD_DrawString		# line 427, column 9
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN70:
	.stabn  68,0,428,.LN70-xgraphic_XGD_DrawString		# line 428, column 9
	movzbl	24(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab44
.Lab45:
   	call	BoundErr_		
.Lab44:
	pushl	%eax
	leal	-260(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_DrawString
	addl	$16, %esp
.LN71:
	.stabn  68,0,429,.LN71-xgraphic_XGD_DrawString		# line 429, column 0
.LBE17:
	leave
	ret
	.Lab43 = 260
	.stabs "Feld:20=ar4;0;255;2",128,0,256,-260
	.stabs "color:p17",160,0,1,24
	.stabs "text:p21=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "y:p7",160,0,4,12
	.stabs "x:p7",160,0,4,8
	.stabn 192,0,0,.LBB17-xgraphic_XGD_DrawString
	.stabn 224,0,0,.LBE17-xgraphic_XGD_DrawString
	.stabs "xgraphic_XGD_DrawCircle:F16",36,0,0,xgraphic_XGD_DrawCircle
	.align 4
xgraphic_XGD_DrawCircle:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab46, %esp
.LN72:
	.stabn  68,0,410,.LN72-xgraphic_XGD_DrawCircle		# line 410, column 1
.LBB18:
.LN73:
	.stabn  68,0,411,.LN73-xgraphic_XGD_DrawCircle		# line 411, column 9
	cmpb	$0,20(%ebp)
	je	.Lab49
.Lab48:
.LN74:
	.stabn  68,0,412,.LN74-xgraphic_XGD_DrawCircle		# line 412, column 17
	movzbl	24(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab50
.Lab51:
   	call	BoundErr_		
.Lab50:
	pushl	%eax
	pushl	$1
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_DrawCircle
	addl	$20, %esp
	jmp	.Lab47
.Lab49:
.LN75:
	.stabn  68,0,414,.LN75-xgraphic_XGD_DrawCircle		# line 414, column 17
	movzbl	24(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab52
.Lab53:
   	call	BoundErr_		
.Lab52:
	pushl	%eax
	pushl	$0
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_DrawCircle
	addl	$20, %esp
.Lab47:
.LN76:
	.stabn  68,0,415,.LN76-xgraphic_XGD_DrawCircle		# line 415, column 0
.LBE18:
	leave
	ret
	.Lab46 = 4
	.stabs "color:p17",160,0,1,24
	.stabs "filled:p1",160,0,1,20
	.stabs "r:p7",160,0,4,16
	.stabs "y:p7",160,0,4,12
	.stabs "x:p7",160,0,4,8
	.stabn 192,0,0,.LBB18-xgraphic_XGD_DrawCircle
	.stabn 224,0,0,.LBE18-xgraphic_XGD_DrawCircle
	.stabs "xgraphic_XGD_DrawLine:F16",36,0,0,xgraphic_XGD_DrawLine
	.align 4
xgraphic_XGD_DrawLine:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab54, %esp
.LN77:
	.stabn  68,0,395,.LN77-xgraphic_XGD_DrawLine		# line 395, column 1
.LBB19:
.LN78:
	.stabn  68,0,396,.LN78-xgraphic_XGD_DrawLine		# line 396, column 9
	cmpl	$0,24(%ebp)
	jl	.Lab57
.Lab58:
	cmpl	$5,24(%ebp)
	jg	.Lab57
.Lab56:
.LN79:
	.stabn  68,0,397,.LN79-xgraphic_XGD_DrawLine		# line 397, column 17
	movzbl	28(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab59
.Lab60:
   	call	BoundErr_		
.Lab59:
	pushl	%eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_DrawLine
	addl	$24, %esp
	jmp	.Lab55
.Lab57:
.LN80:
	.stabn  68,0,399,.LN80-xgraphic_XGD_DrawLine		# line 399, column 17
	movzbl	28(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab61
.Lab62:
   	call	BoundErr_		
.Lab61:
	pushl	%eax
	pushl	$1
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_DrawLine
	addl	$24, %esp
.Lab55:
.LN81:
	.stabn  68,0,400,.LN81-xgraphic_XGD_DrawLine		# line 400, column 0
.LBE19:
	leave
	ret
	.Lab54 = 4
	.stabs "color:p17",160,0,1,28
	.stabs "w:p7",160,0,4,24
	.stabs "y2:p7",160,0,4,20
	.stabs "x2:p7",160,0,4,16
	.stabs "y1:p7",160,0,4,12
	.stabs "x1:p7",160,0,4,8
	.stabn 192,0,0,.LBB19-xgraphic_XGD_DrawLine
	.stabn 224,0,0,.LBE19-xgraphic_XGD_DrawLine
	.stabs "xgraphic_XGD_DrawArrowLine:F16",36,0,0,xgraphic_XGD_DrawArrowLine
	.align 4
xgraphic_XGD_DrawArrowLine:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab63, %esp
.LN82:
	.stabn  68,0,352,.LN82-xgraphic_XGD_DrawArrowLine		# line 352, column 1
.LBB20:
.LN83:
	.stabn  68,0,353,.LN83-xgraphic_XGD_DrawArrowLine		# line 353, column 7
	movl	16(%ebp),%eax
 	subl	8(%ebp),%eax 
	movl	%eax,-24(%ebp) 
.LN84:
	.stabn  68,0,354,.LN84-xgraphic_XGD_DrawArrowLine		# line 354, column 7
	movl	20(%ebp),%eax
 	subl	12(%ebp),%eax 
	movl	%eax,-28(%ebp) 
.LN85:
	.stabn  68,0,355,.LN85-xgraphic_XGD_DrawArrowLine		# line 355, column 11
	movl	$1,-20(%ebp) 
.LN86:
	.stabn  68,0,356,.LN86-xgraphic_XGD_DrawArrowLine		# line 356, column 4
	cmpl	$0,-24(%ebp)
	jne	.Lab66
.Lab65:
.LN87:
	.stabn  68,0,357,.LN87-xgraphic_XGD_DrawArrowLine		# line 357, column 7
	cmpl	$0,-28(%ebp)
	jle	.Lab69
.Lab68:
.LN88:
	.stabn  68,0,357,.LN88-xgraphic_XGD_DrawArrowLine		# line 357, column 28
	movl	$1070141402,-8(%ebp)
	jmp	.Lab67
.Lab69:
.LN89:
	.stabn  68,0,358,.LN89-xgraphic_XGD_DrawArrowLine		# line 358, column 28
	movl	$-1077342246,-8(%ebp)
.Lab67:
	jmp	.Lab64
.Lab66:
.LN90:
	.stabn  68,0,360,.LN90-xgraphic_XGD_DrawArrowLine		# line 360, column 4
	cmpl	$0,-28(%ebp)
	jne	.Lab72
.Lab71:
.LN91:
	.stabn  68,0,361,.LN91-xgraphic_XGD_DrawArrowLine		# line 361, column 7
	cmpl	$0,-24(%ebp)
	jle	.Lab75
.Lab74:
.LN92:
	.stabn  68,0,361,.LN92-xgraphic_XGD_DrawArrowLine		# line 361, column 28
	movl	$0,-8(%ebp)
	jmp	.Lab73
.Lab75:
.LN93:
	.stabn  68,0,362,.LN93-xgraphic_XGD_DrawArrowLine		# line 362, column 28
	movl	$-1068953638,-8(%ebp)
.Lab73:
	jmp	.Lab70
.Lab72:
.LN94:
	.stabn  68,0,365,.LN94-xgraphic_XGD_DrawArrowLine		# line 365, column 13
	fildl	-28(%ebp)
	fildl	-24(%ebp)
	fdivrp	%st,%st(1)
	flds	RealOne_
	fpatan
	fstps	-8(%ebp)
.LN95:
	.stabn  68,0,366,.LN95-xgraphic_XGD_DrawArrowLine		# line 366, column 7
	cmpl	$0,-24(%ebp)
	jge	.Lab76
.Lab77:
.LN96:
	.stabn  68,0,367,.LN96-xgraphic_XGD_DrawArrowLine		# line 367, column 17
	movl	$-1,-20(%ebp) 
.Lab76:
.Lab70:
.Lab64:
.LN97:
	.stabn  68,0,370,.LN97-xgraphic_XGD_DrawArrowLine		# line 370, column 10
	.data
	.align 4
.Lab78:
	.long	1070141402		# +0.15707962512969968E1
	.text
	flds	.Lab78
	fsubs	-8(%ebp) 
	fstps	-16(%ebp)
.LN98:
	.stabn  68,0,371,.LN98-xgraphic_XGD_DrawArrowLine		# line 371, column 12
	movl	-24(%ebp),%eax
	imull	%eax,%eax
	pushl	%eax
	fildl	(%esp)
	addl	$4,%esp
	movl	-28(%ebp),%eax
	imull	%eax,%eax
	pushl	%eax
	fildl	(%esp)
	addl	$4,%esp
	faddp	%st,%st(1)
	fsqrt
	fstps	-12(%ebp)
.LN99:
	.stabn  68,0,372,.LN99-xgraphic_XGD_DrawArrowLine		# line 372, column 12
	.data
	.align 4
.Lab79:
	.long	1058642329		# +0.59999996423721313E0
	.text
	flds	.Lab79
	fmuls	-12(%ebp) 
	fstps	-12(%ebp)
.LN100:
	.stabn  68,0,373,.LN100-xgraphic_XGD_DrawArrowLine		# line 373, column 7
	flds	-8(%ebp)
	fcos
	fmuls	-12(%ebp) 
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
 	addl	8(%ebp),%eax 
	movl	%eax,-32(%ebp) 
.LN101:
	.stabn  68,0,374,.LN101-xgraphic_XGD_DrawArrowLine		# line 374, column 7
	flds	-8(%ebp)
	fsin
	fmuls	-12(%ebp) 
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
 	addl	12(%ebp),%eax 
	movl	%eax,-36(%ebp) 
.LN102:
	.stabn  68,0,375,.LN102-xgraphic_XGD_DrawArrowLine		# line 375, column 8
	flds	-8(%ebp)
	fcos
	.data
	.align 4
.Lab80:
	.long	1092616192		# +0.09999999999999998E2
	.text
	flds	.Lab80
	fadds	-12(%ebp) 
	fmulp	%st,%st(1)
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
 	addl	8(%ebp),%eax 
	movl	%eax,-40(%ebp) 
.LN103:
	.stabn  68,0,376,.LN103-xgraphic_XGD_DrawArrowLine		# line 376, column 8
	flds	-8(%ebp)
	fsin
	.data
	.align 4
.Lab81:
	.long	1092616192		# +0.09999999999999998E2
	.text
	flds	.Lab81
	fadds	-12(%ebp) 
	fmulp	%st,%st(1)
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
 	addl	12(%ebp),%eax 
	movl	%eax,-44(%ebp) 
.LN104:
	.stabn  68,0,377,.LN104-xgraphic_XGD_DrawArrowLine		# line 377, column 8
	movl	-32(%ebp),%eax
	pushl	%eax
	flds	-16(%ebp)
	fcos
	.data
	.align 4
.Lab82:
	.long	1088421888		# +0.69999999999999991E1
	.text
	fmuls	.Lab82 
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
	popl	%ebx
 	subl	%eax,%ebx 
	movl	%ebx,-48(%ebp) 
.LN105:
	.stabn  68,0,378,.LN105-xgraphic_XGD_DrawArrowLine		# line 378, column 8
	flds	-16(%ebp)
	fsin
	.data
	.align 4
.Lab83:
	.long	1088421888		# +0.69999999999999991E1
	.text
	fmuls	.Lab83 
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
 	addl	-36(%ebp),%eax 
	movl	%eax,-52(%ebp) 
.LN106:
	.stabn  68,0,379,.LN106-xgraphic_XGD_DrawArrowLine		# line 379, column 8
	flds	-16(%ebp)
	fcos
	.data
	.align 4
.Lab84:
	.long	1088421888		# +0.69999999999999991E1
	.text
	fmuls	.Lab84 
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
 	addl	-32(%ebp),%eax 
	movl	%eax,-56(%ebp) 
.LN107:
	.stabn  68,0,380,.LN107-xgraphic_XGD_DrawArrowLine		# line 380, column 8
	movl	-36(%ebp),%eax
	pushl	%eax
	flds	-16(%ebp)
	fsin
	.data
	.align 4
.Lab85:
	.long	1088421888		# +0.69999999999999991E1
	.text
	fmuls	.Lab85 
	subl	$4,%esp
	fstps	(%esp)
	call	xgraphic_my_entier
	addl	$4, %esp
	imull	-20(%ebp),%eax 
	popl	%ebx
 	subl	%eax,%ebx 
	movl	%ebx,-60(%ebp) 
.LN108:
	.stabn  68,0,382,.LN108-xgraphic_XGD_DrawArrowLine		# line 382, column 4
	movzbl	28(%ebp),%eax
	pushl	%eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	xgraphic_XGD_DrawLine
	addl	$24, %esp
.LN109:
	.stabn  68,0,384,.LN109-xgraphic_XGD_DrawArrowLine		# line 384, column 4
	movzbl	28(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab86
.Lab87:
   	call	BoundErr_		
.Lab86:
	pushl	%eax
	call	I_XGD_SetColor
	addl	$4, %esp
.LN110:
	.stabn  68,0,385,.LN110-xgraphic_XGD_DrawArrowLine		# line 385, column 4
	pushl	-60(%ebp)
	pushl	-56(%ebp)
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	call	I_XGD_DrawTriangle
	addl	$24, %esp
.LN111:
	.stabn  68,0,386,.LN111-xgraphic_XGD_DrawArrowLine		# line 386, column 0
.LBE20:
	leave
	ret
	.Lab63 = 60
	.stabs "m3y:7",128,0,4,-60
	.stabs "m3x:7",128,0,4,-56
	.stabs "m2y:7",128,0,4,-52
	.stabs "m2x:7",128,0,4,-48
	.stabs "m1y:7",128,0,4,-44
	.stabs "m1x:7",128,0,4,-40
	.stabs "my:7",128,0,4,-36
	.stabs "mx:7",128,0,4,-32
	.stabs "dy:7",128,0,4,-28
	.stabs "dx:7",128,0,4,-24
	.stabs "Faktor:7",128,0,4,-20
	.stabs "Beta:9",128,0,4,-16
	.stabs "Abstand:9",128,0,4,-12
	.stabs "Alpha:9",128,0,4,-8
	.stabs "pi:c=r3.14159265359999961830E0",128,0,0,0
	.stabs "l:c=r1.00000000000000000000E1",128,0,0,0
	.stabs "b:c=r7.00000000000000000000E0",128,0,0,0
	.stabs "Prozentsatz:c=r5.99999999999999822364E-1",128,0,0,0
	.stabs "color:p17",160,0,1,28
	.stabs "width:p7",160,0,4,24
	.stabs "y2:p7",160,0,4,20
	.stabs "x2:p7",160,0,4,16
	.stabs "y1:p7",160,0,4,12
	.stabs "x1:p7",160,0,4,8
	.stabn 192,0,0,.LBB20-xgraphic_XGD_DrawArrowLine
	.stabn 224,0,0,.LBE20-xgraphic_XGD_DrawArrowLine
	.stabs "xgraphic_XGD_SetClipping:F16",36,0,0,xgraphic_XGD_SetClipping
	.align 4
xgraphic_XGD_SetClipping:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab88, %esp
.LN112:
	.stabn  68,0,314,.LN112-xgraphic_XGD_SetClipping		# line 314, column 1
.LBB21:
.LN113:
	.stabn  68,0,315,.LN113-xgraphic_XGD_SetClipping		# line 315, column 9
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGD_SetClipping
	addl	$16, %esp
.LN114:
	.stabn  68,0,316,.LN114-xgraphic_XGD_SetClipping		# line 316, column 0
.LBE21:
	leave
	ret
	.Lab88 = 4
	.stabs "h:p7",160,0,4,20
	.stabs "w:p7",160,0,4,16
	.stabs "py:p7",160,0,4,12
	.stabs "px:p7",160,0,4,8
	.stabn 192,0,0,.LBB21-xgraphic_XGD_SetClipping
	.stabn 224,0,0,.LBE21-xgraphic_XGD_SetClipping
	.stabs "xgraphic_XGD_NoClipping:F16",36,0,0,xgraphic_XGD_NoClipping
	.align 4
xgraphic_XGD_NoClipping:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab89, %esp
.LN115:
	.stabn  68,0,304,.LN115-xgraphic_XGD_NoClipping		# line 304, column 1
.LBB22:
.LN116:
	.stabn  68,0,305,.LN116-xgraphic_XGD_NoClipping		# line 305, column 9
	call	I_XGD_NoClipping
.LN117:
	.stabn  68,0,306,.LN117-xgraphic_XGD_NoClipping		# line 306, column 0
.LBE22:
	leave
	ret
	.Lab89 = 4
	.stabn 192,0,0,.LBB22-xgraphic_XGD_NoClipping
	.stabn 224,0,0,.LBE22-xgraphic_XGD_NoClipping
	.stabs "xgraphic_XGN_YesOrNo:F1",36,0,0,xgraphic_XGN_YesOrNo
	.align 4
xgraphic_XGN_YesOrNo:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab90, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN118:
	.stabn  68,0,285,.LN118-xgraphic_XGN_YesOrNo		# line 285, column 1
.LBB23:
.LN119:
	.stabn  68,0,286,.LN119-xgraphic_XGN_YesOrNo		# line 286, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN120:
	.stabn  68,0,287,.LN120-xgraphic_XGN_YesOrNo		# line 287, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	Strings_Length
	addl	$8, %esp
	movl	%eax,-268(%ebp) 
	cmpl	$1,-268(%ebp)
	jb	.Lab91
	movl	$1,-264(%ebp) 
	movl	-268(%ebp),%eax
	movl	%eax,-272(%ebp) 
.Lab92:
.LN121:
	.stabn  68,0,288,.LN121-xgraphic_XGN_YesOrNo		# line 288, column 17
	movl	-264(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab95
.Lab96:
   	call	BoundErr_		
.Lab95:
	cmpb	$124,-260(%ebp,%eax,1)
	jne	.Lab93
.Lab94:
.LN122:
	.stabn  68,0,289,.LN122-xgraphic_XGN_YesOrNo		# line 289, column 30
	movl	-264(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab97
.Lab98:
   	call	BoundErr_		
.Lab97:
	movb	$13,-260(%ebp,%eax,1) 
.Lab93:
.LN123:
	.stabn  68,0,287,.LN123-xgraphic_XGN_YesOrNo		# line 287, column 9
	movl	-264(%ebp),%eax
	cmpl	-272(%ebp),%eax
	jae	.Lab91
	incl	-264(%ebp) 
	jmp	.Lab92
.Lab91:
.LN124:
	.stabn  68,0,292,.LN124-xgraphic_XGN_YesOrNo		# line 292, column 9
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_YesOrNo
	addl	$4, %esp
	cmpl	$1,%eax
	jne	.Lab101
.Lab100:
.LN125:
	.stabn  68,0,293,.LN125-xgraphic_XGN_YesOrNo		# line 293, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab99
.Lab101:
.LN126:
	.stabn  68,0,295,.LN126-xgraphic_XGN_YesOrNo		# line 295, column 17
	movb	$0,%al
	leave
	ret
.Lab99:
.LN127:
	.stabn  68,0,296,.LN127-xgraphic_XGN_YesOrNo		# line 296, column 0
	call	ReturnErr_
.LBE23:
	leave
	ret
	.Lab90 = 272
	.stabs "i:4",128,0,4,-264
	.stabs "t1:22=ar4;0;255;2",128,0,256,-260
	.stabs "prompt:p23=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB23-xgraphic_XGN_YesOrNo
	.stabn 224,0,0,.LBE23-xgraphic_XGN_YesOrNo
	.stabs "xgraphic_XGN_GetFileName:F1",36,0,0,xgraphic_XGN_GetFileName
	.align 4
xgraphic_XGN_GetFileName:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab102, %esp
.LN128:
	.stabn  68,0,269,.LN128-xgraphic_XGN_GetFileName		# line 269, column 1
.LBB24:
.LN129:
	.stabn  68,0,270,.LN129-xgraphic_XGN_GetFileName		# line 270, column 9
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_GetFileName
	addl	$4, %esp
	cmpl	$1,%eax
	jne	.Lab105
.Lab104:
.LN130:
	.stabn  68,0,271,.LN130-xgraphic_XGN_GetFileName		# line 271, column 17
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN131:
	.stabn  68,0,272,.LN131-xgraphic_XGN_GetFileName		# line 272, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab103
.Lab105:
.LN132:
	.stabn  68,0,274,.LN132-xgraphic_XGN_GetFileName		# line 274, column 17
	movb	$0,%al
	leave
	ret
.Lab103:
.LN133:
	.stabn  68,0,275,.LN133-xgraphic_XGN_GetFileName		# line 275, column 0
	call	ReturnErr_
.LBE24:
	leave
	ret
	.Lab102 = 260
	.stabs "h:24=ar4;0;255;2",128,0,256,-260
	.stabs "name:p25=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB24-xgraphic_XGN_GetFileName
	.stabn 224,0,0,.LBE24-xgraphic_XGN_GetFileName
	.stabs "xgraphic_XGN_FileSelector:F16",36,0,0,xgraphic_XGN_FileSelector
	.align 4
xgraphic_XGN_FileSelector:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab106, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN134:
	.stabn  68,0,256,.LN134-xgraphic_XGN_FileSelector		# line 256, column 1
.LBB25:
.LN135:
	.stabn  68,0,257,.LN135-xgraphic_XGN_FileSelector		# line 257, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN136:
	.stabn  68,0,258,.LN136-xgraphic_XGN_FileSelector		# line 258, column 9
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_FileSelector
	addl	$4, %esp
.LN137:
	.stabn  68,0,259,.LN137-xgraphic_XGN_FileSelector		# line 259, column 0
.LBE25:
	leave
	ret
	.Lab106 = 260
	.stabs "t1:26=ar4;0;255;2",128,0,256,-260
	.stabs "mask:p27=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB25-xgraphic_XGN_FileSelector
	.stabn 224,0,0,.LBE25-xgraphic_XGN_FileSelector
	.stabs "xgraphic_XGN_GetLastString:F1",36,0,0,xgraphic_XGN_GetLastString
	.align 4
xgraphic_XGN_GetLastString:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab107, %esp
.LN138:
	.stabn  68,0,240,.LN138-xgraphic_XGN_GetLastString		# line 240, column 1
.LBB26:
.LN139:
	.stabn  68,0,241,.LN139-xgraphic_XGN_GetLastString		# line 241, column 9
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_GetLastString
	addl	$4, %esp
	cmpl	$1,%eax
	jne	.Lab110
.Lab109:
.LN140:
	.stabn  68,0,242,.LN140-xgraphic_XGN_GetLastString		# line 242, column 17
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN141:
	.stabn  68,0,243,.LN141-xgraphic_XGN_GetLastString		# line 243, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab108
.Lab110:
.LN142:
	.stabn  68,0,245,.LN142-xgraphic_XGN_GetLastString		# line 245, column 17
	movb	$0,%al
	leave
	ret
.Lab108:
.LN143:
	.stabn  68,0,246,.LN143-xgraphic_XGN_GetLastString		# line 246, column 0
	call	ReturnErr_
.LBE26:
	leave
	ret
	.Lab107 = 260
	.stabs "Feld:28=ar4;0;255;2",128,0,256,-260
	.stabs "Str:p29=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB26-xgraphic_XGN_GetLastString
	.stabn 224,0,0,.LBE26-xgraphic_XGN_GetLastString
	.stabs "xgraphic_XGN_InputString:F16",36,0,0,xgraphic_XGN_InputString
	.align 4
xgraphic_XGN_InputString:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab111, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN144:
	.stabn  68,0,229,.LN144-xgraphic_XGN_InputString		# line 229, column 1
.LBB27:
.LN145:
	.stabn  68,0,230,.LN145-xgraphic_XGN_InputString		# line 230, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN146:
	.stabn  68,0,231,.LN146-xgraphic_XGN_InputString		# line 231, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_InputString
	addl	$8, %esp
.LN147:
	.stabn  68,0,232,.LN147-xgraphic_XGN_InputString		# line 232, column 0
.LBE27:
	leave
	ret
	.Lab111 = 260
	.stabs "text:30=ar4;0;255;2",128,0,256,-260
	.stabs "prompt:p31=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB27-xgraphic_XGN_InputString
	.stabn 224,0,0,.LBE27-xgraphic_XGN_InputString
	.stabs "xgraphic_XGN_ShowNotice:F16",36,0,0,xgraphic_XGN_ShowNotice
	.align 4
xgraphic_XGN_ShowNotice:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab112, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN148:
	.stabn  68,0,213,.LN148-xgraphic_XGN_ShowNotice		# line 213, column 1
.LBB28:
.LN149:
	.stabn  68,0,214,.LN149-xgraphic_XGN_ShowNotice		# line 214, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN150:
	.stabn  68,0,215,.LN150-xgraphic_XGN_ShowNotice		# line 215, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	Strings_Length
	addl	$8, %esp
	movl	%eax,-268(%ebp) 
	cmpl	$1,-268(%ebp)
	jb	.Lab113
	movl	$1,-264(%ebp) 
	movl	-268(%ebp),%eax
	movl	%eax,-272(%ebp) 
.Lab114:
.LN151:
	.stabn  68,0,216,.LN151-xgraphic_XGN_ShowNotice		# line 216, column 17
	movl	-264(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab117
.Lab118:
   	call	BoundErr_		
.Lab117:
	cmpb	$124,-260(%ebp,%eax,1)
	jne	.Lab115
.Lab116:
.LN152:
	.stabn  68,0,217,.LN152-xgraphic_XGN_ShowNotice		# line 217, column 33
	movl	-264(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab119
.Lab120:
   	call	BoundErr_		
.Lab119:
	movb	$13,-260(%ebp,%eax,1) 
.Lab115:
.LN153:
	.stabn  68,0,215,.LN153-xgraphic_XGN_ShowNotice		# line 215, column 9
	movl	-264(%ebp),%eax
	cmpl	-272(%ebp),%eax
	jae	.Lab113
	incl	-264(%ebp) 
	jmp	.Lab114
.Lab113:
.LN154:
	.stabn  68,0,220,.LN154-xgraphic_XGN_ShowNotice		# line 220, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_ShowNotice
	addl	$8, %esp
.LN155:
	.stabn  68,0,221,.LN155-xgraphic_XGN_ShowNotice		# line 221, column 0
.LBE28:
	leave
	ret
	.Lab112 = 272
	.stabs "i:4",128,0,4,-264
	.stabs "Feld:32=ar4;0;255;2",128,0,256,-260
	.stabs "Text:p33=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB28-xgraphic_XGN_ShowNotice
	.stabn 224,0,0,.LBE28-xgraphic_XGN_ShowNotice
	.stabs "xgraphic_XGN_GetLastInteger:F1",36,0,0,xgraphic_XGN_GetLastInteger
	.align 4
xgraphic_XGN_GetLastInteger:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab121, %esp
.LN156:
	.stabn  68,0,197,.LN156-xgraphic_XGN_GetLastInteger		# line 197, column 1
.LBB29:
.LN157:
	.stabn  68,0,198,.LN157-xgraphic_XGN_GetLastInteger		# line 198, column 9
	pushl	8(%ebp)
	call	I_XGN_GetLastInteger
	addl	$4, %esp
	cmpl	$1,%eax
	jne	.Lab124
.Lab123:
.LN158:
	.stabn  68,0,199,.LN158-xgraphic_XGN_GetLastInteger		# line 199, column 17
	movb	$1,%al
	leave
	ret
	jmp	.Lab122
.Lab124:
.LN159:
	.stabn  68,0,201,.LN159-xgraphic_XGN_GetLastInteger		# line 201, column 17
	movb	$0,%al
	leave
	ret
.Lab122:
.LN160:
	.stabn  68,0,202,.LN160-xgraphic_XGN_GetLastInteger		# line 202, column 0
	call	ReturnErr_
.LBE29:
	leave
	ret
	.Lab121 = 4
	.stabs "Int:v7",160,0,4,8
	.stabn 192,0,0,.LBB29-xgraphic_XGN_GetLastInteger
	.stabn 224,0,0,.LBE29-xgraphic_XGN_GetLastInteger
	.stabs "xgraphic_XGN_InputInt:F16",36,0,0,xgraphic_XGN_InputInt
	.align 4
xgraphic_XGN_InputInt:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab125, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN161:
	.stabn  68,0,187,.LN161-xgraphic_XGN_InputInt		# line 187, column 1
.LBB30:
.LN162:
	.stabn  68,0,188,.LN162-xgraphic_XGN_InputInt		# line 188, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN163:
	.stabn  68,0,189,.LN163-xgraphic_XGN_InputInt		# line 189, column 9
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGN_InputInt
	addl	$20, %esp
.LN164:
	.stabn  68,0,190,.LN164-xgraphic_XGN_InputInt		# line 190, column 0
.LBE30:
	leave
	ret
	.Lab125 = 260
	.stabs "Text:34=ar4;0;255;2",128,0,256,-260
	.stabs "ticks:p7",160,0,4,28
	.stabs "ubound:p7",160,0,4,24
	.stabs "lbound:p7",160,0,4,20
	.stabs "start:p7",160,0,4,16
	.stabs "prompt:p35=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB30-xgraphic_XGN_InputInt
	.stabn 224,0,0,.LBE30-xgraphic_XGN_InputInt
	.stabs "xgraphic_XGF_SetDefault:F16",36,0,0,xgraphic_XGF_SetDefault
	.align 4
xgraphic_XGF_SetDefault:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab126, %esp
.LN165:
	.stabn  68,0,173,.LN165-xgraphic_XGF_SetDefault		# line 173, column 1
.LBB31:
.LN166:
	.stabn  68,0,174,.LN166-xgraphic_XGF_SetDefault		# line 174, column 9
	call	I_XGF_SetDefault
.LN167:
	.stabn  68,0,175,.LN167-xgraphic_XGF_SetDefault		# line 175, column 0
.LBE31:
	leave
	ret
	.Lab126 = 4
	.stabn 192,0,0,.LBB31-xgraphic_XGF_SetDefault
	.stabn 224,0,0,.LBE31-xgraphic_XGF_SetDefault
	.stabs "xgraphic_XGF_SetRight:F16",36,0,0,xgraphic_XGF_SetRight
	.align 4
xgraphic_XGF_SetRight:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab127, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN168:
	.stabn  68,0,163,.LN168-xgraphic_XGF_SetRight		# line 163, column 1
.LBB32:
.LN169:
	.stabn  68,0,164,.LN169-xgraphic_XGF_SetRight		# line 164, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN170:
	.stabn  68,0,165,.LN170-xgraphic_XGF_SetRight		# line 165, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGF_SetRight
	addl	$8, %esp
.LN171:
	.stabn  68,0,166,.LN171-xgraphic_XGF_SetRight		# line 166, column 0
.LBE32:
	leave
	ret
	.Lab127 = 260
	.stabs "Feld:36=ar4;0;255;2",128,0,256,-260
	.stabs "text:p37=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB32-xgraphic_XGF_SetRight
	.stabn 224,0,0,.LBE32-xgraphic_XGF_SetRight
	.stabs "xgraphic_XGF_SetLeft:F16",36,0,0,xgraphic_XGF_SetLeft
	.align 4
xgraphic_XGF_SetLeft:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab128, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN172:
	.stabn  68,0,152,.LN172-xgraphic_XGF_SetLeft		# line 152, column 1
.LBB33:
.LN173:
	.stabn  68,0,153,.LN173-xgraphic_XGF_SetLeft		# line 153, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN174:
	.stabn  68,0,154,.LN174-xgraphic_XGF_SetLeft		# line 154, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGF_SetLeft
	addl	$8, %esp
.LN175:
	.stabn  68,0,155,.LN175-xgraphic_XGF_SetLeft		# line 155, column 0
.LBE33:
	leave
	ret
	.Lab128 = 260
	.stabs "Feld:38=ar4;0;255;2",128,0,256,-260
	.stabs "text:p39=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB33-xgraphic_XGF_SetLeft
	.stabn 224,0,0,.LBE33-xgraphic_XGF_SetLeft
	.stabs "xgraphic_XGM_SetItemActivity:F16",36,0,0,xgraphic_XGM_SetItemActivity
	.align 4
xgraphic_XGM_SetItemActivity:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab129, %esp
.LN176:
	.stabn  68,0,138,.LN176-xgraphic_XGM_SetItemActivity		# line 138, column 1
.LBB34:
.LN177:
	.stabn  68,0,139,.LN177-xgraphic_XGM_SetItemActivity		# line 139, column 9
	cmpb	$0,16(%ebp)
	je	.Lab132
.Lab131:
.LN178:
	.stabn  68,0,140,.LN178-xgraphic_XGM_SetItemActivity		# line 140, column 17
	pushl	$1
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	pushl	8(%ebp)
	call	I_XGM_SetItemActivity
	addl	$12, %esp
	jmp	.Lab130
.Lab132:
.LN179:
	.stabn  68,0,142,.LN179-xgraphic_XGM_SetItemActivity		# line 142, column 17
	pushl	$0
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	pushl	8(%ebp)
	call	I_XGM_SetItemActivity
	addl	$12, %esp
.Lab130:
.LN180:
	.stabn  68,0,143,.LN180-xgraphic_XGM_SetItemActivity		# line 143, column 0
.LBE34:
	leave
	ret
	.Lab129 = 4
	.stabs "Status:p1",160,0,1,16
	.stabs "Nummer:p7",160,0,4,12
	.stabs "Handle:p7",160,0,4,8
	.stabn 192,0,0,.LBB34-xgraphic_XGM_SetItemActivity
	.stabn 224,0,0,.LBE34-xgraphic_XGM_SetItemActivity
	.stabs "xgraphic_XGM_CreateMenu:F16",36,0,0,xgraphic_XGM_CreateMenu
	.align 4
xgraphic_XGM_CreateMenu:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab133, %esp
.LN181:
	.stabn  68,0,127,.LN181-xgraphic_XGM_CreateMenu		# line 127, column 1
.LBB35:
.LN182:
	.stabn  68,0,128,.LN182-xgraphic_XGM_CreateMenu		# line 128, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XGM_CreateMenu
	addl	$8, %esp
.LN183:
	.stabn  68,0,129,.LN183-xgraphic_XGM_CreateMenu		# line 129, column 0
.LBE35:
	leave
	ret
	.Lab133 = 4
	.stabs "Callback:p12",160,0,4,12
	.stabs "mHandle:p7",160,0,4,8
	.stabn 192,0,0,.LBB35-xgraphic_XGM_CreateMenu
	.stabn 224,0,0,.LBE35-xgraphic_XGM_CreateMenu
	.stabs "xgraphic_XGM_AppendItem:F16",36,0,0,xgraphic_XGM_AppendItem
	.align 4
xgraphic_XGM_AppendItem:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab134, %esp
	movl	16(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	12(%ebp),%esi
	movl	%edi,12(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN184:
	.stabn  68,0,115,.LN184-xgraphic_XGM_AppendItem		# line 115, column 1
.LBB36:
.LN185:
	.stabn  68,0,116,.LN185-xgraphic_XGM_AppendItem		# line 116, column 9
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN186:
	.stabn  68,0,118,.LN186-xgraphic_XGM_AppendItem		# line 118, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	I_XGM_AppendItem
	addl	$12, %esp
.LN187:
	.stabn  68,0,119,.LN187-xgraphic_XGM_AppendItem		# line 119, column 0
.LBE36:
	leave
	ret
	.Lab134 = 260
	.stabs "Feld:40=ar4;0;255;2",128,0,256,-260
	.stabs "label:p41=s8start:*2,0,32;high:5,32,32;;",160,0,8,12
	.stabs "mHandle:p7",160,0,4,8
	.stabn 192,0,0,.LBB36-xgraphic_XGM_AppendItem
	.stabn 224,0,0,.LBE36-xgraphic_XGM_AppendItem
	.stabs "xgraphic_XGM_NewMenu:F7",36,0,0,xgraphic_XGM_NewMenu
	.align 4
xgraphic_XGM_NewMenu:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab135, %esp
	movl	12(%ebp),%ecx
	incl	%ecx
	addl	$3,%ecx
	andl	$0xfffffffc, %ecx
	subl 	%ecx,%esp
	movl	%esp,%edi
	movl	8(%ebp),%esi
	movl	%edi,8(%ebp)
	shrl	$2,%ecx
	cld
	repz
	movsl
.LN188:
	.stabn  68,0,102,.LN188-xgraphic_XGM_NewMenu		# line 102, column 1
.LBB37:
.LN189:
	.stabn  68,0,103,.LN189-xgraphic_XGM_NewMenu		# line 103, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_my_Assign
	addl	$16, %esp
.LN190:
	.stabn  68,0,104,.LN190-xgraphic_XGM_NewMenu		# line 104, column 11
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	I_XGM_NewMenu
	addl	$8, %esp
	movl	%eax,-264(%ebp) 
.LN191:
	.stabn  68,0,105,.LN191-xgraphic_XGM_NewMenu		# line 105, column 9
	movl	-264(%ebp),%eax
	leave
	ret
.LN192:
	.stabn  68,0,106,.LN192-xgraphic_XGM_NewMenu		# line 106, column 0
	call	ReturnErr_
.LBE37:
	leave
	ret
	.Lab135 = 264
	.stabs "X:7",128,0,4,-264
	.stabs "Feld:42=ar4;0;255;2",128,0,256,-260
	.stabs "label:p43=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB37-xgraphic_XGM_NewMenu
	.stabn 224,0,0,.LBE37-xgraphic_XGM_NewMenu
	.stabs "xgraphic_XG_SetTimer:F16",36,0,0,xgraphic_XG_SetTimer
	.align 4
xgraphic_XG_SetTimer:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab136, %esp
.LN193:
	.stabn  68,0,94,.LN193-xgraphic_XG_SetTimer		# line 94, column 1
.LBB38:
.LN194:
	.stabn  68,0,95,.LN194-xgraphic_XG_SetTimer		# line 95, column 3
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	I_XG_SetTimer
	addl	$8, %esp
.LN195:
	.stabn  68,0,96,.LN195-xgraphic_XG_SetTimer		# line 96, column 0
.LBE38:
	leave
	ret
	.Lab136 = 4
	.stabs "callback:p12",160,0,4,12
	.stabs "IntervalTime:p7",160,0,4,8
	.stabn 192,0,0,.LBB38-xgraphic_XG_SetTimer
	.stabn 224,0,0,.LBE38-xgraphic_XG_SetTimer
	.stabs "xgraphic_XG_StartMainLoop:F16",36,0,0,xgraphic_XG_StartMainLoop
	.align 4
xgraphic_XG_StartMainLoop:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab137, %esp
.LN196:
	.stabn  68,0,87,.LN196-xgraphic_XG_StartMainLoop		# line 87, column 1
.LBB39:
.LN197:
	.stabn  68,0,88,.LN197-xgraphic_XG_StartMainLoop		# line 88, column 9
	call	I_XG_StartMainLoop
.LN198:
	.stabn  68,0,89,.LN198-xgraphic_XG_StartMainLoop		# line 89, column 0
.LBE39:
	leave
	ret
	.Lab137 = 4
	.stabn 192,0,0,.LBB39-xgraphic_XG_StartMainLoop
	.stabn 224,0,0,.LBE39-xgraphic_XG_StartMainLoop
	.stabs "xgraphic_XG_Init:F16",36,0,0,xgraphic_XG_Init
	.align 4
xgraphic_XG_Init:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab138, %esp
.LN199:
	.stabn  68,0,78,.LN199-xgraphic_XG_Init		# line 78, column 1
.LBB40:
.LN200:
	.stabn  68,0,79,.LN200-xgraphic_XG_Init		# line 79, column 9
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	call	I_XG_Init
	addl	$16, %esp
.LN201:
	.stabn  68,0,80,.LN201-xgraphic_XG_Init		# line 80, column 0
.LBE40:
	leave
	ret
	.Lab138 = 4
	.stabs "CB_Event:p12",160,0,4,20
	.stabs "CB_Repaint:p12",160,0,4,16
	.stabs "ArgTable:t44=*45=ar4;0;999;46=*47=ar4;0;999;2",128,0,0,0
	.stabs "Argumente:p44",160,0,4,12
	.stabs "AnzahlArgumente:p3",160,0,2,8
	.stabn 192,0,0,.LBB40-xgraphic_XG_Init
	.stabn 224,0,0,.LBE40-xgraphic_XG_Init
	.stabs "xgraphic_my_Assign:F16",36,0,0,xgraphic_my_Assign
	.align 4
xgraphic_my_Assign:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab139, %esp
.LN202:
	.stabn  68,0,58,.LN202-xgraphic_my_Assign		# line 58, column 1
.LBB41:
.LN203:
	.stabn  68,0,60,.LN203-xgraphic_my_Assign		# line 60, column 3
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Strings_Assign
	addl	$16, %esp
.LN204:
	.stabn  68,0,62,.LN204-xgraphic_my_Assign		# line 62, column 3
	leave
	ret
.LN205:
	.stabn  68,0,63,.LN205-xgraphic_my_Assign		# line 63, column 0
.LBE41:
	leave
	ret
	.Lab139 = 4
	.stabs "str2:p48=s8start:*2,0,32;high:5,32,32;;",160,0,8,16
	.stabs "str1:p48",160,0,8,8
	.stabn 192,0,0,.LBB41-xgraphic_my_Assign
	.stabn 224,0,0,.LBE41-xgraphic_my_Assign
	.stabs "xgraphic_my_entier:F7",36,0,0,xgraphic_my_entier
	.align 4
xgraphic_my_entier:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab140, %esp
.LN206:
	.stabn  68,0,46,.LN206-xgraphic_my_entier		# line 46, column 1
.LBB42:
.LN207:
	.stabn  68,0,48,.LN207-xgraphic_my_entier		# line 48, column 3
	flds	8(%ebp)
	subl	$4,%esp
	fldcw	fpucw_round_to_neginf
	fistpl	(%esp)
	popl	%eax
	leave
	ret
.LN208:
	.stabn  68,0,49,.LN208-xgraphic_my_entier		# line 49, column 0
	call	ReturnErr_
.LBE42:
	leave
	ret
	.Lab140 = 4
	.stabs "x:p9",160,0,4,8
	.stabn 192,0,0,.LBB42-xgraphic_my_entier
	.stabn 224,0,0,.LBE42-xgraphic_my_entier
	.stabs "xgraphic:F16",36,0,0,xgraphic
	.align 4
xgraphic:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab141, %esp
.LN209:
	.stabn  68,0,577,.LN209-xgraphic		# line 577, column 1
.LBB43:
.LN210:
	.stabn  68,0,578,.LN210-xgraphic		# line 578, column 0
.LBE43:
	leave
	ret
	.Lab141 = 4
	.stabs "MaxString:c=i255",128,0,0,0
	.stabs "Schwarz:c=i19",128,0,0,0
	.stabs "Dunkelgrau:c=i18",128,0,0,0
	.stabs "Mittelgrau:c=i17",128,0,0,0
	.stabs "Hellgrau:c=i16",128,0,0,0
	.stabs "Dunkeltuerkis:c=i15",128,0,0,0
	.stabs "Mitteltuerkis:c=i14",128,0,0,0
	.stabs "Helltuerkis:c=i13",128,0,0,0
	.stabs "Dunkelblau:c=i12",128,0,0,0
	.stabs "Mittelblau:c=i11",128,0,0,0
	.stabs "Hellblau:c=i10",128,0,0,0
	.stabs "Dunkelgelb:c=i9",128,0,0,0
	.stabs "Mittelgelb:c=i8",128,0,0,0
	.stabs "Hellgelb:c=i7",128,0,0,0
	.stabs "Dunkelgruen:c=i6",128,0,0,0
	.stabs "Mittelgruen:c=i5",128,0,0,0
	.stabs "Hellgruen:c=i4",128,0,0,0
	.stabs "Dunkelrot:c=i3",128,0,0,0
	.stabs "Mittelrot:c=i2",128,0,0,0
	.stabs "Hellrot:c=i1",128,0,0,0
	.stabs "Weiss:c=i0",128,0,0,0
	.stabn 192,0,0,.LBB43-xgraphic
	.stabn 224,0,0,.LBE43-xgraphic
