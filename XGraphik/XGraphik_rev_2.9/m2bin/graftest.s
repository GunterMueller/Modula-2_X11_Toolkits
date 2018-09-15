	.comm graftest_s, 17328
	.text
	.stabs "/home/gunter/GM_LANGUAGES/Modula-2/GM_X11_Programming/GM_XGraphik_Sopra96-97/XGraphic/",100,0,0,.LBB0
	.stabs "graftest.mod",100,0,0,.LBB0
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
	.globl	NumConv_AdjustWidth
	.globl	NumConv_Num2Str
	.globl	NumConv_Str2Num
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
	.globl	GetEnv
	.globl	GetArgs
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
	.globl	InOut_EOF
	.globl	InOut_Done
	.globl	InOut_WriteBf
	.globl	InOut_WriteLn
	.globl	InOut_WriteLongReal
	.globl	InOut_WriteReal
	.globl	InOut_WriteInt
	.globl	InOut_WriteHex
	.globl	InOut_WriteOct
	.globl	InOut_WriteCard
	.globl	InOut_WriteString
	.globl	InOut_Write
	.globl	InOut_ReadLongReal
	.globl	InOut_ReadReal
	.globl	InOut_ReadInt
	.globl	InOut_ReadCard
	.globl	InOut_ReadString
	.globl	InOut_Read
	.globl	graftest
	.globl	graftest_Menu3
	.globl	graftest_Animate
	.globl	graftest_Menu2
	.globl	graftest_Menu
	.globl	graftest_Event
	.globl	graftest_Repaint
	.stabs "graftest_Menu3:F16",36,0,0,graftest_Menu3
	.align 4
graftest_Menu3:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,263,.LN1-graftest_Menu3		# line 263, column 1
.LBB1:
.LN2:
	.stabn  68,0,264,.LN2-graftest_Menu3		# line 264, column 4
	cmpl	$1,8(%ebp)
	jne	.Lab4
.Lab3:
.LN3:
	.stabn  68,0,266,.LN3-graftest_Menu3		# line 266, column 6
	leal	graftest_Animate,%eax
	pushl	%eax
	pushl	graftest_s + 17304
	call	xgraphic_XG_SetTimer
	addl	$8, %esp
	jmp	.Lab2
.Lab4:
.LN4:
	.stabn  68,0,272,.LN4-graftest_Menu3		# line 272, column 4
	cmpl	$2,8(%ebp)
	jne	.Lab7
.Lab6:
.LN5:
	.stabn  68,0,274,.LN5-graftest_Menu3		# line 274, column 6
	leal	graftest_Animate,%eax
	pushl	%eax
	pushl	$0
	call	xgraphic_XG_SetTimer
	addl	$8, %esp
	jmp	.Lab5
.Lab7:
.LN6:
	.stabn  68,0,280,.LN6-graftest_Menu3		# line 280, column 4
	cmpl	$3,8(%ebp)
	jne	.Lab8
.Lab9:
.LN7:
	.stabn  68,0,281,.LN7-graftest_Menu3		# line 281, column 6
	.data
.Lab10:
 	.ascii	"Intervall (ms) : \000"
	.text
	pushl	$10
	pushl	$1000
	pushl	$0
	pushl	graftest_s + 1292
	pushl	$17
	leal	.Lab10,%eax
	pushl	%eax
	call	xgraphic_XGN_InputInt
	addl	$24, %esp
.LN8:
	.stabn  68,0,282,.LN8-graftest_Menu3		# line 282, column 6
	leal	graftest_s + 17304,%eax
	pushl	%eax
	call	xgraphic_XGN_GetLastInteger
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab11
.Lab12:
.LN9:
	.stabn  68,0,284,.LN9-graftest_Menu3		# line 284, column 8
	leal	graftest_Animate,%eax
	pushl	%eax
	pushl	graftest_s + 17304
	call	xgraphic_XG_SetTimer
	addl	$8, %esp
.LN10:
	.stabn  68,0,290,.LN10-graftest_Menu3		# line 290, column 8
	call	graftest_Repaint
.Lab11:
.Lab8:
.Lab5:
.Lab2:
.LN11:
	.stabn  68,0,291,.LN11-graftest_Menu3		# line 291, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabs "number:p7",160,0,4,8
	.stabn 192,0,0,.LBB1-graftest_Menu3
	.stabn 224,0,0,.LBE1-graftest_Menu3
	.stabs "graftest_Animate:F16",36,0,0,graftest_Animate
	.align 4
graftest_Animate:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab13, %esp
.LN12:
	.stabn  68,0,251,.LN12-graftest_Animate		# line 251, column 1
.LBB2:
.LN13:
	.stabn  68,0,252,.LN13-graftest_Animate		# line 252, column 3
	cmpb	$0,graftest_s + 17316
	je	.Lab16
.Lab15:
.LN14:
	.stabn  68,0,253,.LN14-graftest_Animate		# line 253, column 5
	pushl	$19
	pushl	$1
	pushl	graftest_s + 17300
	pushl	graftest_s + 17312
	pushl	graftest_s + 17308
	call	xgraphic_XGD_DrawCircle
	addl	$20, %esp
	jmp	.Lab14
.Lab16:
.LN15:
	.stabn  68,0,255,.LN15-graftest_Animate		# line 255, column 5
	pushl	$0
	pushl	$1
	pushl	graftest_s + 17300
	pushl	graftest_s + 17312
	pushl	graftest_s + 17308
	call	xgraphic_XGD_DrawCircle
	addl	$20, %esp
.Lab14:
.LN16:
	.stabn  68,0,257,.LN16-graftest_Animate		# line 257, column 9
	cmpb	$1,graftest_s + 17316
	je	.Lab18
.Lab17:
	movb	$1,-8(%ebp) 
	jmp	.Lab19
.Lab18:
	movb	$0,-8(%ebp) 
.Lab19:
	movb	-8(%ebp),%al
	movb	%al,graftest_s + 17316 
