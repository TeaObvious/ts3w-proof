# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787e70 (ScriptCore.World::World_ObjectDesigner_SetPresetInfoImpl)
Paired Ghidra pseudocode: 00787E70_ScriptCore_World_World_ObjectDesigner_SetPresetInfoImpl.c
Window: [0x00787e70, 0x00787eb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787eb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787e70: 56 e8 2a 84 3a 00 8b f0 e8 13 15 fe ff 85 f6 74
00787e80: 24 85 c0 74 20 8b 4c 24 10 8b 10 8b 52 58 51 8b
00787e90: c8 ff d2 8b 4c 24 08 50 8b 44 24 10 50 51 8b ce
00787ea0: e8 fb 9f 3a 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787e70 <.text+0x386e70>:
  787e70:	56                                              	push   esi
  787e71:	e8 2a 84 3a 00                                  	call   0xb302a0
  787e76:	8b f0                                           	mov    esi,eax
  787e78:	e8 13 15 fe ff                                  	call   0x769390
  787e7d:	85 f6                                           	test   esi,esi
  787e7f:	74 24                                           	je     0x787ea5
  787e81:	85 c0                                           	test   eax,eax
  787e83:	74 20                                           	je     0x787ea5
  787e85:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  787e89:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787e8b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  787e8e:	51                                              	push   ecx
  787e8f:	8b c8                                           	mov    ecx,eax
  787e91:	ff d2                                           	call   edx
  787e93:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787e97:	50                                              	push   eax
  787e98:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  787e9c:	50                                              	push   eax
  787e9d:	51                                              	push   ecx
  787e9e:	8b ce                                           	mov    ecx,esi
  787ea0:	e8 fb 9f 3a 00                                  	call   0xb31ea0
  787ea5:	5e                                              	pop    esi
  787ea6:	c3                                              	ret
  787ea7:	cc                                              	int3
  787ea8:	cc                                              	int3
  787ea9:	cc                                              	int3
  787eaa:	cc                                              	int3
  787eab:	cc                                              	int3
  787eac:	cc                                              	int3
  787ead:	cc                                              	int3
  787eae:	cc                                              	int3
  787eaf:	cc                                              	int3
