# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00768990 (ScriptCore.SACS::SACS_GetActiveClipInfoImpl)
Paired Ghidra pseudocode: 00768990_ScriptCore_SACS_SACS_GetActiveClipInfoImpl.c
Window: [0x00768990, 0x00768b10) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x00768b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00768990: 81 ec 5c 02 00 00 56 8b b4 24 64 02 00 00 33 c0
007689a0: 85 f6 74 16 8b 4e 04 2b 0e b8 db 81 b9 76 f7 e9
007689b0: c1 fa 07 8b c2 c1 e8 1f 03 c2 8d 4c 24 48 8b d1
007689c0: 89 4c 24 3c 8d 8c 24 48 01 00 00 89 4c 24 40 8b
007689d0: 8c 24 68 02 00 00 3b c8 89 54 24 38 c6 44 24 48
007689e0: 00 73 18 69 c9 14 01 00 00 03 0e 8d 54 24 38 51
007689f0: 52 e8 4a ff ff ff 83 c4 08 eb 51 8d 84 24 5c 01
00768a00: 00 00 8b c8 50 89 8c 24 50 01 00 00 8d 94 24 60
00768a10: 02 00 00 51 8d 4c 24 40 89 84 24 58 01 00 00 89
00768a20: 94 24 5c 01 00 00 c6 84 24 64 01 00 00 00 c7 84
00768a30: 24 64 02 00 00 10 27 00 00 e8 42 6e e2 ff 8b 94
00768a40: 24 5c 02 00 00 89 94 24 48 01 00 00 8b 84 24 6c
00768a50: 02 00 00 8b 8c 24 48 01 00 00 8b 54 24 38 68 08
00768a60: 80 00 01 6a ff 89 08 52 8d 44 24 34 50 e8 de b0
00768a70: d8 ff 83 c4 10 6a 01 6a 10 8d 4c 24 30 51 6a 09
00768a80: 6a 13 8d 4c 24 1c c7 44 24 1c 6c 88 00 01 66 c7
00768a90: 44 24 26 13 00 66 c7 44 24 24 0b 00 e8 1f cf d8
00768aa0: ff c7 44 24 04 00 00 00 00 e8 e2 08 00 00 8b 10
00768ab0: 8b 52 50 8d 4c 24 04 51 8d 4c 24 0c 51 8b c8 ff
00768ac0: d2 f6 44 24 10 04 8b 74 24 04 c7 44 24 08 f4 a6
00768ad0: fb 00 74 0b 6a 00 8d 4c 24 0c e8 81 cc d8 ff 8b
00768ae0: 4c 24 30 8b 44 24 28 2b c8 83 e1 fe 83 f9 02 7e
00768af0: 0d 85 c0 74 09 50 e8 e5 b9 d7 ff 83 c4 04 8b c6
00768b00: 5e 81 c4 5c 02 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00768990 <.text+0x367990>:
  768990:	81 ec 5c 02 00 00                               	sub    esp,0x25c
  768996:	56                                              	push   esi
  768997:	8b b4 24 64 02 00 00                            	mov    esi,DWORD PTR [esp+0x264]
  76899e:	33 c0                                           	xor    eax,eax
  7689a0:	85 f6                                           	test   esi,esi
  7689a2:	74 16                                           	je     0x7689ba
  7689a4:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  7689a7:	2b 0e                                           	sub    ecx,DWORD PTR [esi]
  7689a9:	b8 db 81 b9 76                                  	mov    eax,0x76b981db
  7689ae:	f7 e9                                           	imul   ecx
  7689b0:	c1 fa 07                                        	sar    edx,0x7
  7689b3:	8b c2                                           	mov    eax,edx
  7689b5:	c1 e8 1f                                        	shr    eax,0x1f
  7689b8:	03 c2                                           	add    eax,edx
  7689ba:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  7689be:	8b d1                                           	mov    edx,ecx
  7689c0:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  7689c4:	8d 8c 24 48 01 00 00                            	lea    ecx,[esp+0x148]
  7689cb:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
  7689cf:	8b 8c 24 68 02 00 00                            	mov    ecx,DWORD PTR [esp+0x268]
  7689d6:	3b c8                                           	cmp    ecx,eax
  7689d8:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  7689dc:	c6 44 24 48 00                                  	mov    BYTE PTR [esp+0x48],0x0
  7689e1:	73 18                                           	jae    0x7689fb
  7689e3:	69 c9 14 01 00 00                               	imul   ecx,ecx,0x114
  7689e9:	03 0e                                           	add    ecx,DWORD PTR [esi]
  7689eb:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  7689ef:	51                                              	push   ecx
  7689f0:	52                                              	push   edx
  7689f1:	e8 4a ff ff ff                                  	call   0x768940
  7689f6:	83 c4 08                                        	add    esp,0x8
  7689f9:	eb 51                                           	jmp    0x768a4c
  7689fb:	8d 84 24 5c 01 00 00                            	lea    eax,[esp+0x15c]
  768a02:	8b c8                                           	mov    ecx,eax
  768a04:	50                                              	push   eax
  768a05:	89 8c 24 50 01 00 00                            	mov    DWORD PTR [esp+0x150],ecx
  768a0c:	8d 94 24 60 02 00 00                            	lea    edx,[esp+0x260]
  768a13:	51                                              	push   ecx
  768a14:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  768a18:	89 84 24 58 01 00 00                            	mov    DWORD PTR [esp+0x158],eax
  768a1f:	89 94 24 5c 01 00 00                            	mov    DWORD PTR [esp+0x15c],edx
  768a26:	c6 84 24 64 01 00 00 00                         	mov    BYTE PTR [esp+0x164],0x0
  768a2e:	c7 84 24 64 02 00 00 10 27 00 00                	mov    DWORD PTR [esp+0x264],0x2710
  768a39:	e8 42 6e e2 ff                                  	call   0x58f880
  768a3e:	8b 94 24 5c 02 00 00                            	mov    edx,DWORD PTR [esp+0x25c]
  768a45:	89 94 24 48 01 00 00                            	mov    DWORD PTR [esp+0x148],edx
  768a4c:	8b 84 24 6c 02 00 00                            	mov    eax,DWORD PTR [esp+0x26c]
  768a53:	8b 8c 24 48 01 00 00                            	mov    ecx,DWORD PTR [esp+0x148]
  768a5a:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  768a5e:	68 08 80 00 01                                  	push   0x1008008
  768a63:	6a ff                                           	push   0xffffffff
  768a65:	89 08                                           	mov    DWORD PTR [eax],ecx
  768a67:	52                                              	push   edx
  768a68:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  768a6c:	50                                              	push   eax
  768a6d:	e8 de b0 d8 ff                                  	call   0x4f3b50
  768a72:	83 c4 10                                        	add    esp,0x10
  768a75:	6a 01                                           	push   0x1
  768a77:	6a 10                                           	push   0x10
  768a79:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  768a7d:	51                                              	push   ecx
  768a7e:	6a 09                                           	push   0x9
  768a80:	6a 13                                           	push   0x13
  768a82:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  768a86:	c7 44 24 1c 6c 88 00 01                         	mov    DWORD PTR [esp+0x1c],0x100886c
  768a8e:	66 c7 44 24 26 13 00                            	mov    WORD PTR [esp+0x26],0x13
  768a95:	66 c7 44 24 24 0b 00                            	mov    WORD PTR [esp+0x24],0xb
  768a9c:	e8 1f cf d8 ff                                  	call   0x4f59c0
  768aa1:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  768aa9:	e8 e2 08 00 00                                  	call   0x769390
  768aae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  768ab0:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  768ab3:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  768ab7:	51                                              	push   ecx
  768ab8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  768abc:	51                                              	push   ecx
  768abd:	8b c8                                           	mov    ecx,eax
  768abf:	ff d2                                           	call   edx
  768ac1:	f6 44 24 10 04                                  	test   BYTE PTR [esp+0x10],0x4
  768ac6:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  768aca:	c7 44 24 08 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x8],0xfba6f4
  768ad2:	74 0b                                           	je     0x768adf
  768ad4:	6a 00                                           	push   0x0
  768ad6:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  768ada:	e8 81 cc d8 ff                                  	call   0x4f5760
  768adf:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  768ae3:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  768ae7:	2b c8                                           	sub    ecx,eax
  768ae9:	83 e1 fe                                        	and    ecx,0xfffffffe
  768aec:	83 f9 02                                        	cmp    ecx,0x2
  768aef:	7e 0d                                           	jle    0x768afe
  768af1:	85 c0                                           	test   eax,eax
  768af3:	74 09                                           	je     0x768afe
  768af5:	50                                              	push   eax
  768af6:	e8 e5 b9 d7 ff                                  	call   0x4e44e0
  768afb:	83 c4 04                                        	add    esp,0x4
  768afe:	8b c6                                           	mov    eax,esi
  768b00:	5e                                              	pop    esi
  768b01:	81 c4 5c 02 00 00                               	add    esp,0x25c
  768b07:	c3                                              	ret
  768b08:	cc                                              	int3
  768b09:	cc                                              	int3
  768b0a:	cc                                              	int3
  768b0b:	cc                                              	int3
  768b0c:	cc                                              	int3
  768b0d:	cc                                              	int3
  768b0e:	cc                                              	int3
  768b0f:	cc                                              	int3
