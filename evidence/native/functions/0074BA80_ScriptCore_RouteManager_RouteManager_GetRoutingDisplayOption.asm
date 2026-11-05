# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074ba80 (ScriptCore.RouteManager::RouteManager_GetRoutingDisplayOption)
Paired Ghidra pseudocode: 0074BA80_ScriptCore_RouteManager_RouteManager_GetRoutingDisplayOption.c
Window: [0x0074ba80, 0x0074bb40) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074bb40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074ba80: 56 33 f6 e8 68 d2 0d 00 85 c0 75 02 5e c3 8b 54
0074ba90: 24 08 f6 c2 01 74 0d 33 c9 38 88 d0 0a 00 00 0f
0074baa0: 95 c1 8b f1 f6 c2 02 74 19 8b 0d 40 a1 1d 01 85
0074bab0: c9 74 0f 53 33 db 38 99 00 01 00 00 0f 95 c3 8b
0074bac0: f3 5b f6 c2 04 74 0d 33 c9 38 88 d2 0a 00 00 0f
0074bad0: 95 c1 8b f1 f6 c2 08 74 0d 33 c9 38 88 d3 0a 00
0074bae0: 00 0f 95 c1 8b f1 f6 c2 10 74 0d 33 c9 38 88 d6
0074baf0: 0a 00 00 0f 95 c1 8b f1 f6 c2 20 74 06 8b b0 e0
0074bb00: 0a 00 00 f7 c2 00 01 00 00 74 13 80 b8 d8 0a 00
0074bb10: 00 00 74 08 8b b0 dc 0a 00 00 eb 02 33 f6 f7 c2
0074bb20: 00 02 00 00 74 0d 33 d2 38 90 d9 0a 00 00 0f 95
0074bb30: c2 8b f2 8b c6 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074ba80 <.text+0x34aa80>:
  74ba80:	56                                              	push   esi
  74ba81:	33 f6                                           	xor    esi,esi
  74ba83:	e8 68 d2 0d 00                                  	call   0x828cf0
  74ba88:	85 c0                                           	test   eax,eax
  74ba8a:	75 02                                           	jne    0x74ba8e
  74ba8c:	5e                                              	pop    esi
  74ba8d:	c3                                              	ret
  74ba8e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  74ba92:	f6 c2 01                                        	test   dl,0x1
  74ba95:	74 0d                                           	je     0x74baa4
  74ba97:	33 c9                                           	xor    ecx,ecx
  74ba99:	38 88 d0 0a 00 00                               	cmp    BYTE PTR [eax+0xad0],cl
  74ba9f:	0f 95 c1                                        	setne  cl
  74baa2:	8b f1                                           	mov    esi,ecx
  74baa4:	f6 c2 02                                        	test   dl,0x2
  74baa7:	74 19                                           	je     0x74bac2
  74baa9:	8b 0d 40 a1 1d 01                               	mov    ecx,DWORD PTR ds:0x11da140
  74baaf:	85 c9                                           	test   ecx,ecx
  74bab1:	74 0f                                           	je     0x74bac2
  74bab3:	53                                              	push   ebx
  74bab4:	33 db                                           	xor    ebx,ebx
  74bab6:	38 99 00 01 00 00                               	cmp    BYTE PTR [ecx+0x100],bl
  74babc:	0f 95 c3                                        	setne  bl
  74babf:	8b f3                                           	mov    esi,ebx
  74bac1:	5b                                              	pop    ebx
  74bac2:	f6 c2 04                                        	test   dl,0x4
  74bac5:	74 0d                                           	je     0x74bad4
  74bac7:	33 c9                                           	xor    ecx,ecx
  74bac9:	38 88 d2 0a 00 00                               	cmp    BYTE PTR [eax+0xad2],cl
  74bacf:	0f 95 c1                                        	setne  cl
  74bad2:	8b f1                                           	mov    esi,ecx
  74bad4:	f6 c2 08                                        	test   dl,0x8
  74bad7:	74 0d                                           	je     0x74bae6
  74bad9:	33 c9                                           	xor    ecx,ecx
  74badb:	38 88 d3 0a 00 00                               	cmp    BYTE PTR [eax+0xad3],cl
  74bae1:	0f 95 c1                                        	setne  cl
  74bae4:	8b f1                                           	mov    esi,ecx
  74bae6:	f6 c2 10                                        	test   dl,0x10
  74bae9:	74 0d                                           	je     0x74baf8
  74baeb:	33 c9                                           	xor    ecx,ecx
  74baed:	38 88 d6 0a 00 00                               	cmp    BYTE PTR [eax+0xad6],cl
  74baf3:	0f 95 c1                                        	setne  cl
  74baf6:	8b f1                                           	mov    esi,ecx
  74baf8:	f6 c2 20                                        	test   dl,0x20
  74bafb:	74 06                                           	je     0x74bb03
  74bafd:	8b b0 e0 0a 00 00                               	mov    esi,DWORD PTR [eax+0xae0]
  74bb03:	f7 c2 00 01 00 00                               	test   edx,0x100
  74bb09:	74 13                                           	je     0x74bb1e
  74bb0b:	80 b8 d8 0a 00 00 00                            	cmp    BYTE PTR [eax+0xad8],0x0
  74bb12:	74 08                                           	je     0x74bb1c
  74bb14:	8b b0 dc 0a 00 00                               	mov    esi,DWORD PTR [eax+0xadc]
  74bb1a:	eb 02                                           	jmp    0x74bb1e
  74bb1c:	33 f6                                           	xor    esi,esi
  74bb1e:	f7 c2 00 02 00 00                               	test   edx,0x200
  74bb24:	74 0d                                           	je     0x74bb33
  74bb26:	33 d2                                           	xor    edx,edx
  74bb28:	38 90 d9 0a 00 00                               	cmp    BYTE PTR [eax+0xad9],dl
  74bb2e:	0f 95 c2                                        	setne  dl
  74bb31:	8b f2                                           	mov    esi,edx
  74bb33:	8b c6                                           	mov    eax,esi
  74bb35:	5e                                              	pop    esi
  74bb36:	c3                                              	ret
  74bb37:	cc                                              	int3
  74bb38:	cc                                              	int3
  74bb39:	cc                                              	int3
  74bb3a:	cc                                              	int3
  74bb3b:	cc                                              	int3
  74bb3c:	cc                                              	int3
  74bb3d:	cc                                              	int3
  74bb3e:	cc                                              	int3
  74bb3f:	cc                                              	int3
