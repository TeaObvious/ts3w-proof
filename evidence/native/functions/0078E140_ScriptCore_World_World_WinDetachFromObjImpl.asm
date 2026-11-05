# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e140 (ScriptCore.World::World_WinDetachFromObjImpl)
Paired Ghidra pseudocode: 0078E140_ScriptCore_World_World_WinDetachFromObjImpl.c
Window: [0x0078e140, 0x0078e1f0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e1f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e140: e8 4b b2 fd ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0078e150: 00 51 8b c8 ff d2 85 c0 0f 84 81 00 00 00 8b 10
0078e160: 57 8b c8 8b 42 0c 68 18 82 ee ee ff d0 8b f8 85
0078e170: ff 74 6b 80 7c 24 0c 00 8b 17 8b cf 74 62 8b 82
0078e180: 10 01 00 00 56 6a 00 ff d0 8b f0 85 f6 74 4e 53
0078e190: 33 db 85 f6 74 22 8b 16 8b 42 0c 68 6a 52 86 04
0078e1a0: 8b ce ff d0 85 c0 74 10 8b 16 8b 42 0c 68 6a 52
0078e1b0: 86 04 8b ce ff d0 8b de 8b 17 8b 82 10 01 00 00
0078e1c0: 56 8b cf ff d0 85 db 8b f0 74 0d 8b 17 8b 82 0c
0078e1d0: 01 00 00 53 8b cf ff d0 85 f6 75 b4 5b 5e 5f c3
0078e1e0: 8b 82 88 00 00 00 6a 00 ff d0 5f c3 cc cc cc cc

LINEAR DISASSEMBLY
0078e140 <.text+0x38d140>:
  78e140:	e8 4b b2 fd ff                                  	call   0x769390
  78e145:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78e149:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e14b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  78e151:	51                                              	push   ecx
  78e152:	8b c8                                           	mov    ecx,eax
  78e154:	ff d2                                           	call   edx
  78e156:	85 c0                                           	test   eax,eax
  78e158:	0f 84 81 00 00 00                               	je     0x78e1df
  78e15e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e160:	57                                              	push   edi
  78e161:	8b c8                                           	mov    ecx,eax
  78e163:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e166:	68 18 82 ee ee                                  	push   0xeeee8218
  78e16b:	ff d0                                           	call   eax
  78e16d:	8b f8                                           	mov    edi,eax
  78e16f:	85 ff                                           	test   edi,edi
  78e171:	74 6b                                           	je     0x78e1de
  78e173:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  78e178:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e17a:	8b cf                                           	mov    ecx,edi
  78e17c:	74 62                                           	je     0x78e1e0
  78e17e:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78e184:	56                                              	push   esi
  78e185:	6a 00                                           	push   0x0
  78e187:	ff d0                                           	call   eax
  78e189:	8b f0                                           	mov    esi,eax
  78e18b:	85 f6                                           	test   esi,esi
  78e18d:	74 4e                                           	je     0x78e1dd
  78e18f:	53                                              	push   ebx
  78e190:	33 db                                           	xor    ebx,ebx
  78e192:	85 f6                                           	test   esi,esi
  78e194:	74 22                                           	je     0x78e1b8
  78e196:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e198:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e19b:	68 6a 52 86 04                                  	push   0x486526a
  78e1a0:	8b ce                                           	mov    ecx,esi
  78e1a2:	ff d0                                           	call   eax
  78e1a4:	85 c0                                           	test   eax,eax
  78e1a6:	74 10                                           	je     0x78e1b8
  78e1a8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e1aa:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e1ad:	68 6a 52 86 04                                  	push   0x486526a
  78e1b2:	8b ce                                           	mov    ecx,esi
  78e1b4:	ff d0                                           	call   eax
  78e1b6:	8b de                                           	mov    ebx,esi
  78e1b8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e1ba:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78e1c0:	56                                              	push   esi
  78e1c1:	8b cf                                           	mov    ecx,edi
  78e1c3:	ff d0                                           	call   eax
  78e1c5:	85 db                                           	test   ebx,ebx
  78e1c7:	8b f0                                           	mov    esi,eax
  78e1c9:	74 0d                                           	je     0x78e1d8
  78e1cb:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e1cd:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
  78e1d3:	53                                              	push   ebx
  78e1d4:	8b cf                                           	mov    ecx,edi
  78e1d6:	ff d0                                           	call   eax
  78e1d8:	85 f6                                           	test   esi,esi
  78e1da:	75 b4                                           	jne    0x78e190
  78e1dc:	5b                                              	pop    ebx
  78e1dd:	5e                                              	pop    esi
  78e1de:	5f                                              	pop    edi
  78e1df:	c3                                              	ret
  78e1e0:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
  78e1e6:	6a 00                                           	push   0x0
  78e1e8:	ff d0                                           	call   eax
  78e1ea:	5f                                              	pop    edi
  78e1eb:	c3                                              	ret
  78e1ec:	cc                                              	int3
  78e1ed:	cc                                              	int3
  78e1ee:	cc                                              	int3
  78e1ef:	cc                                              	int3
