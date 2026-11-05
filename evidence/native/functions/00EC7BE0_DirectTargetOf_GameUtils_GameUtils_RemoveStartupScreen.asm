# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec7be0 (DirectTargetOf_GameUtils_GameUtils_RemoveStartupScreen)
Paired Ghidra pseudocode: 00EC7BE0_DirectTargetOf_GameUtils_GameUtils_RemoveStartupScreen.c
Window: [0x00ec7be0, 0x00ec7c00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec7c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec7be0: e8 ab 33 64 ff 85 c0 74 10 8b 10 6a 00 8b c8 8b
00ec7bf0: 42 1c 68 70 7b ec 00 ff d0 e9 d2 f3 ff ff cc cc

LINEAR DISASSEMBLY
00ec7be0 <.text+0xac6be0>:
  ec7be0:	e8 ab 33 64 ff                                  	call   0x50af90
  ec7be5:	85 c0                                           	test   eax,eax
  ec7be7:	74 10                                           	je     0xec7bf9
  ec7be9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec7beb:	6a 00                                           	push   0x0
  ec7bed:	8b c8                                           	mov    ecx,eax
  ec7bef:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec7bf2:	68 70 7b ec 00                                  	push   0xec7b70
  ec7bf7:	ff d0                                           	call   eax
  ec7bf9:	e9 d2 f3 ff ff                                  	jmp    0xec6fd0
  ec7bfe:	cc                                              	int3
  ec7bff:	cc                                              	int3
