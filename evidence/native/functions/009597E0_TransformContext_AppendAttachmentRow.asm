# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; TransformContext_AppendAttachmentRow; owned ranges [[009597e0, 00959824]]
009597e0	56	PUSH ESI
009597e1	8bf1	MOV ESI,ECX
009597e3	8d4e28	LEA ECX,[ESI + 0x28]
009597e6	e855ffffff	CALL 0x00959740
009597eb	8b462c	MOV EAX,dword ptr [ESI + 0x2c]
009597ee	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
009597f2	8b54240c	MOV EDX,dword ptr [ESP + 0xc]
009597f6	83e818	SUB EAX,0x18
009597f9	8908	MOV dword ptr [EAX],ECX
009597fb	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
009597ff	895004	MOV dword ptr [EAX + 0x4],EDX
00959802	8b542414	MOV EDX,dword ptr [ESP + 0x14]
00959806	894808	MOV dword ptr [EAX + 0x8],ECX
00959809	8b4c2418	MOV ECX,dword ptr [ESP + 0x18]
0095980d	89500c	MOV dword ptr [EAX + 0xc],EDX
00959810	8a54241c	MOV DL,byte ptr [ESP + 0x1c]
00959814	894810	MOV dword ptr [EAX + 0x10],ECX
00959817	8a4c2420	MOV CL,byte ptr [ESP + 0x20]
0095981b	885014	MOV byte ptr [EAX + 0x14],DL
0095981e	884815	MOV byte ptr [EAX + 0x15],CL
00959821	5e	POP ESI
00959822	c21c00	RET 0x1c
