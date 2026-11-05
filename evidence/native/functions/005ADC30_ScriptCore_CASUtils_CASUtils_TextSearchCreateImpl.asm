# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005adc30 (ScriptCore.CASUtils::CASUtils_TextSearchCreateImpl)
Paired Ghidra pseudocode: 005ADC30_ScriptCore_CASUtils_CASUtils_TextSearchCreateImpl.c
Window: [0x005adc30, 0x005adc60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x005adc60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005adc30: 6a 00 6a 00 6a 00 6a 00 68 18 fa fd 00 68 90 00
005adc40: 00 00 e8 b9 68 f3 ff 83 c4 18 85 c0 74 0a 8b c8
005adc50: e8 8b fd ff ff 8b 00 c3 33 c0 8b 00 c3 cc cc cc

LINEAR DISASSEMBLY
005adc30 <.text+0x1acc30>:
  5adc30:	6a 00                                           	push   0x0
  5adc32:	6a 00                                           	push   0x0
  5adc34:	6a 00                                           	push   0x0
  5adc36:	6a 00                                           	push   0x0
  5adc38:	68 18 fa fd 00                                  	push   0xfdfa18
  5adc3d:	68 90 00 00 00                                  	push   0x90
  5adc42:	e8 b9 68 f3 ff                                  	call   0x4e4500
  5adc47:	83 c4 18                                        	add    esp,0x18
  5adc4a:	85 c0                                           	test   eax,eax
  5adc4c:	74 0a                                           	je     0x5adc58
  5adc4e:	8b c8                                           	mov    ecx,eax
  5adc50:	e8 8b fd ff ff                                  	call   0x5ad9e0
  5adc55:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5adc57:	c3                                              	ret
  5adc58:	33 c0                                           	xor    eax,eax
  5adc5a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5adc5c:	c3                                              	ret
  5adc5d:	cc                                              	int3
  5adc5e:	cc                                              	int3
  5adc5f:	cc                                              	int3
