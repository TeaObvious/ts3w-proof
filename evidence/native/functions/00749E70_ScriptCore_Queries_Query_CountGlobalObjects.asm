# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749e70 (ScriptCore.Queries::Query_CountGlobalObjects)
Paired Ghidra pseudocode: 00749E70_ScriptCore_Queries_Query_CountGlobalObjects.c
Window: [0x00749e70, 0x00749f20) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749e70: 55 8b ec 83 e4 f8 b8 1c 10 00 00 e8 c0 59 83 00
00749e80: 8d 44 24 1c 8b c8 89 4c 24 08 8b d0 89 44 24 14
00749e90: 8d 4c 24 04 56 8d 84 24 20 10 00 00 51 89 54 24
00749ea0: 0c 89 44 24 14 c7 44 24 18 00 4e 00 01 e8 7e fe
00749eb0: ff ff 83 c4 04 85 c0 74 44 e8 d2 f4 01 00 8b 4c
00749ec0: 24 08 8b 54 24 0c 8b 30 2b d1 c1 fa 03 52 8b 55
00749ed0: 08 51 8b c8 8b 86 c4 00 00 00 52 ff d0 8b f0 8b
00749ee0: 44 24 08 85 c0 74 0f 3b 44 24 18 74 09 50 e8 ed
00749ef0: a5 d9 ff 83 c4 04 8b c6 5e 8b e5 5d c3 8b 44 24
00749f00: 08 85 c0 74 0f 3b 44 24 18 74 09 50 e8 cf a5 d9
00749f10: ff 83 c4 04 33 c0 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00749e70 <.text+0x348e70>:
  749e70:	55                                              	push   ebp
  749e71:	8b ec                                           	mov    ebp,esp
  749e73:	83 e4 f8                                        	and    esp,0xfffffff8
  749e76:	b8 1c 10 00 00                                  	mov    eax,0x101c
  749e7b:	e8 c0 59 83 00                                  	call   0xf7f840
  749e80:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  749e84:	8b c8                                           	mov    ecx,eax
  749e86:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  749e8a:	8b d0                                           	mov    edx,eax
  749e8c:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  749e90:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  749e94:	56                                              	push   esi
  749e95:	8d 84 24 20 10 00 00                            	lea    eax,[esp+0x1020]
  749e9c:	51                                              	push   ecx
  749e9d:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  749ea1:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  749ea5:	c7 44 24 18 00 4e 00 01                         	mov    DWORD PTR [esp+0x18],0x1004e00
  749ead:	e8 7e fe ff ff                                  	call   0x749d30
  749eb2:	83 c4 04                                        	add    esp,0x4
  749eb5:	85 c0                                           	test   eax,eax
  749eb7:	74 44                                           	je     0x749efd
  749eb9:	e8 d2 f4 01 00                                  	call   0x769390
  749ebe:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  749ec2:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  749ec6:	8b 30                                           	mov    esi,DWORD PTR [eax]
  749ec8:	2b d1                                           	sub    edx,ecx
  749eca:	c1 fa 03                                        	sar    edx,0x3
  749ecd:	52                                              	push   edx
  749ece:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  749ed1:	51                                              	push   ecx
  749ed2:	8b c8                                           	mov    ecx,eax
  749ed4:	8b 86 c4 00 00 00                               	mov    eax,DWORD PTR [esi+0xc4]
  749eda:	52                                              	push   edx
  749edb:	ff d0                                           	call   eax
  749edd:	8b f0                                           	mov    esi,eax
  749edf:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  749ee3:	85 c0                                           	test   eax,eax
  749ee5:	74 0f                                           	je     0x749ef6
  749ee7:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
  749eeb:	74 09                                           	je     0x749ef6
  749eed:	50                                              	push   eax
  749eee:	e8 ed a5 d9 ff                                  	call   0x4e44e0
  749ef3:	83 c4 04                                        	add    esp,0x4
  749ef6:	8b c6                                           	mov    eax,esi
  749ef8:	5e                                              	pop    esi
  749ef9:	8b e5                                           	mov    esp,ebp
  749efb:	5d                                              	pop    ebp
  749efc:	c3                                              	ret
  749efd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  749f01:	85 c0                                           	test   eax,eax
  749f03:	74 0f                                           	je     0x749f14
  749f05:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
  749f09:	74 09                                           	je     0x749f14
  749f0b:	50                                              	push   eax
  749f0c:	e8 cf a5 d9 ff                                  	call   0x4e44e0
  749f11:	83 c4 04                                        	add    esp,0x4
  749f14:	33 c0                                           	xor    eax,eax
  749f16:	5e                                              	pop    esi
  749f17:	8b e5                                           	mov    esp,ebp
  749f19:	5d                                              	pop    ebp
  749f1a:	c3                                              	ret
  749f1b:	cc                                              	int3
  749f1c:	cc                                              	int3
  749f1d:	cc                                              	int3
  749f1e:	cc                                              	int3
  749f1f:	cc                                              	int3
