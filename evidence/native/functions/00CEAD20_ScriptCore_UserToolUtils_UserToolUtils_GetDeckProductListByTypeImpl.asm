# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00cead20 (ScriptCore.UserToolUtils::UserToolUtils_GetDeckProductListByTypeImpl)
Paired Ghidra pseudocode: 00CEAD20_ScriptCore_UserToolUtils_UserToolUtils_GetDeckProductListByTypeImpl.c
Window: [0x00cead20, 0x00ceada0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceada0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00cead20: 8b 0d 34 e0 1e 01 83 ec 10 85 c9 74 60 8b 54 24
00cead30: 18 57 8d 44 24 04 50 8b 44 24 1c 52 50 c7 44 24
00cead40: 10 00 00 00 00 c7 44 24 14 00 00 00 00 c7 44 24
00cead50: 18 00 00 00 00 c7 44 24 1c 2c 17 08 01 e8 0e 52
00cead60: fa ff 6a 00 8d 4c 24 08 6a 03 51 e8 b0 fa ff ff
00cead70: 8b f8 8b 44 24 10 83 c4 0c 85 c0 74 09 50 e8 5d
00cead80: 97 7f ff 83 c4 04 8b c7 5f 83 c4 10 c3 33 c0 83
00cead90: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00cead20 <.text+0x8e9d20>:
  cead20:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  cead26:	83 ec 10                                        	sub    esp,0x10
  cead29:	85 c9                                           	test   ecx,ecx
  cead2b:	74 60                                           	je     0xcead8d
  cead2d:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  cead31:	57                                              	push   edi
  cead32:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  cead36:	50                                              	push   eax
  cead37:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  cead3b:	52                                              	push   edx
  cead3c:	50                                              	push   eax
  cead3d:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  cead45:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  cead4d:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  cead55:	c7 44 24 1c 2c 17 08 01                         	mov    DWORD PTR [esp+0x1c],0x108172c
  cead5d:	e8 0e 52 fa ff                                  	call   0xc8ff70
  cead62:	6a 00                                           	push   0x0
  cead64:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  cead68:	6a 03                                           	push   0x3
  cead6a:	51                                              	push   ecx
  cead6b:	e8 b0 fa ff ff                                  	call   0xcea820
  cead70:	8b f8                                           	mov    edi,eax
  cead72:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  cead76:	83 c4 0c                                        	add    esp,0xc
  cead79:	85 c0                                           	test   eax,eax
  cead7b:	74 09                                           	je     0xcead86
  cead7d:	50                                              	push   eax
  cead7e:	e8 5d 97 7f ff                                  	call   0x4e44e0
  cead83:	83 c4 04                                        	add    esp,0x4
  cead86:	8b c7                                           	mov    eax,edi
  cead88:	5f                                              	pop    edi
  cead89:	83 c4 10                                        	add    esp,0x10
  cead8c:	c3                                              	ret
  cead8d:	33 c0                                           	xor    eax,eax
  cead8f:	83 c4 10                                        	add    esp,0x10
  cead92:	c3                                              	ret
  cead93:	cc                                              	int3
  cead94:	cc                                              	int3
  cead95:	cc                                              	int3
  cead96:	cc                                              	int3
  cead97:	cc                                              	int3
  cead98:	cc                                              	int3
  cead99:	cc                                              	int3
  cead9a:	cc                                              	int3
  cead9b:	cc                                              	int3
  cead9c:	cc                                              	int3
  cead9d:	cc                                              	int3
  cead9e:	cc                                              	int3
  cead9f:	cc                                              	int3
