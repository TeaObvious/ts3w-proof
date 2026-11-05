# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6a30 (ScriptCore.UserToolUtils::UserToolUtils_SetElectronicsPriceScaleImpl)
Paired Ghidra pseudocode: 00CE6A30_ScriptCore_UserToolUtils_UserToolUtils_SetElectronicsPriceScaleImpl.c
Window: [0x00ce6a30, 0x00ce6a50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6a30: a1 18 e7 1e 01 85 c0 74 14 8b 48 08 85 c9 74 0d
00ce6a40: d9 44 24 04 51 d9 1c 24 e8 33 8c 00 00 c3 cc cc

LINEAR DISASSEMBLY
00ce6a30 <.text+0x8e5a30>:
  ce6a30:	a1 18 e7 1e 01                                  	mov    eax,ds:0x11ee718
  ce6a35:	85 c0                                           	test   eax,eax
  ce6a37:	74 14                                           	je     0xce6a4d
  ce6a39:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce6a3c:	85 c9                                           	test   ecx,ecx
  ce6a3e:	74 0d                                           	je     0xce6a4d
  ce6a40:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  ce6a44:	51                                              	push   ecx
  ce6a45:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ce6a48:	e8 33 8c 00 00                                  	call   0xcef680
  ce6a4d:	c3                                              	ret
  ce6a4e:	cc                                              	int3
  ce6a4f:	cc                                              	int3