.LN17:
	.stabn  68,0,258,.LN17-graftest_Animate		# line 258, column 0
.LBE2:
	leave
	ret
	.Lab13 = 8
	.stabn 192,0,0,.LBB2-graftest_Animate
	.stabn 224,0,0,.LBE2-graftest_Animate
	.stabs "graftest_Menu2:F16",36,0,0,graftest_Menu2
	.align 4
graftest_Menu2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab20, %esp
.LN18:
	.stabn  68,0,182,.LN18-graftest_Menu2		# line 182, column 1
.LBB3:
.LN19:
	.stabn  68,0,184,.LN19-graftest_Menu2		# line 184, column 5
	.data
.Lab21:
 	.ascii	"\013\000"
	.text
	pushl	$1
	leal	.Lab21,%eax
	pushl	%eax
	pushl	$255
	leal	-516(%ebp),%eax
	pushl	%eax
	call	Strings_Assign
	addl	$16, %esp
.LN20:
	.stabn  68,0,185,.LN20-graftest_Menu2		# line 185, column 5
	.data
.Lab22:
 	.ascii	"\016\000"
	.text
	pushl	$1
	leal	.Lab22,%eax
	pushl	%eax
	pushl	$255
	leal	-516(%ebp),%eax
	pushl	%eax
	call	Strings_Append
	addl	$16, %esp
.LN21:
	.stabn  68,0,194,.LN21-graftest_Menu2		# line 194, column 5
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab29:
	.long	.Lab28
	.long	.Lab27
	.long	.Lab26
	.long	.Lab25
	.text
	subl	$1,%eax
	jb	.Lab23
	cmpl	$3,%eax
	ja	.Lab23
	jmp	*.Lab29(,%eax,4)
.Lab28:
.LN22:
	.stabn  68,0,195,.LN22-graftest_Menu2		# line 195, column 16
	.data
.Lab30:
 	.ascii	"Menue 2, Punkt 1\000"
	.text
	leal	.Lab30,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	movsb
	jmp	.Lab24
.Lab27:
.LN23:
	.stabn  68,0,196,.LN23-graftest_Menu2		# line 196, column 16
	.data
.Lab31:
 	.ascii	"Filebrowser ...\000"
	.text
	leal	.Lab31,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	jmp	.Lab24
.Lab26:
.LN24:
	.stabn  68,0,197,.LN24-graftest_Menu2		# line 197, column 16
	.data
.Lab32:
 	.ascii	"Pfeillaenge ...\000"
	.text
	leal	.Lab32,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	jmp	.Lab24
.Lab25:
.LN25:
	.stabn  68,0,198,.LN25-graftest_Menu2		# line 198, column 16
	.data
.Lab33:
 	.ascii	"Pfeilbreite ...\000"
	.text
	leal	.Lab33,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	jmp	.Lab24
.Lab23:
	call	CaseErr_
.Lab24:
.LN26:
	.stabn  68,0,200,.LN26-graftest_Menu2		# line 200, column 5
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetLeft
	addl	$8, %esp
.LN27:
	.stabn  68,0,208,.LN27-graftest_Menu2		# line 208, column 5
	cmpl	$1,8(%ebp)
	jne	.Lab34
.Lab35:
.LN28:
	.stabn  68,0,209,.LN28-graftest_Menu2		# line 209, column 10
	.data
.Lab36:
 	.ascii	"Eine Zeichenkette, bitte:\000"
	.text
	pushl	$25
	leal	.Lab36,%eax
	pushl	%eax
	call	xgraphic_XGN_InputString
	addl	$8, %esp
.LN29:
	.stabn  68,0,210,.LN29-graftest_Menu2		# line 210, column 10
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGN_GetLastString
	addl	$8, %esp
	cmpb	$0,%al
	je	.Lab37
.Lab38:
.LN30:
	.stabn  68,0,211,.LN30-graftest_Menu2		# line 211, column 14
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetRight
	addl	$8, %esp
.LN31:
	.stabn  68,0,214,.LN31-graftest_Menu2		# line 214, column 14
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	pushl	$255
	leal	graftest_s,%eax
	pushl	%eax
	call	Strings_Assign
	addl	$16, %esp
.LN32:
	.stabn  68,0,221,.LN32-graftest_Menu2		# line 221, column 14
	leal	-524(%ebp),%eax
	pushl	%eax
	leal	-520(%ebp),%eax
	pushl	%eax
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGD_GetStringExtents
	addl	$16, %esp
.LN33:
	.stabn  68,0,222,.LN33-graftest_Menu2		# line 222, column 14
	pushl	$5
	pushl	-520(%ebp)
	call	InOut_WriteInt
	addl	$8, %esp
.LN34:
	.stabn  68,0,222,.LN34-graftest_Menu2		# line 222, column 35
	pushl	$5
	pushl	-524(%ebp)
	call	InOut_WriteInt
	addl	$8, %esp
.LN35:
	.stabn  68,0,222,.LN35-graftest_Menu2		# line 222, column 57
	call	InOut_WriteLn
.Lab37:
.Lab34:
.LN36:
	.stabn  68,0,225,.LN36-graftest_Menu2		# line 225, column 5
	cmpl	$2,8(%ebp)
	jne	.Lab39
.Lab40:
.LN37:
	.stabn  68,0,226,.LN37-graftest_Menu2		# line 226, column 9
	.data
.Lab41:
 	.ascii	"[!.]*\000"
	.text
	pushl	$5
	leal	.Lab41,%eax
	pushl	%eax
	call	xgraphic_XGN_FileSelector
	addl	$8, %esp
.LN38:
	.stabn  68,0,227,.LN38-graftest_Menu2		# line 227, column 9
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGN_GetFileName
	addl	$8, %esp
	cmpb	$0,%al
	je	.Lab42
.Lab43:
.LN39:
	.stabn  68,0,228,.LN39-graftest_Menu2		# line 228, column 17
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetRight
	addl	$8, %esp
