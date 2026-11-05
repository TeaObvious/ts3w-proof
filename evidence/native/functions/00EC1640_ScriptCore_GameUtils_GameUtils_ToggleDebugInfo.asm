# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1640 (ScriptCore.GameUtils::GameUtils_ToggleDebugInfo)
Paired Ghidra pseudocode: 00EC1640_ScriptCore_GameUtils_GameUtils_ToggleDebugInfo.c
Window: [0x00ec1640, 0x00ec1660) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1640: 53 8b 5c 24 08 53 e8 35 ed ff ff 83 c4 04 e8 1d
00ec1650: 6b 82 ff 85 c0 74 06 88 98 6f 02 00 00 5b c3 cc

LINEAR DISASSEMBLY
00ec1640 <.text+0xac0640>:
  ec1640:	53                                              	push   ebx
  ec1641:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  ec1645:	53                                              	push   ebx
  ec1646:	e8 35 ed ff ff                                  	call   0xec0380
  ec164b:	83 c4 04                                        	add    esp,0x4
  ec164e:	e8 1d 6b 82 ff                                  	call   0x6e8170
  ec1653:	85 c0                                           	test   eax,eax
  ec1655:	74 06                                           	je     0xec165d
  ec1657:	88 98 6f 02 00 00                               	mov    BYTE PTR [eax+0x26f],bl
  ec165d:	5b                                              	pop    ebx
  ec165e:	c3                                              	ret
  ec165f:	cc                                              	int3
