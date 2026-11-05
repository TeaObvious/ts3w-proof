# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7080 (ScriptCore.CASUtils::CASUtils_SimOutfitGetUniformComponentsImpl)
Paired Ghidra pseudocode: 005A7080_ScriptCore_CASUtils_CASUtils_SimOutfitGetUniformComponentsImpl.c
Window: [0x005a7080, 0x005a70d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a70d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7080: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7090: 35 74 08 83 c8 ff 83 ca ff 5e c3 e8 f0 22 1c 00
005a70a0: 8b 10 8b c8 8b 82 cc 00 00 00 56 ff d0 8b c8 85
005a70b0: c9 74 e0 8b 81 d0 00 00 00 8b 91 d4 00 00 00 5e
005a70c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7080 <.text+0x1a6080>:
  5a7080:	56                                              	push   esi
  5a7081:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7085:	8b c6                                           	mov    eax,esi
  5a7087:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a708c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7091:	74 08                                           	je     0x5a709b
  5a7093:	83 c8 ff                                        	or     eax,0xffffffff
  5a7096:	83 ca ff                                        	or     edx,0xffffffff
  5a7099:	5e                                              	pop    esi
  5a709a:	c3                                              	ret
  5a709b:	e8 f0 22 1c 00                                  	call   0x769390
  5a70a0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a70a2:	8b c8                                           	mov    ecx,eax
  5a70a4:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a70aa:	56                                              	push   esi
  5a70ab:	ff d0                                           	call   eax
  5a70ad:	8b c8                                           	mov    ecx,eax
  5a70af:	85 c9                                           	test   ecx,ecx
  5a70b1:	74 e0                                           	je     0x5a7093
  5a70b3:	8b 81 d0 00 00 00                               	mov    eax,DWORD PTR [ecx+0xd0]
  5a70b9:	8b 91 d4 00 00 00                               	mov    edx,DWORD PTR [ecx+0xd4]
  5a70bf:	5e                                              	pop    esi
  5a70c0:	c3                                              	ret
  5a70c1:	cc                                              	int3
  5a70c2:	cc                                              	int3
  5a70c3:	cc                                              	int3
  5a70c4:	cc                                              	int3
  5a70c5:	cc                                              	int3
  5a70c6:	cc                                              	int3
  5a70c7:	cc                                              	int3
  5a70c8:	cc                                              	int3
  5a70c9:	cc                                              	int3
  5a70ca:	cc                                              	int3
  5a70cb:	cc                                              	int3
  5a70cc:	cc                                              	int3
  5a70cd:	cc                                              	int3
  5a70ce:	cc                                              	int3
  5a70cf:	cc                                              	int3
