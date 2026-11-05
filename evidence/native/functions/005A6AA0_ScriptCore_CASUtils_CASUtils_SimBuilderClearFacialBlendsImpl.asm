# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6aa0 (ScriptCore.CASUtils::CASUtils_SimBuilderClearFacialBlendsImpl)
Paired Ghidra pseudocode: 005A6AA0_ScriptCore_CASUtils_CASUtils_SimBuilderClearFacialBlendsImpl.c
Window: [0x005a6aa0, 0x005a6ae0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6aa0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6ab0: 35 75 1e e8 d8 28 1c 00 8b 10 8b c8 8b 82 cc 00
005a6ac0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 cf d0 03
005a6ad0: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6aa0 <.text+0x1a5aa0>:
  5a6aa0:	56                                              	push   esi
  5a6aa1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6aa5:	8b c6                                           	mov    eax,esi
  5a6aa7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6aac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6ab1:	75 1e                                           	jne    0x5a6ad1
  5a6ab3:	e8 d8 28 1c 00                                  	call   0x769390
  5a6ab8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6aba:	8b c8                                           	mov    ecx,eax
  5a6abc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6ac2:	56                                              	push   esi
  5a6ac3:	ff d0                                           	call   eax
  5a6ac5:	85 c0                                           	test   eax,eax
  5a6ac7:	74 08                                           	je     0x5a6ad1
  5a6ac9:	8b c8                                           	mov    ecx,eax
  5a6acb:	5e                                              	pop    esi
  5a6acc:	e9 cf d0 03 00                                  	jmp    0x5e3ba0
  5a6ad1:	5e                                              	pop    esi
  5a6ad2:	c3                                              	ret
  5a6ad3:	cc                                              	int3
  5a6ad4:	cc                                              	int3
  5a6ad5:	cc                                              	int3
  5a6ad6:	cc                                              	int3
  5a6ad7:	cc                                              	int3
  5a6ad8:	cc                                              	int3
  5a6ad9:	cc                                              	int3
  5a6ada:	cc                                              	int3
  5a6adb:	cc                                              	int3
  5a6adc:	cc                                              	int3
  5a6add:	cc                                              	int3
  5a6ade:	cc                                              	int3
  5a6adf:	cc                                              	int3