.Lab42:
.Lab39:
.LN40:
	.stabn  68,0,231,.LN40-graftest_Menu2		# line 231, column 5
	cmpl	$3,8(%ebp)
	jne	.Lab44
.Lab45:
.LN41:
	.stabn  68,0,232,.LN41-graftest_Menu2		# line 232, column 9
	.data
.Lab46:
 	.ascii	"Pfeillaenge : \000"
	.text
	pushl	$10
	pushl	$50
	pushl	$0
	pushl	graftest_s + 1292
	pushl	$14
	leal	.Lab46,%eax
	pushl	%eax
	call	xgraphic_XGN_InputInt
	addl	$24, %esp
.LN42:
	.stabn  68,0,233,.LN42-graftest_Menu2		# line 233, column 9
	leal	graftest_s + 1292,%eax
	pushl	%eax
	call	xgraphic_XGN_GetLastInteger
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab47
.Lab48:
.LN43:
	.stabn  68,0,234,.LN43-graftest_Menu2		# line 234, column 13
	call	graftest_Repaint
.Lab47:
.Lab44:
.LN44:
	.stabn  68,0,237,.LN44-graftest_Menu2		# line 237, column 5
	cmpl	$4,8(%ebp)
	jne	.Lab49
.Lab50:
.LN45:
	.stabn  68,0,238,.LN45-graftest_Menu2		# line 238, column 9
	.data
.Lab51:
 	.ascii	"Pfeilbreite : \000"
	.text
	pushl	$10
	pushl	$50
	pushl	$0
	pushl	graftest_s + 1296
	pushl	$14
	leal	.Lab51,%eax
	pushl	%eax
	call	xgraphic_XGN_InputInt
	addl	$24, %esp
.LN46:
	.stabn  68,0,239,.LN46-graftest_Menu2		# line 239, column 9
	leal	graftest_s + 1296,%eax
	pushl	%eax
	call	xgraphic_XGN_GetLastInteger
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab52
.Lab53:
.LN47:
	.stabn  68,0,240,.LN47-graftest_Menu2		# line 240, column 13
	call	graftest_Repaint
.Lab52:
.Lab49:
.LN48:
	.stabn  68,0,241,.LN48-graftest_Menu2		# line 241, column 0
.LBE3:
	leave
	ret
	.Lab20 = 524
	.stabs "height:7",128,0,4,-524
	.stabs "width:7",128,0,4,-520
	.stabs "String:t17=ar4;0;255;2",128,0,0,0
	.stabs "h:17",128,0,256,-516
	.stabs "Text:17",128,0,256,-260
	.stabs "number:p7",160,0,4,8
	.stabn 192,0,0,.LBB3-graftest_Menu2
	.stabn 224,0,0,.LBE3-graftest_Menu2
	.stabs "graftest_Menu:F16",36,0,0,graftest_Menu
	.align 4
graftest_Menu:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab54, %esp
.LN49:
	.stabn  68,0,120,.LN49-graftest_Menu		# line 120, column 1
.LBB4:
.LN50:
	.stabn  68,0,121,.LN50-graftest_Menu		# line 121, column 5
	movl	8(%ebp),%eax
	.data
	.align 4
.Lab61:
	.long	.Lab60
	.long	.Lab59
	.long	.Lab58
	.long	.Lab57
	.text
	subl	$1,%eax
	jb	.Lab55
	cmpl	$3,%eax
	ja	.Lab55
	jmp	*.Lab61(,%eax,4)
.Lab60:
.LN51:
	.stabn  68,0,122,.LN51-graftest_Menu		# line 122, column 16
	.data
.Lab62:
 	.ascii	"Menue 1, Punkt 1\000"
	.text
	leal	.Lab62,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	movsb
	jmp	.Lab56
.Lab59:
.LN52:
	.stabn  68,0,123,.LN52-graftest_Menu		# line 123, column 16
	.data
.Lab63:
 	.ascii	"Menue 1, Punkt 2\000"
	.text
	leal	.Lab63,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	movsb
	jmp	.Lab56
.Lab58:
.LN53:
	.stabn  68,0,124,.LN53-graftest_Menu		# line 124, column 16
	.data
.Lab64:
 	.ascii	"Menue 1, Punkt 3\000"
	.text
	leal	.Lab64,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	movsb
	jmp	.Lab56
.Lab57:
.LN54:
	.stabn  68,0,125,.LN54-graftest_Menu		# line 125, column 16
	.data
.Lab65:
 	.ascii	"Menue 1, Punkt 4\000"
	.text
	leal	.Lab65,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	movsb
	jmp	.Lab56
.Lab55:
	call	CaseErr_
.Lab56:
.LN55:
	.stabn  68,0,127,.LN55-graftest_Menu		# line 127, column 5
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetLeft
	addl	$8, %esp
.LN56:
	.stabn  68,0,128,.LN56-graftest_Menu		# line 128, column 5
	cmpl	$3,8(%ebp)
	jne	.Lab66
.Lab67:
.LN57:
	.stabn  68,0,129,.LN57-graftest_Menu		# line 129, column 14
	.data
.Lab68:
 	.ascii	"Ganze Zahl, bitte:\000"
	.text
	leal	.Lab68,%esi
	leal	-260(%ebp),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	movsw
	movsb
.LN58:
	.stabn  68,0,130,.LN58-graftest_Menu		# line 130, column 9
	pushl	$5
	pushl	$500
	pushl	$50
	pushl	$200
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGN_InputInt
	addl	$24, %esp
