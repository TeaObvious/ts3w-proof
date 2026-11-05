# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5c10 (ScriptCore.CASUtils::CASUtils_SimBuilderSetSkinToneIndexImpl)
Paired Ghidra pseudocode: 005A5C10_ScriptCore_CASUtils_CASUtils_SimBuilderSetSkinToneIndexImpl.c
Window: [0x005a5c10, 0x005a5c60) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5c10: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5c20: 35 75 2c e8 68 37 1c 00 8b 10 8b c8 8b 82 cc 00
005a5c30: 00 00 56 ff d0 85 c0 74 16 f3 0f 10 44 24 0c 81
005a5c40: 48 1c 02 01 00 00 83 48 14 1f f3 0f 11 40 38 5e
005a5c50: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5c10 <.text+0x1a4c10>:
  5a5c10:	56                                              	push   esi
  5a5c11:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5c15:	8b c6                                           	mov    eax,esi
  5a5c17:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5c1c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5c21:	75 2c                                           	jne    0x5a5c4f
  5a5c23:	e8 68 37 1c 00                                  	call   0x769390
  5a5c28:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5c2a:	8b c8                                           	mov    ecx,eax
  5a5c2c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5c32:	56                                              	push   esi
  5a5c33:	ff d0                                           	call   eax
  5a5c35:	85 c0                                           	test   eax,eax
  5a5c37:	74 16                                           	je     0x5a5c4f
  5a5c39:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a5c3f:	81 48 1c 02 01 00 00                            	or     DWORD PTR [eax+0x1c],0x102
  5a5c46:	83 48 14 1f                                     	or     DWORD PTR [eax+0x14],0x1f
  5a5c4a:	f3 0f 11 40 38                                  	movss  DWORD PTR [eax+0x38],xmm0
  5a5c4f:	5e                                              	pop    esi
  5a5c50:	c3                                              	ret
  5a5c51:	cc                                              	int3
  5a5c52:	cc                                              	int3
  5a5c53:	cc                                              	int3
  5a5c54:	cc                                              	int3
  5a5c55:	cc                                              	int3
  5a5c56:	cc                                              	int3
  5a5c57:	cc                                              	int3
  5a5c58:	cc                                              	int3
  5a5c59:	cc                                              	int3
  5a5c5a:	cc                                              	int3
  5a5c5b:	cc                                              	int3
  5a5c5c:	cc                                              	int3
  5a5c5d:	cc                                              	int3
  5a5c5e:	cc                                              	int3
  5a5c5f:	cc                                              	int3
