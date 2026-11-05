# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534210 (LoadSaveManager_SaveNativeObject)
Paired Ghidra pseudocode: 10534210_LoadSaveManager_SaveNativeObject.c
Window: [0x10534210, 0x10534250) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534210: 56 8b 74 24 08 8b c6 c1 e8 18 83 f8 42 74 0a 83
10534220: f8 44 74 05 83 c8 ff 5e c3 e8 f2 6e 02 00 8b 10
10534230: 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e5 8b
10534240: 4c 24 0c 8b 10 8b 52 04 51 8b c8 ff d2 5e c3 cc

LINEAR DISASSEMBLY
10534210 <.text+0x533210>:
10534210:	56                                              	push   esi
10534211:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10534215:	8b c6                                           	mov    eax,esi
10534217:	c1 e8 18                                        	shr    eax,0x18
1053421a:	83 f8 42                                        	cmp    eax,0x42
1053421d:	74 0a                                           	je     0x10534229
1053421f:	83 f8 44                                        	cmp    eax,0x44
10534222:	74 05                                           	je     0x10534229
10534224:	83 c8 ff                                        	or     eax,0xffffffff
10534227:	5e                                              	pop    esi
10534228:	c3                                              	ret
10534229:	e8 f2 6e 02 00                                  	call   0x1055b120
1053422e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10534230:	8b c8                                           	mov    ecx,eax
10534232:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10534238:	56                                              	push   esi
10534239:	ff d0                                           	call   eax
1053423b:	85 c0                                           	test   eax,eax
1053423d:	74 e5                                           	je     0x10534224
1053423f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10534243:	8b 10                                           	mov    edx,DWORD PTR [eax]
10534245:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
10534248:	51                                              	push   ecx
10534249:	8b c8                                           	mov    ecx,eax
1053424b:	ff d2                                           	call   edx
1053424d:	5e                                              	pop    esi
1053424e:	c3                                              	ret
1053424f:	cc                                              	int3
