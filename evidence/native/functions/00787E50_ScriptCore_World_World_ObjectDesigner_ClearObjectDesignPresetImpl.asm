# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787e50 (ScriptCore.World::World_ObjectDesigner_ClearObjectDesignPresetImpl)
Paired Ghidra pseudocode: 00787E50_ScriptCore_World_World_ObjectDesigner_ClearObjectDesignPresetImpl.c
Window: [0x00787e50, 0x00787e70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787e50: e8 4b 84 3a 00 85 c0 74 11 8b 4c 24 08 8b 54 24
00787e60: 04 51 52 8b c8 e8 c6 9f 3a 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00787e50 <.text+0x386e50>:
  787e50:	e8 4b 84 3a 00                                  	call   0xb302a0
  787e55:	85 c0                                           	test   eax,eax
  787e57:	74 11                                           	je     0x787e6a
  787e59:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787e5d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  787e61:	51                                              	push   ecx
  787e62:	52                                              	push   edx
  787e63:	8b c8                                           	mov    ecx,eax
  787e65:	e8 c6 9f 3a 00                                  	call   0xb31e30
  787e6a:	c3                                              	ret
  787e6b:	cc                                              	int3
  787e6c:	cc                                              	int3
  787e6d:	cc                                              	int3
  787e6e:	cc                                              	int3
  787e6f:	cc                                              	int3