.LN59:
	.stabn  68,0,131,.LN59-graftest_Menu		# line 131, column 9
	leal	-524(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGN_GetLastInteger
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab71
.Lab70:
.LN60:
	.stabn  68,0,133,.LN60-graftest_Menu		# line 133, column 16
	movl	-524(%ebp),%eax
	movl	%eax,-520(%ebp) 
.LN61:
	.stabn  68,0,139,.LN61-graftest_Menu		# line 139, column 13
	leal	-525(%ebp),%eax
	pushl	%eax
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	pushl	$10
	pushl	-520(%ebp)
	call	NumConv_Num2Str
	addl	$20, %esp
.LN62:
	.stabn  68,0,140,.LN62-graftest_Menu		# line 140, column 13
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetRight
	addl	$8, %esp
	jmp	.Lab69
.Lab71:
.LN63:
	.stabn  68,0,142,.LN63-graftest_Menu		# line 142, column 13
	.data
.Lab72:
 	.ascii	"CANCELLED\000"
	.text
	pushl	$9
	leal	.Lab72,%eax
	pushl	%eax
	call	xgraphic_XGF_SetRight
	addl	$8, %esp
.Lab69:
.Lab66:
.LN64:
	.stabn  68,0,145,.LN64-graftest_Menu		# line 145, column 5
	cmpl	$1,8(%ebp)
	jne	.Lab73
.Lab74:
.LN65:
	.stabn  68,0,146,.LN65-graftest_Menu		# line 146, column 9
	movl	$1,-536(%ebp) 
.Lab75:
.LN66:
	.stabn  68,0,147,.LN66-graftest_Menu		# line 147, column 13
	pushl	$14
	movl	-536(%ebp),%eax
	.data
	.align 4
.Lab77:
	.long	1,1000
	.text
	boundl	%eax,.Lab77
	movl	graftest_s + 5296(,%eax,4),%eax
	movl	$4,%ebx
	cdq
	idivl	%ebx
	pushl	%edx
	movl	-536(%ebp),%eax
	.data
	.align 4
.Lab78:
	.long	1,1000
	.text
	boundl	%eax,.Lab78
	pushl	graftest_s + 13296(,%eax,4)
	movl	-536(%ebp),%eax
	.data
	.align 4
.Lab79:
	.long	1,1000
	.text
	boundl	%eax,.Lab79
	pushl	graftest_s + 5296(,%eax,4)
	movl	-536(%ebp),%eax
	.data
	.align 4
.Lab80:
	.long	1,1000
	.text
	boundl	%eax,.Lab80
	pushl	graftest_s + 9296(,%eax,4)
	movl	-536(%ebp),%eax
	.data
	.align 4
.Lab81:
	.long	1,1000
	.text
	boundl	%eax,.Lab81
	pushl	graftest_s + 1296(,%eax,4)
	call	xgraphic_XGD_DrawLine
	addl	$24, %esp
.LN67:
	.stabn  68,0,146,.LN67-graftest_Menu		# line 146, column 9
	cmpl	$1000,-536(%ebp)
	jge	.Lab76
	incl	-536(%ebp) 
	jmp	.Lab75
.Lab76:
.LN68:
	.stabn  68,0,149,.LN68-graftest_Menu		# line 149, column 15
	movl	$1,-532(%ebp) 
	jmp	.Lab82
.Lab83:
.LN69:
	.stabn  68,0,151,.LN69-graftest_Menu		# line 151, column 17
	incl	-532(%ebp) 
.LN70:
	.stabn  68,0,152,.LN70-graftest_Menu		# line 152, column 17
	movl	-532(%ebp),%eax
	movl	$100000,%ebx
	cdq
	idivl	%ebx
	cmpl	$0,%edx
	jne	.Lab85
.Lab86:
.LN71:
	.stabn  68,0,154,.LN71-graftest_Menu		# line 154, column 26
	.data
.Lab87:
 	.ascii	"Durchlauf \000"
	.text
	leal	.Lab87,%esi
	leal	-260(%ebp),%edi
	movl	$2,%ecx
	cld
	repz
	movsl
	movsw
	movsb
.LN72:
	.stabn  68,0,155,.LN72-graftest_Menu		# line 155, column 21
	leal	-525(%ebp),%eax
	pushl	%eax
	pushl	$255
	leal	-516(%ebp),%eax
	pushl	%eax
	pushl	$10
	movl	-532(%ebp),%eax
	.data
	.align 4
.Lab88:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab88
	pushl	%eax
	call	NumConv_Num2Str
	addl	$20, %esp
.LN73:
	.stabn  68,0,157,.LN73-graftest_Menu		# line 157, column 21
	pushl	$255
	leal	-516(%ebp),%eax
	pushl	%eax
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	Strings_Append
	addl	$16, %esp
.LN74:
	.stabn  68,0,163,.LN74-graftest_Menu		# line 163, column 21
	pushl	$255
	leal	-260(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetLeft
	addl	$8, %esp
.Lab85:
.Lab82:
.LN75:
	.stabn  68,0,150,.LN75-graftest_Menu		# line 150, column 21
	cmpl	$1000000,-532(%ebp)
	jl	.Lab83
.Lab84:
.Lab73:
.LN76:
	.stabn  68,0,151,.LN76-graftest_Menu		# line 151, column 0
.LBE4:
	leave
	ret
	.Lab54 = 536
	.stabs "l:7",128,0,4,-536
	.stabs "j:7",128,0,4,-532
	.stabs "done:1",128,0,1,-525
	.stabs "In1:7",128,0,4,-524
	.stabs "In:4",128,0,4,-520
	.stabs "Zahl:17",128,0,256,-516
	.stabs "Text:17",128,0,256,-260
	.stabs "number:p7",160,0,4,8
	.stabn 192,0,0,.LBB4-graftest_Menu
	.stabn 224,0,0,.LBE4-graftest_Menu
	.stabs "graftest_Event:F1",36,0,0,graftest_Event
	.align 4
graftest_Event:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab89, %esp
.LN77:
	.stabn  68,0,96,.LN77-graftest_Event		# line 96, column 1
.LBB5:
.LN78:
	.stabn  68,0,97,.LN78-graftest_Event		# line 97, column 5
	call	xgraphic_XGE_Button_L
	cmpb	$0,%al
	je	.Lab90
.Lab91:
.LN79:
	.stabn  68,0,98,.LN79-graftest_Event		# line 98, column 12
	call	xgraphic_XGE_X_Position
	movl	%eax,graftest_s + 1280 
.LN80:
	.stabn  68,0,99,.LN80-graftest_Event		# line 99, column 12
	call	xgraphic_XGE_Y_Position
	movl	%eax,graftest_s + 1284 
.LN81:
	.stabn  68,0,100,.LN81-graftest_Event		# line 100, column 9
	movb	$1,%al
	leave
	ret
.Lab90:
.LN82:
	.stabn  68,0,102,.LN82-graftest_Event		# line 102, column 5
	call	xgraphic_XGE_Button_R
	cmpb	$0,%al
	je	.Lab92
.Lab93:
.LN83:
	.stabn  68,0,103,.LN83-graftest_Event		# line 103, column 9
	.data
.Lab94:
 	.ascii	"Rechter Mausknopf gedrueckt!\000"
	.text
	pushl	$28
	leal	.Lab94,%eax
	pushl	%eax
	call	xgraphic_XGN_ShowNotice
	addl	$8, %esp
.LN84:
	.stabn  68,0,104,.LN84-graftest_Event		# line 104, column 9
	movb	$1,%al
	leave
	ret
.Lab92:
.LN85:
	.stabn  68,0,106,.LN85-graftest_Event		# line 106, column 11
	call	xgraphic_XGE_KeyCode
	movb	%al,-23(%ebp) 
.LN86:
	.stabn  68,0,107,.LN86-graftest_Event		# line 107, column 11
	movb	$0,-22(%ebp) 
.LN87:
	.stabn  68,0,108,.LN87-graftest_Event		# line 108, column 5
	cmpb	$0,-23(%ebp)
	je	.Lab95
.Lab96:
.LN88:
	.stabn  68,0,108,.LN88-graftest_Event		# line 108, column 25
	pushl	$10
	leal	-23(%ebp),%eax
	pushl	%eax
	call	xgraphic_XGF_SetLeft
	addl	$8, %esp
.Lab95:
.LN89:
	.stabn  68,0,109,.LN89-graftest_Event		# line 109, column 5
	cmpb	$127,-23(%ebp)
	jne	.Lab97
.Lab98:
.LN90:
	.stabn  68,0,109,.LN90-graftest_Event		# line 109, column 27
	.data
.Lab99:
 	.ascii	"DELETE\000"
	.text
	pushl	$6
	leal	.Lab99,%eax
	pushl	%eax
	call	xgraphic_XGF_SetLeft
	addl	$8, %esp
.Lab97:
.LN91:
	.stabn  68,0,110,.LN91-graftest_Event		# line 110, column 5
	movb	$0,%al
	leave
	ret
.LN92:
	.stabn  68,0,111,.LN92-graftest_Event		# line 111, column 0
	call	ReturnErr_
.LBE5:
	leave
	ret
	.Lab89 = 36
	.stabs "ch:2",128,0,1,-36
	.stabs "b:1",128,0,1,-35
	.stabs "t2:18=ar4;0;10;2",128,0,11,-34
	.stabs "t1:18",128,0,11,-23
	.stabs "y:7",128,0,4,-12
	.stabs "x:7",128,0,4,-8
	.stabn 192,0,0,.LBB5-graftest_Event
	.stabn 224,0,0,.LBE5-graftest_Event
	.stabs "graftest_Repaint:F16",36,0,0,graftest_Repaint
	.align 4
graftest_Repaint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab100, %esp
.LN93:
	.stabn  68,0,53,.LN93-graftest_Repaint		# line 53, column 1
.LBB6:
.LN94:
	.stabn  68,0,54,.LN94-graftest_Repaint		# line 54, column 5
	call	xgraphic_XGD_Clear
.LN95:
	.stabn  68,0,55,.LN95-graftest_Repaint		# line 55, column 5
	pushl	$300
	pushl	$400
	pushl	$100
	pushl	$100
	call	xgraphic_XGD_SetClipping
	addl	$16, %esp
.LN96:
	.stabn  68,0,56,.LN96-graftest_Repaint		# line 56, column 5
	pushl	$1
	pushl	$4
	pushl	$100
	pushl	$100
	pushl	$0
	pushl	$0
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN97:
	.stabn  68,0,57,.LN97-graftest_Repaint		# line 57, column 5
	pushl	$3
	pushl	$3
	pushl	$0
	pushl	$100
	pushl	$100
	pushl	$0
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN98:
	.stabn  68,0,59,.LN98-graftest_Repaint		# line 59, column 5
	pushl	$12
	pushl	$2
	pushl	$50
	pushl	$310
	pushl	$0
	pushl	$310
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN99:
	.stabn  68,0,60,.LN99-graftest_Repaint		# line 60, column 5
	pushl	$4
	pushl	$2
	pushl	$0
	pushl	$320
	pushl	$50
	pushl	$320
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN100:
	.stabn  68,0,62,.LN100-graftest_Repaint		# line 62, column 5
	pushl	$14
	pushl	$5
	pushl	$200
	pushl	$100
	pushl	$200
	pushl	$0
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN101:
	.stabn  68,0,63,.LN101-graftest_Repaint		# line 63, column 5
	pushl	$19
	pushl	$1
	pushl	$220
	pushl	$0
	pushl	$220
	pushl	$100
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN102:
	.stabn  68,0,65,.LN102-graftest_Repaint		# line 65, column 5
	pushl	$2
	pushl	$3
	pushl	$80
	pushl	$480
	pushl	$100
	pushl	$200
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN103:
	.stabn  68,0,66,.LN103-graftest_Repaint		# line 66, column 5
	pushl	$19
	pushl	$0
	pushl	$10
	pushl	$210
	pushl	$100
	pushl	$200
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN104:
	.stabn  68,0,68,.LN104-graftest_Repaint		# line 68, column 5
	pushl	$7
	pushl	$1
	pushl	$300
	pushl	$180
	pushl	$250
	pushl	$300
	call	xgraphic_XGD_DrawArrowLine
	addl	$24, %esp
.LN105:
	.stabn  68,0,69,.LN105-graftest_Repaint		# line 69, column 5
	pushl	$19
	pushl	$5
	pushl	$160
	pushl	$100
	pushl	$250
	pushl	$300
	call	xgraphic_XGD_DrawLine
	addl	$24, %esp
.LN106:
	.stabn  68,0,71,.LN106-graftest_Repaint		# line 71, column 5
	pushl	$3
	pushl	$0
	pushl	$20
	pushl	$100
	pushl	$100
	call	xgraphic_XGD_DrawCircle
	addl	$20, %esp
.LN107:
	.stabn  68,0,72,.LN107-graftest_Repaint		# line 72, column 5
	.data
.Lab101:
 	.ascii	"abcasbc\000"
	.text
	pushl	$3
	pushl	$7
	leal	.Lab101,%eax
	pushl	%eax
	pushl	$100
	pushl	$100
	call	xgraphic_XGD_DrawString
	addl	$20, %esp
.LN108:
	.stabn  68,0,73,.LN108-graftest_Repaint		# line 73, column 5
	pushl	$12
	pushl	$1
	pushl	$10
	pushl	graftest_s + 1284
	pushl	graftest_s + 1280
	call	xgraphic_XGD_DrawCircle
	addl	$20, %esp
.LN109:
	.stabn  68,0,74,.LN109-graftest_Repaint		# line 74, column 5
	pushl	$19
	pushl	$255
	leal	graftest_s,%eax
	pushl	%eax
	pushl	$100
	pushl	$200
	call	xgraphic_XGD_DrawString
	addl	$20, %esp
.LN110:
	.stabn  68,0,76,.LN110-graftest_Repaint		# line 76, column 5
	pushl	$3
	call	xgraphic_XGD_BeginPoly
	addl	$4, %esp
.LN111:
	.stabn  68,0,77,.LN111-graftest_Repaint		# line 77, column 5
	pushl	$20
	pushl	$120
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN112:
	.stabn  68,0,78,.LN112-graftest_Repaint		# line 78, column 5
	pushl	$45
	pushl	$240
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN113:
	.stabn  68,0,79,.LN113-graftest_Repaint		# line 79, column 5
	pushl	$40
	pushl	$100
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN114:
	.stabn  68,0,80,.LN114-graftest_Repaint		# line 80, column 5
	pushl	$3
	pushl	$1
	pushl	$1
	pushl	$1
	call	xgraphic_XGD_DrawPoly
	addl	$16, %esp
.LN115:
	.stabn  68,0,82,.LN115-graftest_Repaint		# line 82, column 5
	pushl	$4
	call	xgraphic_XGD_BeginPoly
	addl	$4, %esp
.LN116:
	.stabn  68,0,83,.LN116-graftest_Repaint		# line 83, column 5
	pushl	$300
	pushl	$400
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN117:
	.stabn  68,0,84,.LN117-graftest_Repaint		# line 84, column 5
	pushl	$600
	pushl	$100
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN118:
	.stabn  68,0,85,.LN118-graftest_Repaint		# line 85, column 5
	pushl	$600
	pushl	$600
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN119:
	.stabn  68,0,86,.LN119-graftest_Repaint		# line 86, column 5
	pushl	$400
	pushl	$100
	call	xgraphic_XGD_AddPolyPoint
	addl	$8, %esp
.LN120:
	.stabn  68,0,87,.LN120-graftest_Repaint		# line 87, column 5
	pushl	$19
	pushl	$3
	pushl	$0
	pushl	$1
	call	xgraphic_XGD_DrawPoly
	addl	$16, %esp
.LN121:
	.stabn  68,0,88,.LN121-graftest_Repaint		# line 88, column 0
.LBE6:
	leave
	ret
	.Lab100 = 4
	.stabn 192,0,0,.LBB6-graftest_Repaint
	.stabn 224,0,0,.LBE6-graftest_Repaint
	.stabs "graftest:F16",36,0,0,graftest
	.align 4
graftest:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab102, %esp
.LN122:
	.stabn  68,0,299,.LN122-graftest		# line 299, column 1
.LBB7:
.LN123:
	.stabn  68,0,300,.LN123-graftest		# line 300, column 12
	movl	$200,graftest_s + 17308 
.LN124:
	.stabn  68,0,301,.LN124-graftest		# line 301, column 12
	movl	$200,graftest_s + 17312 
.LN125:
	.stabn  68,0,302,.LN125-graftest		# line 302, column 13
	movl	$50,graftest_s + 17300 
.LN126:
	.stabn  68,0,303,.LN126-graftest		# line 303, column 12
	movl	$7,graftest_s + 1296 
.LN127:
	.stabn  68,0,304,.LN127-graftest		# line 304, column 15
	movl	$100,graftest_s + 17304 
.LN128:
	.stabn  68,0,305,.LN128-graftest		# line 305, column 12
	movl	$10,graftest_s + 1292 
.LN129:
	.stabn  68,0,306,.LN129-graftest		# line 306, column 11
	movl	$0,graftest_s + 1300 
.LN130:
	.stabn  68,0,306,.LN130-graftest		# line 306, column 23
	movl	$0,graftest_s + 9300 
.LN131:
	.stabn  68,0,306,.LN131-graftest		# line 306, column 35
	movl	$10000,graftest_s + 5300 
.LN132:
	.stabn  68,0,306,.LN132-graftest		# line 306, column 51
	movl	$10000,graftest_s + 13300 
.LN133:
	.stabn  68,0,307,.LN133-graftest		# line 307, column 5
	movw	$2,graftest_s + 17324 
.Lab103:
.LN134:
	.stabn  68,0,308,.LN134-graftest		# line 308, column 17
	movzwl	graftest_s + 17324,%ecx
	cmpl	$1,%ecx
	jb	.Lab106
	cmpl	$1000,%ecx
	jbe	.Lab105
.Lab106:
   	call	BoundErr_		
.Lab105:
	movw	graftest_s + 17324,%ax
 	subw	$1,%ax 
	movzwl	%ax,%ebx
	cmpl	$1,%ebx
	jb	.Lab108
	cmpl	$1000,%ebx
	jbe	.Lab107
.Lab108:
   	call	BoundErr_		
.Lab107:
	movl	$10,%eax
 	addl	graftest_s + 1296(,%ebx,4),%eax 
	movl	%eax,graftest_s + 1296(,%ecx,4) 
.LN135:
	.stabn  68,0,309,.LN135-graftest		# line 309, column 17
	movzwl	graftest_s + 17324,%ebx
	cmpl	$1,%ebx
	jb	.Lab110
	cmpl	$1000,%ebx
	jbe	.Lab109
.Lab110:
   	call	BoundErr_		
.Lab109:
	movw	graftest_s + 17324,%ax
 	subw	$1,%ax 
	movzwl	%ax,%eax
	cmpl	$1,%eax
	jb	.Lab112
	cmpl	$1000,%eax
	jbe	.Lab111
.Lab112:
   	call	BoundErr_		
.Lab111:
	movl	graftest_s + 5296(,%eax,4),%eax
 	subl	$10,%eax 
	movl	%eax,graftest_s + 5296(,%ebx,4) 
.LN136:
	.stabn  68,0,310,.LN136-graftest		# line 310, column 17
	movzwl	graftest_s + 17324,%ecx
	cmpl	$1,%ecx
	jb	.Lab114
	cmpl	$1000,%ecx
	jbe	.Lab113
.Lab114:
   	call	BoundErr_		
.Lab113:
	movw	graftest_s + 17324,%ax
 	subw	$1,%ax 
	movzwl	%ax,%ebx
	cmpl	$1,%ebx
	jb	.Lab116
	cmpl	$1000,%ebx
	jbe	.Lab115
.Lab116:
   	call	BoundErr_		
.Lab115:
	movl	$10,%eax
 	addl	graftest_s + 9296(,%ebx,4),%eax 
	movl	%eax,graftest_s + 9296(,%ecx,4) 
.LN137:
	.stabn  68,0,311,.LN137-graftest		# line 311, column 17
	movzwl	graftest_s + 17324,%ebx
	cmpl	$1,%ebx
	jb	.Lab118
	cmpl	$1000,%ebx
	jbe	.Lab117
.Lab118:
   	call	BoundErr_		
.Lab117:
	movw	graftest_s + 17324,%ax
 	subw	$1,%ax 
	movzwl	%ax,%eax
	cmpl	$1,%eax
	jb	.Lab120
	cmpl	$1000,%eax
	jbe	.Lab119
.Lab120:
   	call	BoundErr_		
.Lab119:
	movl	graftest_s + 9296(,%eax,4),%eax
 	subl	$10,%eax 
	movl	%eax,graftest_s + 13296(,%ebx,4) 
.LN138:
	.stabn  68,0,307,.LN138-graftest		# line 307, column 5
	cmpw	$1000,graftest_s + 17324
	jae	.Lab104
	incw	graftest_s + 17324 
	jmp	.Lab103
.Lab104:
.LN139:
	.stabn  68,0,314,.LN139-graftest		# line 314, column 5
	leal	graftest_s + 17320,%eax
	pushl	%eax
	leal	graftest_s + 17324,%eax
	pushl	%eax
	call	GetArgs
	addl	$8, %esp
.LN140:
	.stabn  68,0,316,.LN140-graftest		# line 316, column 5
	leal	graftest_Event,%eax
	pushl	%eax
	leal	graftest_Repaint,%eax
	pushl	%eax
	pushl	graftest_s + 17320
	movzwl	graftest_s + 17324,%eax
	pushl	%eax
	call	xgraphic_XG_Init
	addl	$16, %esp
.LN141:
	.stabn  68,0,323,.LN141-graftest		# line 323, column 10
	.data
.Lab121:
 	.ascii	"Test 1\000"
	.text
	movl	.Lab121,%eax
	movl	%eax,graftest_s
	movw	.Lab121 + 4,%ax
	movw	%ax,graftest_s + 4
	movb	.Lab121 + 6,%al
	movb	%al,graftest_s + 6
.LN142:
	.stabn  68,0,324,.LN142-graftest		# line 324, column 10
	.data
.Lab122:
 	.ascii	"Test 2\000"
	.text
	movl	.Lab122,%eax
	movl	%eax,graftest_s + 256
	movw	.Lab122 + 4,%ax
	movw	%ax,graftest_s + 260
	movb	.Lab122 + 6,%al
	movb	%al,graftest_s + 262
.LN143:
	.stabn  68,0,325,.LN143-graftest		# line 325, column 10
	.data
.Lab123:
 	.ascii	"Test 3\000"
	.text
	movl	.Lab123,%eax
	movl	%eax,graftest_s + 512
	movw	.Lab123 + 4,%ax
	movw	%ax,graftest_s + 516
	movb	.Lab123 + 6,%al
	movb	%al,graftest_s + 518
.LN144:
	.stabn  68,0,326,.LN144-graftest		# line 326, column 10
	.data
.Lab124:
 	.ascii	"TestButton\000"
	.text
	leal	.Lab124,%esi
	leal	graftest_s + 768,%edi
	movl	$2,%ecx
	cld
	repz
	movsl
	movsw
	movsb
.LN145:
	.stabn  68,0,327,.LN145-graftest		# line 327, column 12
	pushl	$255
	leal	graftest_s + 768,%eax
	pushl	%eax
	call	xgraphic_XGM_NewMenu
	addl	$8, %esp
	movl	%eax,graftest_s + 1288 
.LN146:
	.stabn  68,0,328,.LN146-graftest		# line 328, column 5
	pushl	$255
	leal	graftest_s,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN147:
	.stabn  68,0,329,.LN147-graftest		# line 329, column 5
	pushl	$255
	leal	graftest_s + 256,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN148:
	.stabn  68,0,330,.LN148-graftest		# line 330, column 5
	pushl	$255
	leal	graftest_s + 512,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN149:
	.stabn  68,0,332,.LN149-graftest		# line 332, column 5
	leal	graftest_Menu,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_CreateMenu
	addl	$8, %esp
.LN150:
	.stabn  68,0,339,.LN150-graftest		# line 339, column 11
	.data
.Lab125:
 	.ascii	"Button 2\000"
	.text
	leal	.Lab125,%esi
	leal	graftest_s,%edi
	movl	$2,%ecx
	cld
	repz
	movsl
	movsb
.LN151:
	.stabn  68,0,340,.LN151-graftest		# line 340, column 11
	.data
.Lab126:
 	.ascii	"Wahl 1\000"
	.text
	movl	.Lab126,%eax
	movl	%eax,graftest_s + 256
	movw	.Lab126 + 4,%ax
	movw	%ax,graftest_s + 260
	movb	.Lab126 + 6,%al
	movb	%al,graftest_s + 262
.LN152:
	.stabn  68,0,341,.LN152-graftest		# line 341, column 11
	.data
.Lab127:
 	.ascii	"Filebrowser ...\000"
	.text
	leal	.Lab127,%esi
	leal	graftest_s + 512,%edi
	movl	$4,%ecx
	cld
	repz
	movsl
.LN153:
	.stabn  68,0,342,.LN153-graftest		# line 342, column 11
	.data
.Lab128:
 	.ascii	"Pfeillaenge ...\000"
	.text
	leal	.Lab128,%esi
	leal	graftest_s + 768,%edi
	movl	$4,%ecx
	cld
	repz
	movsl
.LN154:
	.stabn  68,0,343,.LN154-graftest		# line 343, column 11
	.data
.Lab129:
 	.ascii	"Pfeilbreite ...\000"
	.text
	leal	.Lab129,%esi
	leal	graftest_s + 1024,%edi
	movl	$4,%ecx
	cld
	repz
	movsl
.LN155:
	.stabn  68,0,344,.LN155-graftest		# line 344, column 12
	pushl	$255
	leal	graftest_s,%eax
	pushl	%eax
	call	xgraphic_XGM_NewMenu
	addl	$8, %esp
	movl	%eax,graftest_s + 1288 
.LN156:
	.stabn  68,0,345,.LN156-graftest		# line 345, column 5
	pushl	$255
	leal	graftest_s + 256,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN157:
	.stabn  68,0,346,.LN157-graftest		# line 346, column 5
	pushl	$255
	leal	graftest_s + 512,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN158:
	.stabn  68,0,347,.LN158-graftest		# line 347, column 5
	pushl	$255
	leal	graftest_s + 768,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN159:
	.stabn  68,0,348,.LN159-graftest		# line 348, column 5
	pushl	$255
	leal	graftest_s + 1024,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN160:
	.stabn  68,0,350,.LN160-graftest		# line 350, column 5
	leal	graftest_Menu2,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_CreateMenu
	addl	$8, %esp
.LN161:
	.stabn  68,0,357,.LN161-graftest		# line 357, column 11
	.data
.Lab130:
 	.ascii	"Start\000"
	.text
	movl	.Lab130,%eax
	movl	%eax,graftest_s
	movw	.Lab130 + 4,%ax
	movw	%ax,graftest_s + 4
.LN162:
	.stabn  68,0,358,.LN162-graftest		# line 358, column 11
	.data
.Lab131:
 	.ascii	"Stop\000"
	.text
	movl	.Lab131,%eax
	movl	%eax,graftest_s + 256
	movb	.Lab131 + 4,%al
	movb	%al,graftest_s + 260
.LN163:
	.stabn  68,0,359,.LN163-graftest		# line 359, column 11
	.data
.Lab132:
 	.ascii	"Speed\000"
	.text
	movl	.Lab132,%eax
	movl	%eax,graftest_s + 512
	movw	.Lab132 + 4,%ax
	movw	%ax,graftest_s + 516
.LN164:
	.stabn  68,0,360,.LN164-graftest		# line 360, column 12
	pushl	$255
	leal	graftest_s,%eax
	pushl	%eax
	call	xgraphic_XGM_NewMenu
	addl	$8, %esp
	movl	%eax,graftest_s + 1288 
.LN165:
	.stabn  68,0,361,.LN165-graftest		# line 361, column 5
	pushl	$255
	leal	graftest_s,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN166:
	.stabn  68,0,362,.LN166-graftest		# line 362, column 5
	pushl	$255
	leal	graftest_s + 256,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN167:
	.stabn  68,0,363,.LN167-graftest		# line 363, column 5
	pushl	$255
	leal	graftest_s + 512,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_AppendItem
	addl	$12, %esp
.LN168:
	.stabn  68,0,365,.LN168-graftest		# line 365, column 5
	leal	graftest_Menu3,%eax
	pushl	%eax
	pushl	graftest_s + 1288
	call	xgraphic_XGM_CreateMenu
	addl	$8, %esp
.LN169:
	.stabn  68,0,372,.LN169-graftest		# line 372, column 5
	call	xgraphic_XG_StartMainLoop
.LN170:
	.stabn  68,0,373,.LN170-graftest		# line 373, column 0
.LBE7:
	leave
	ret
	.Lab102 = 4
	.stabs "ArgTable:t19=*20=ar4;0;999;21=*22=ar4;0;999;2",128,0,0,0
	.stabn 192,0,0,.LBB7-graftest
	.stabn 224,0,0,.LBE7-graftest
	.stabs "graftest_s:Gs17326Anz:3,138592,16;Args:19,138560,32;farbe:1,138528,8;MitteY:7,138496,32;MitteX:7,138464,32;Intervall:7,138432,32;Groesse:7,138400,32;y2:23=ar4;1;1000;7,106400,32000;y1:23,74400,32000;x2:23,42400,32000;x1:23,10400,32000;Breite:7,10368,32;Laenge:7,10336,32;handle:7,10304,32;py:7,10272,32;px:7,10240,32;Item5:17,8192,2048;Item4:17,6144,2048;Item3:17,4096,2048;Item2:17,2048,2048;Item1:17,0,2048;;",32,0,0,0
