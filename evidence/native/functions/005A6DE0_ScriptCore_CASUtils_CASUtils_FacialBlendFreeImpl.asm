# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6de0 (ScriptCore.CASUtils::CASUtils_FacialBlendFreeImpl)
Paired Ghidra pseudocode: 005A6DE0_ScriptCore_CASUtils_CASUtils_FacialBlendFreeImpl.c
Window: [0x005a6de0, 0x005a6e20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6de0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6df0: 35 75 20 e8 98 25 1c 00 8b 10 8b c8 8b 82 d8 00
005a6e00: 00 00 56 ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 04
005a6e10: 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6de0 <.text+0x1a5de0>:
  5a6de0:	56                                              	push   esi
  5a6de1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6de5:	8b c6                                           	mov    eax,esi
  5a6de7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6dec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6df1:	75 20                                           	jne    0x5a6e13
  5a6df3:	e8 98 25 1c 00                                  	call   0x769390
  5a6df8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6dfa:	8b c8                                           	mov    ecx,eax
  5a6dfc:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  5a6e02:	56                                              	push   esi
  5a6e03:	ff d0                                           	call   eax
  5a6e05:	85 c0                                           	test   eax,eax
  5a6e07:	74 0a                                           	je     0x5a6e13
  5a6e09:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6e0b:	8b c8                                           	mov    ecx,eax
  5a6e0d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a6e10:	5e                                              	pop    esi
  5a6e11:	ff e0                                           	jmp    eax
  5a6e13:	5e                                              	pop    esi
  5a6e14:	c3                                              	ret
  5a6e15:	cc                                              	int3
  5a6e16:	cc                                              	int3
  5a6e17:	cc                                              	int3
  5a6e18:	cc                                              	int3
  5a6e19:	cc                                              	int3
  5a6e1a:	cc                                              	int3
  5a6e1b:	cc                                              	int3
  5a6e1c:	cc                                              	int3
  5a6e1d:	cc                                              	int3
  5a6e1e:	cc                                              	int3
  5a6e1f:	cc                                              	int3
