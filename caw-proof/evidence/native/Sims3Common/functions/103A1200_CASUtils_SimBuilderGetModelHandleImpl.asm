# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1200 (CASUtils_SimBuilderGetModelHandleImpl)
Paired Ghidra pseudocode: 103A1200_CASUtils_SimBuilderGetModelHandleImpl.c
Window: [0x103a1200, 0x103a1240) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1200: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1210: 35 75 1e e8 08 9f 1b 00 8b 10 8b c8 8b 82 cc 00
103a1220: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 8f a2 03
103a1230: 00 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1200 <.text+0x3a0200>:
103a1200:	56                                              	push   esi
103a1201:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1205:	8b c6                                           	mov    eax,esi
103a1207:	25 00 00 00 ff                                  	and    eax,0xff000000
103a120c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1211:	75 1e                                           	jne    0x103a1231
103a1213:	e8 08 9f 1b 00                                  	call   0x1055b120
103a1218:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a121a:	8b c8                                           	mov    ecx,eax
103a121c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1222:	56                                              	push   esi
103a1223:	ff d0                                           	call   eax
103a1225:	85 c0                                           	test   eax,eax
103a1227:	74 08                                           	je     0x103a1231
103a1229:	8b c8                                           	mov    ecx,eax
103a122b:	5e                                              	pop    esi
103a122c:	e9 8f a2 03 00                                  	jmp    0x103db4c0
103a1231:	33 c0                                           	xor    eax,eax
103a1233:	5e                                              	pop    esi
103a1234:	c3                                              	ret
103a1235:	cc                                              	int3
103a1236:	cc                                              	int3
103a1237:	cc                                              	int3
103a1238:	cc                                              	int3
103a1239:	cc                                              	int3
103a123a:	cc                                              	int3
103a123b:	cc                                              	int3
103a123c:	cc                                              	int3
103a123d:	cc                                              	int3
103a123e:	cc                                              	int3
103a123f:	cc                                              	int3
