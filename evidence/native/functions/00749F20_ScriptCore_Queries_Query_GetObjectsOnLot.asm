# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749f20 (ScriptCore.Queries::Query_GetObjectsOnLot)
Paired Ghidra pseudocode: 00749F20_ScriptCore_Queries_Query_GetObjectsOnLot.c
Window: [0x00749f20, 0x00749fc0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749f20: 55 8b ec 83 e4 f8 b8 1c 10 00 00 e8 10 59 83 00
00749f30: 8d 44 24 1c 8b c8 8b d0 56 89 4c 24 0c 89 44 24
00749f40: 18 8d 4c 24 08 51 8b 4d 0c 89 54 24 0c 8b 55 14
00749f50: 8d 84 24 24 10 00 00 89 44 24 14 8b 45 10 52 50
00749f60: 51 33 f6 c7 44 24 24 00 4e 00 01 e8 30 fc ff ff
00749f70: 83 c4 10 85 c0 74 26 e8 14 f4 01 00 8b 4c 24 08
00749f80: 8b 54 24 0c 8b 30 2b d1 c1 fa 03 52 8b 55 08 51
00749f90: 8b c8 8b 86 c0 00 00 00 52 ff d0 8b f0 8b 44 24
00749fa0: 08 85 c0 74 0f 3b 44 24 18 74 09 50 e8 2f a5 d9
00749fb0: ff 83 c4 04 8b c6 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00749f20 <.text+0x348f20>:
  749f20:	55                                              	push   ebp
  749f21:	8b ec                                           	mov    ebp,esp
  749f23:	83 e4 f8                                        	and    esp,0xfffffff8
  749f26:	b8 1c 10 00 00                                  	mov    eax,0x101c
  749f2b:	e8 10 59 83 00                                  	call   0xf7f840
  749f30:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  749f34:	8b c8                                           	mov    ecx,eax
  749f36:	8b d0                                           	mov    edx,eax
  749f38:	56                                              	push   esi
  749f39:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  749f3d:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  749f41:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  749f45:	51                                              	push   ecx
  749f46:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  749f49:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  749f4d:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
  749f50:	8d 84 24 24 10 00 00                            	lea    eax,[esp+0x1024]
  749f57:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  749f5b:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  749f5e:	52                                              	push   edx
  749f5f:	50                                              	push   eax
  749f60:	51                                              	push   ecx
  749f61:	33 f6                                           	xor    esi,esi
  749f63:	c7 44 24 24 00 4e 00 01                         	mov    DWORD PTR [esp+0x24],0x1004e00
  749f6b:	e8 30 fc ff ff                                  	call   0x749ba0
  749f70:	83 c4 10                                        	add    esp,0x10
  749f73:	85 c0                                           	test   eax,eax
  749f75:	74 26                                           	je     0x749f9d
  749f77:	e8 14 f4 01 00                                  	call   0x769390
  749f7c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  749f80:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  749f84:	8b 30                                           	mov    esi,DWORD PTR [eax]
  749f86:	2b d1                                           	sub    edx,ecx
  749f88:	c1 fa 03                                        	sar    edx,0x3
  749f8b:	52                                              	push   edx
  749f8c:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  749f8f:	51                                              	push   ecx
  749f90:	8b c8                                           	mov    ecx,eax
  749f92:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
  749f98:	52                                              	push   edx
  749f99:	ff d0                                           	call   eax
  749f9b:	8b f0                                           	mov    esi,eax
  749f9d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  749fa1:	85 c0                                           	test   eax,eax
  749fa3:	74 0f                                           	je     0x749fb4
  749fa5:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
  749fa9:	74 09                                           	je     0x749fb4
  749fab:	50                                              	push   eax
  749fac:	e8 2f a5 d9 ff                                  	call   0x4e44e0
  749fb1:	83 c4 04                                        	add    esp,0x4
  749fb4:	8b c6                                           	mov    eax,esi
  749fb6:	5e                                              	pop    esi
  749fb7:	8b e5                                           	mov    esp,ebp
  749fb9:	5d                                              	pop    ebp
  749fba:	c3                                              	ret
  749fbb:	cc                                              	int3
  749fbc:	cc                                              	int3
  749fbd:	cc                                              	int3
  749fbe:	cc                                              	int3
  749fbf:	cc                                              	int3
