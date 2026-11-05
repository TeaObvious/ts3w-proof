# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007749a0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportMessageText)
Paired Ghidra pseudocode: 007749A0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportMessageText.c
Window: [0x007749a0, 0x00774a70) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007749a0: 83 ec 34 8b 44 24 38 56 57 50 e8 61 0c 2b 00 83
007749b0: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 cf 49 ff
007749c0: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
007749d0: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 6e f1
007749e0: d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
007749f0: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
00774a00: 00 66 c7 44 24 38 0b 00 e8 b3 0f d8 ff 8b 54 24
00774a10: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
00774a20: c0 74 09 50 e8 b7 fa d6 ff 83 c4 04 8b 07 8b 40
00774a30: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
00774a40: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
00774a50: 8d 4c 24 20 e8 07 0d d8 ff 8b 44 24 08 5f 5e 83
00774a60: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007749a0 <.text+0x3739a0>:
  7749a0:	83 ec 34                                        	sub    esp,0x34
  7749a3:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  7749a7:	56                                              	push   esi
  7749a8:	57                                              	push   edi
  7749a9:	50                                              	push   eax
  7749aa:	e8 61 0c 2b 00                                  	call   0xa25610
  7749af:	83 c4 04                                        	add    esp,0x4
  7749b2:	8b f0                                           	mov    esi,eax
  7749b4:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7749bc:	e8 cf 49 ff ff                                  	call   0x769390
  7749c1:	8b f8                                           	mov    edi,eax
  7749c3:	85 ff                                           	test   edi,edi
  7749c5:	0f 84 8e 00 00 00                               	je     0x774a59
  7749cb:	85 f6                                           	test   esi,esi
  7749cd:	0f 84 86 00 00 00                               	je     0x774a59
  7749d3:	6a 00                                           	push   0x0
  7749d5:	6a ff                                           	push   0xffffffff
  7749d7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7749db:	56                                              	push   esi
  7749dc:	51                                              	push   ecx
  7749dd:	e8 6e f1 d7 ff                                  	call   0x4f3b50
  7749e2:	83 c4 10                                        	add    esp,0x10
  7749e5:	6a 01                                           	push   0x1
  7749e7:	6a 10                                           	push   0x10
  7749e9:	50                                              	push   eax
  7749ea:	6a 09                                           	push   0x9
  7749ec:	6a 13                                           	push   0x13
  7749ee:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7749f2:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7749fa:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  774a01:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774a08:	e8 b3 0f d8 ff                                  	call   0x4f59c0
  774a0d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  774a11:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  774a15:	2b d0                                           	sub    edx,eax
  774a17:	83 e2 fe                                        	and    edx,0xfffffffe
  774a1a:	83 fa 02                                        	cmp    edx,0x2
  774a1d:	7e 0d                                           	jle    0x774a2c
  774a1f:	85 c0                                           	test   eax,eax
  774a21:	74 09                                           	je     0x774a2c
  774a23:	50                                              	push   eax
  774a24:	e8 b7 fa d6 ff                                  	call   0x4e44e0
  774a29:	83 c4 04                                        	add    esp,0x4
  774a2c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  774a2e:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  774a31:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  774a35:	51                                              	push   ecx
  774a36:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  774a3a:	52                                              	push   edx
  774a3b:	8b cf                                           	mov    ecx,edi
  774a3d:	ff d0                                           	call   eax
  774a3f:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  774a44:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  774a4c:	74 0b                                           	je     0x774a59
  774a4e:	6a 00                                           	push   0x0
  774a50:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  774a54:	e8 07 0d d8 ff                                  	call   0x4f5760
  774a59:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  774a5d:	5f                                              	pop    edi
  774a5e:	5e                                              	pop    esi
  774a5f:	83 c4 34                                        	add    esp,0x34
  774a62:	c3                                              	ret
  774a63:	cc                                              	int3
  774a64:	cc                                              	int3
  774a65:	cc                                              	int3
  774a66:	cc                                              	int3
  774a67:	cc                                              	int3
  774a68:	cc                                              	int3
  774a69:	cc                                              	int3
  774a6a:	cc                                              	int3
  774a6b:	cc                                              	int3
  774a6c:	cc                                              	int3
  774a6d:	cc                                              	int3
  774a6e:	cc                                              	int3
  774a6f:	cc                                              	int3
