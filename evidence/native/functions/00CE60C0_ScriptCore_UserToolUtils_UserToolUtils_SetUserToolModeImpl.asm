# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce60c0 (ScriptCore.UserToolUtils::UserToolUtils_SetUserToolModeImpl)
Paired Ghidra pseudocode: 00CE60C0_ScriptCore_UserToolUtils_UserToolUtils_SetUserToolModeImpl.c
Window: [0x00ce60c0, 0x00ce6170) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce60c0: e8 3b 94 00 00 85 c0 74 6f 8b 48 30 83 f9 1a 77
00ce60d0: 67 0f b6 89 54 61 ce 00 ff 24 8d 3c 61 ce 00 8b
00ce60e0: 54 24 04 8b 48 2c 52 e8 24 3c 05 00 c3 8b 4c 24
00ce60f0: 04 51 8b 48 2c e8 a6 87 05 00 c3 8b 54 24 04 8b
00ce6100: 48 2c 52 e8 48 dc ff ff c3 8b 40 2c 85 c0 74 0e
00ce6110: 8d 48 d8 8b 44 24 04 50 e8 f3 8a 00 00 c3 8b 44
00ce6120: 24 04 33 c9 50 e8 e6 8a 00 00 c3 8b 4c 24 04 51
00ce6130: 8b 48 2c e8 a8 a3 fe ff c3 8d 49 00 df 60 ce 00
00ce6140: ed 60 ce 00 fb 60 ce 00 09 61 ce 00 2b 61 ce 00
00ce6150: 38 61 ce 00 00 01 02 05 05 05 05 05 00 05 05 05
00ce6160: 05 05 05 05 05 05 03 05 05 05 05 05 05 05 04 cc

LINEAR DISASSEMBLY
00ce60c0 <.text+0x8e50c0>:
  ce60c0:	e8 3b 94 00 00                                  	call   0xcef500
  ce60c5:	85 c0                                           	test   eax,eax
  ce60c7:	74 6f                                           	je     0xce6138
  ce60c9:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  ce60cc:	83 f9 1a                                        	cmp    ecx,0x1a
  ce60cf:	77 67                                           	ja     0xce6138
  ce60d1:	0f b6 89 54 61 ce 00                            	movzx  ecx,BYTE PTR [ecx+0xce6154]
  ce60d8:	ff 24 8d 3c 61 ce 00                            	jmp    DWORD PTR [ecx*4+0xce613c]
  ce60df:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce60e3:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  ce60e6:	52                                              	push   edx
  ce60e7:	e8 24 3c 05 00                                  	call   0xd39d10
  ce60ec:	c3                                              	ret
  ce60ed:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ce60f1:	51                                              	push   ecx
  ce60f2:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  ce60f5:	e8 a6 87 05 00                                  	call   0xd3e8a0
  ce60fa:	c3                                              	ret
  ce60fb:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce60ff:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  ce6102:	52                                              	push   edx
  ce6103:	e8 48 dc ff ff                                  	call   0xce3d50
  ce6108:	c3                                              	ret
  ce6109:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
  ce610c:	85 c0                                           	test   eax,eax
  ce610e:	74 0e                                           	je     0xce611e
  ce6110:	8d 48 d8                                        	lea    ecx,[eax-0x28]
  ce6113:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ce6117:	50                                              	push   eax
  ce6118:	e8 f3 8a 00 00                                  	call   0xceec10
  ce611d:	c3                                              	ret
  ce611e:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ce6122:	33 c9                                           	xor    ecx,ecx
  ce6124:	50                                              	push   eax
  ce6125:	e8 e6 8a 00 00                                  	call   0xceec10
  ce612a:	c3                                              	ret
  ce612b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ce612f:	51                                              	push   ecx
  ce6130:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  ce6133:	e8 a8 a3 fe ff                                  	call   0xcd04e0
  ce6138:	c3                                              	ret
  ce6139:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  ce613c:	df 60 ce                                        	fbld   TBYTE PTR [eax-0x32]
  ce613f:	00 ed                                           	add    ch,ch
  ce6141:	60                                              	pusha
  ce6142:	ce                                              	into
  ce6143:	00 fb                                           	add    bl,bh
  ce6145:	60                                              	pusha
  ce6146:	ce                                              	into
  ce6147:	00 09                                           	add    BYTE PTR [ecx],cl
  ce6149:	61                                              	popa
  ce614a:	ce                                              	into
  ce614b:	00 2b                                           	add    BYTE PTR [ebx],ch
  ce614d:	61                                              	popa
  ce614e:	ce                                              	into
  ce614f:	00 38                                           	add    BYTE PTR [eax],bh
  ce6151:	61                                              	popa
  ce6152:	ce                                              	into
  ce6153:	00 00                                           	add    BYTE PTR [eax],al
  ce6155:	01 02                                           	add    DWORD PTR [edx],eax
  ce6157:	05 05 05 05 05                                  	add    eax,0x5050505
  ce615c:	00 05 05 05 05 05                               	add    BYTE PTR ds:0x5050505,al
  ce6162:	05 05 05 05 03                                  	add    eax,0x3050505
  ce6167:	05 05 05 05 05                                  	add    eax,0x5050505
  ce616c:	05 05 04 cc                                   	add    eax,0xe8cc0405
