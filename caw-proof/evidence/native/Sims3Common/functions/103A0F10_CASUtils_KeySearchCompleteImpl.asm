# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0f10 (CASUtils_KeySearchCompleteImpl)
Paired Ghidra pseudocode: 103A0F10_CASUtils_KeySearchCompleteImpl.c
Window: [0x103a0f10, 0x103a0f40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0f10: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a0f20: 35 75 12 e8 f8 a1 1b 00 8b 10 8b c8 8b 82 cc 00
103a0f30: 00 00 56 ff d0 b0 01 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0f10 <.text+0x39ff10>:
103a0f10:	56                                              	push   esi
103a0f11:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a0f15:	8b c6                                           	mov    eax,esi
103a0f17:	25 00 00 00 ff                                  	and    eax,0xff000000
103a0f1c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a0f21:	75 12                                           	jne    0x103a0f35
103a0f23:	e8 f8 a1 1b 00                                  	call   0x1055b120
103a0f28:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a0f2a:	8b c8                                           	mov    ecx,eax
103a0f2c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0f32:	56                                              	push   esi
103a0f33:	ff d0                                           	call   eax
103a0f35:	b0 01                                           	mov    al,0x1
103a0f37:	5e                                              	pop    esi
103a0f38:	c3                                              	ret
103a0f39:	cc                                              	int3
103a0f3a:	cc                                              	int3
103a0f3b:	cc                                              	int3
103a0f3c:	cc                                              	int3
103a0f3d:	cc                                              	int3
103a0f3e:	cc                                              	int3
103a0f3f:	cc                                              	int3
