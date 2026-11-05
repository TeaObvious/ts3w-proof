# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009f3c60 (DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_IsConnectedToInternet)
Paired Ghidra pseudocode: 009F3C60_DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_IsConnectedToInternet.c
Window: [0x009f3c60, 0x009f3c90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x009f3c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009f3c60: 51 6a 00 8d 44 24 04 50 c7 44 24 08 00 00 00 00
009f3c70: ff 15 70 69 f9 00 85 c0 75 0a ff 15 84 63 f9 00
009f3c80: 32 c0 59 c3 b0 01 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009f3c60 <.text+0x5f2c60>:
  9f3c60:	51                                              	push   ecx
  9f3c61:	6a 00                                           	push   0x0
  9f3c63:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  9f3c67:	50                                              	push   eax
  9f3c68:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  9f3c70:	ff 15 70 69 f9 00                               	call   DWORD PTR ds:0xf96970
  9f3c76:	85 c0                                           	test   eax,eax
  9f3c78:	75 0a                                           	jne    0x9f3c84
  9f3c7a:	ff 15 84 63 f9 00                               	call   DWORD PTR ds:0xf96384
  9f3c80:	32 c0                                           	xor    al,al
  9f3c82:	59                                              	pop    ecx
  9f3c83:	c3                                              	ret
  9f3c84:	b0 01                                           	mov    al,0x1
  9f3c86:	59                                              	pop    ecx
  9f3c87:	c3                                              	ret
  9f3c88:	cc                                              	int3
  9f3c89:	cc                                              	int3
  9f3c8a:	cc                                              	int3
  9f3c8b:	cc                                              	int3
  9f3c8c:	cc                                              	int3
  9f3c8d:	cc                                              	int3
  9f3c8e:	cc                                              	int3
  9f3c8f:	cc                                              	int3
