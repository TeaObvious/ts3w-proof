# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741d20 (ScriptCore.EAText::EAText_GetTimeString)
Paired Ghidra pseudocode: 00741D20_ScriptCore_EAText_EAText_GetTimeString.c
Window: [0x00741d20, 0x00741e20) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741d20: 81 ec b4 00 00 00 8a 84 24 c4 00 00 00 8b 94 24
00741d30: c0 00 00 00 f6 d8 56 8d 4c 24 38 1b c0 83 e0 f4
00741d40: 83 c0 18 50 8b 84 24 c4 00 00 00 6a 00 6a 40 51
00741d50: 8b 8c 24 cc 00 00 00 52 50 51 e8 41 92 d0 ff 83
00741d60: c4 1c e8 29 76 02 00 8d 54 24 38 52 8d 4c 24 08
00741d70: 8b f0 c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00
00741d80: 00 00 c7 44 24 10 00 00 00 00 c7 44 24 14 90 1f
00741d90: 00 01 e8 f9 97 cc ff 6a 01 6a 10 8d 44 24 0c 50
00741da0: 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c 6c 88 00 01
00741db0: 66 c7 44 24 36 13 00 66 c7 44 24 34 0b 00 e8 fd
00741dc0: 3b db ff 8b 16 8b 52 50 8d 44 24 14 50 8d 4c 24
00741dd0: 1c 51 8b ce ff d2 f6 44 24 20 04 8b 74 24 14 c7
00741de0: 44 24 18 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 1c e8
00741df0: 6c 39 db ff 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1
00741e00: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 d0 26 da ff
00741e10: 83 c4 04 8b c6 5e 81 c4 b4 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
00741d20 <.text+0x340d20>:
  741d20:	81 ec b4 00 00 00                               	sub    esp,0xb4
  741d26:	8a 84 24 c4 00 00 00                            	mov    al,BYTE PTR [esp+0xc4]
  741d2d:	8b 94 24 c0 00 00 00                            	mov    edx,DWORD PTR [esp+0xc0]
  741d34:	f6 d8                                           	neg    al
  741d36:	56                                              	push   esi
  741d37:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  741d3b:	1b c0                                           	sbb    eax,eax
  741d3d:	83 e0 f4                                        	and    eax,0xfffffff4
  741d40:	83 c0 18                                        	add    eax,0x18
  741d43:	50                                              	push   eax
  741d44:	8b 84 24 c4 00 00 00                            	mov    eax,DWORD PTR [esp+0xc4]
  741d4b:	6a 00                                           	push   0x0
  741d4d:	6a 40                                           	push   0x40
  741d4f:	51                                              	push   ecx
  741d50:	8b 8c 24 cc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xcc]
  741d57:	52                                              	push   edx
  741d58:	50                                              	push   eax
  741d59:	51                                              	push   ecx
  741d5a:	e8 41 92 d0 ff                                  	call   0x44afa0
  741d5f:	83 c4 1c                                        	add    esp,0x1c
  741d62:	e8 29 76 02 00                                  	call   0x769390
  741d67:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  741d6b:	52                                              	push   edx
  741d6c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  741d70:	8b f0                                           	mov    esi,eax
  741d72:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  741d7a:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  741d82:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  741d8a:	c7 44 24 14 90 1f 00 01                         	mov    DWORD PTR [esp+0x14],0x1001f90
  741d92:	e8 f9 97 cc ff                                  	call   0x40b590
  741d97:	6a 01                                           	push   0x1
  741d99:	6a 10                                           	push   0x10
  741d9b:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  741d9f:	50                                              	push   eax
  741da0:	6a 09                                           	push   0x9
  741da2:	6a 13                                           	push   0x13
  741da4:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  741da8:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  741db0:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  741db7:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  741dbe:	e8 fd 3b db ff                                  	call   0x4f59c0
  741dc3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  741dc5:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  741dc8:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  741dcc:	50                                              	push   eax
  741dcd:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  741dd1:	51                                              	push   ecx
  741dd2:	8b ce                                           	mov    ecx,esi
  741dd4:	ff d2                                           	call   edx
  741dd6:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  741ddb:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  741ddf:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  741de7:	74 0b                                           	je     0x741df4
  741de9:	6a 00                                           	push   0x0
  741deb:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  741def:	e8 6c 39 db ff                                  	call   0x4f5760
  741df4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  741df8:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  741dfc:	2b c8                                           	sub    ecx,eax
  741dfe:	83 e1 fe                                        	and    ecx,0xfffffffe
  741e01:	83 f9 02                                        	cmp    ecx,0x2
  741e04:	7e 0d                                           	jle    0x741e13
  741e06:	85 c0                                           	test   eax,eax
  741e08:	74 09                                           	je     0x741e13
  741e0a:	50                                              	push   eax
  741e0b:	e8 d0 26 da ff                                  	call   0x4e44e0
  741e10:	83 c4 04                                        	add    esp,0x4
  741e13:	8b c6                                           	mov    eax,esi
  741e15:	5e                                              	pop    esi
  741e16:	81 c4 b4 00 00 00                               	add    esp,0xb4
  741e1c:	c3                                              	ret
  741e1d:	cc                                              	int3
  741e1e:	cc                                              	int3
  741e1f:	cc                                              	int3
