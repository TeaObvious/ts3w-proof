# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784290 (ScriptCore.VideoRecorder::VideoRecorder_GetSettings)
Paired Ghidra pseudocode: 00784290_ScriptCore_VideoRecorder_VideoRecorder_GetSettings.c
Window: [0x00784290, 0x00784360) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784290: 83 ec 3c e8 f8 bc 25 00 8b c8 33 c0 85 c9 89 04
007842a0: 24 0f 84 af 00 00 00 8b 01 8b 40 08 33 d2 89 54
007842b0: 24 04 89 54 24 08 89 54 24 0c 89 54 24 10 89 54
007842c0: 24 14 89 54 24 18 56 8d 54 24 08 52 ff d0 8b 4c
007842d0: 24 08 8b 44 24 10 8b 54 24 0c 89 4c 24 20 8b 4c
007842e0: 24 14 89 44 24 28 8b 44 24 1c 89 54 24 24 8b 54
007842f0: 24 18 89 4c 24 2c 33 c9 84 c0 0f 95 c1 89 54 24
00784300: 30 33 d2 84 e4 0f 95 c2 33 c0 38 44 24 1e 89 4c
00784310: 24 34 0f 95 c0 89 54 24 38 89 44 24 3c e8 6e 50
00784320: fe ff 8b f0 8b 16 8b 92 8c 00 00 00 6a 08 8d 44
00784330: 24 08 50 8b ce ff d2 8b 06 8b 80 a4 00 00 00 6a
00784340: 08 6a 00 8d 4c 24 28 51 8d 54 24 10 52 8b ce ff
00784350: d0 8b 44 24 04 5e 83 c4 3c c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00784290 <.text+0x383290>:
  784290:	83 ec 3c                                        	sub    esp,0x3c
  784293:	e8 f8 bc 25 00                                  	call   0x9dff90
  784298:	8b c8                                           	mov    ecx,eax
  78429a:	33 c0                                           	xor    eax,eax
  78429c:	85 c9                                           	test   ecx,ecx
  78429e:	89 04 24                                        	mov    DWORD PTR [esp],eax
  7842a1:	0f 84 af 00 00 00                               	je     0x784356
  7842a7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7842a9:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  7842ac:	33 d2                                           	xor    edx,edx
  7842ae:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  7842b2:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  7842b6:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  7842ba:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  7842be:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  7842c2:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  7842c6:	56                                              	push   esi
  7842c7:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  7842cb:	52                                              	push   edx
  7842cc:	ff d0                                           	call   eax
  7842ce:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7842d2:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7842d6:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7842da:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  7842de:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7842e2:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  7842e6:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7842ea:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  7842ee:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7842f2:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  7842f6:	33 c9                                           	xor    ecx,ecx
  7842f8:	84 c0                                           	test   al,al
  7842fa:	0f 95 c1                                        	setne  cl
  7842fd:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
  784301:	33 d2                                           	xor    edx,edx
  784303:	84 e4                                           	test   ah,ah
  784305:	0f 95 c2                                        	setne  dl
  784308:	33 c0                                           	xor    eax,eax
  78430a:	38 44 24 1e                                     	cmp    BYTE PTR [esp+0x1e],al
  78430e:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
  784312:	0f 95 c0                                        	setne  al
  784315:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  784319:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  78431d:	e8 6e 50 fe ff                                  	call   0x769390
  784322:	8b f0                                           	mov    esi,eax
  784324:	8b 16                                           	mov    edx,DWORD PTR [esi]
  784326:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
  78432c:	6a 08                                           	push   0x8
  78432e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  784332:	50                                              	push   eax
  784333:	8b ce                                           	mov    ecx,esi
  784335:	ff d2                                           	call   edx
  784337:	8b 06                                           	mov    eax,DWORD PTR [esi]
  784339:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
  78433f:	6a 08                                           	push   0x8
  784341:	6a 00                                           	push   0x0
  784343:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  784347:	51                                              	push   ecx
  784348:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  78434c:	52                                              	push   edx
  78434d:	8b ce                                           	mov    ecx,esi
  78434f:	ff d0                                           	call   eax
  784351:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  784355:	5e                                              	pop    esi
  784356:	83 c4 3c                                        	add    esp,0x3c
  784359:	c3                                              	ret
  78435a:	cc                                              	int3
  78435b:	cc                                              	int3
  78435c:	cc                                              	int3
  78435d:	cc                                              	int3
  78435e:	cc                                              	int3
  78435f:	cc                                              	int3
