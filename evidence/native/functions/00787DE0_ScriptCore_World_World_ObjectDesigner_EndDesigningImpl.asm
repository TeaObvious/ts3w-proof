# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787de0 (ScriptCore.World::World_ObjectDesigner_EndDesigningImpl)
Paired Ghidra pseudocode: 00787DE0_ScriptCore_World_World_ObjectDesigner_EndDesigningImpl.c
Window: [0x00787de0, 0x00787e10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787de0: e8 ab 15 fe ff 8b 4c 24 08 8b 10 8b 52 58 51 8b
00787df0: c8 ff d2 50 8b 44 24 08 50 e8 a2 84 3a 00 8b c8
00787e00: e8 0b b8 3a 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787de0 <.text+0x386de0>:
  787de0:	e8 ab 15 fe ff                                  	call   0x769390
  787de5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787de9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787deb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  787dee:	51                                              	push   ecx
  787def:	8b c8                                           	mov    ecx,eax
  787df1:	ff d2                                           	call   edx
  787df3:	50                                              	push   eax
  787df4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  787df8:	50                                              	push   eax
  787df9:	e8 a2 84 3a 00                                  	call   0xb302a0
  787dfe:	8b c8                                           	mov    ecx,eax
  787e00:	e8 0b b8 3a 00                                  	call   0xb33610
  787e05:	c3                                              	ret
  787e06:	cc                                              	int3
  787e07:	cc                                              	int3
  787e08:	cc                                              	int3
  787e09:	cc                                              	int3
  787e0a:	cc                                              	int3
  787e0b:	cc                                              	int3
  787e0c:	cc                                              	int3
  787e0d:	cc                                              	int3
  787e0e:	cc                                              	int3
  787e0f:	cc                                              	int3
