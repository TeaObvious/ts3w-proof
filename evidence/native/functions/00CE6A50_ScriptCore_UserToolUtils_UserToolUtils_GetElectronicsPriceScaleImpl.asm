# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6a50 (ScriptCore.UserToolUtils::UserToolUtils_GetElectronicsPriceScaleImpl)
Paired Ghidra pseudocode: 00CE6A50_ScriptCore_UserToolUtils_UserToolUtils_GetElectronicsPriceScaleImpl.c
Window: [0x00ce6a50, 0x00ce6a70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6a50: a1 18 e7 1e 01 85 c0 74 0c 8b 48 08 85 c9 74 05
00ce6a60: e9 3b 8c 00 00 d9 e8 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6a50 <.text+0x8e5a50>:
  ce6a50:	a1 18 e7 1e 01                                  	mov    eax,ds:0x11ee718
  ce6a55:	85 c0                                           	test   eax,eax
  ce6a57:	74 0c                                           	je     0xce6a65
  ce6a59:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce6a5c:	85 c9                                           	test   ecx,ecx
  ce6a5e:	74 05                                           	je     0xce6a65
  ce6a60:	e9 3b 8c 00 00                                  	jmp    0xcef6a0
  ce6a65:	d9 e8                                           	fld1
  ce6a67:	c3                                              	ret
  ce6a68:	cc                                              	int3
  ce6a69:	cc                                              	int3
  ce6a6a:	cc                                              	int3
  ce6a6b:	cc                                              	int3
  ce6a6c:	cc                                              	int3
  ce6a6d:	cc                                              	int3
  ce6a6e:	cc                                              	int3
  ce6a6f:	cc                                              	int3
