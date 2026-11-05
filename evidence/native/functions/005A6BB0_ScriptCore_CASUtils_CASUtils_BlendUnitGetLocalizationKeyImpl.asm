# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6bb0 (ScriptCore.CASUtils::CASUtils_BlendUnitGetLocalizationKeyImpl)
Paired Ghidra pseudocode: 005A6BB0_ScriptCore_CASUtils_CASUtils_BlendUnitGetLocalizationKeyImpl.c
Window: [0x005a6bb0, 0x005a6bf0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6bb0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6bc0: 35 74 06 33 c0 33 d2 5e c3 e8 c2 27 1c 00 8b 10
005a6bd0: 8b c8 8b 82 cc 00 00 00 56 ff d0 8b c8 85 c9 74
005a6be0: e2 8b 41 48 8b 51 4c 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6bb0 <.text+0x1a5bb0>:
  5a6bb0:	56                                              	push   esi
  5a6bb1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6bb5:	8b c6                                           	mov    eax,esi
  5a6bb7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6bbc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6bc1:	74 06                                           	je     0x5a6bc9
  5a6bc3:	33 c0                                           	xor    eax,eax
  5a6bc5:	33 d2                                           	xor    edx,edx
  5a6bc7:	5e                                              	pop    esi
  5a6bc8:	c3                                              	ret
  5a6bc9:	e8 c2 27 1c 00                                  	call   0x769390
  5a6bce:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6bd0:	8b c8                                           	mov    ecx,eax
  5a6bd2:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6bd8:	56                                              	push   esi
  5a6bd9:	ff d0                                           	call   eax
  5a6bdb:	8b c8                                           	mov    ecx,eax
  5a6bdd:	85 c9                                           	test   ecx,ecx
  5a6bdf:	74 e2                                           	je     0x5a6bc3
  5a6be1:	8b 41 48                                        	mov    eax,DWORD PTR [ecx+0x48]
  5a6be4:	8b 51 4c                                        	mov    edx,DWORD PTR [ecx+0x4c]
  5a6be7:	5e                                              	pop    esi
  5a6be8:	c3                                              	ret
  5a6be9:	cc                                              	int3
  5a6bea:	cc                                              	int3
  5a6beb:	cc                                              	int3
  5a6bec:	cc                                              	int3
  5a6bed:	cc                                              	int3
  5a6bee:	cc                                              	int3
  5a6bef:	cc                                              	int3
