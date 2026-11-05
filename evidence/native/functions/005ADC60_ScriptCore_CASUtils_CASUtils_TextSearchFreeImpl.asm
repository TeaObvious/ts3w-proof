# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005adc60 (ScriptCore.CASUtils::CASUtils_TextSearchFreeImpl)
Paired Ghidra pseudocode: 005ADC60_ScriptCore_CASUtils_CASUtils_TextSearchFreeImpl.c
Window: [0x005adc60, 0x005adca0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005adca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005adc60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005adc70: 35 75 28 e8 18 b7 1b 00 8b 10 8b c8 8b 82 cc 00
005adc80: 00 00 56 ff d0 8b f0 85 f6 74 10 8b ce e8 2e fe
005adc90: ff ff 56 e8 48 68 f3 ff 83 c4 04 5e c3 cc cc cc

LINEAR DISASSEMBLY
005adc60 <.text+0x1acc60>:
  5adc60:	56                                              	push   esi
  5adc61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5adc65:	8b c6                                           	mov    eax,esi
  5adc67:	25 00 00 00 ff                                  	and    eax,0xff000000
  5adc6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5adc71:	75 28                                           	jne    0x5adc9b
  5adc73:	e8 18 b7 1b 00                                  	call   0x769390
  5adc78:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5adc7a:	8b c8                                           	mov    ecx,eax
  5adc7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5adc82:	56                                              	push   esi
  5adc83:	ff d0                                           	call   eax
  5adc85:	8b f0                                           	mov    esi,eax
  5adc87:	85 f6                                           	test   esi,esi
  5adc89:	74 10                                           	je     0x5adc9b
  5adc8b:	8b ce                                           	mov    ecx,esi
  5adc8d:	e8 2e fe ff ff                                  	call   0x5adac0
  5adc92:	56                                              	push   esi
  5adc93:	e8 48 68 f3 ff                                  	call   0x4e44e0
  5adc98:	83 c4 04                                        	add    esp,0x4
  5adc9b:	5e                                              	pop    esi
  5adc9c:	c3                                              	ret
  5adc9d:	cc                                              	int3
  5adc9e:	cc                                              	int3
  5adc9f:	cc                                              	int3
