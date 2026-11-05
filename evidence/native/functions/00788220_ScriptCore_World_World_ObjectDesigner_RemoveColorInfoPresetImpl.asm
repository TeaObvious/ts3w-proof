# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788220 (ScriptCore.World::World_ObjectDesigner_RemoveColorInfoPresetImpl)
Paired Ghidra pseudocode: 00788220_ScriptCore_World_World_ObjectDesigner_RemoveColorInfoPresetImpl.c
Window: [0x00788220, 0x00788260) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788220: 83 ec 10 e8 78 80 3a 00 8b 4c 24 1c 8b 54 24 20
00788230: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
00788240: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 6e 8b
00788250: 3a 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788220 <.text+0x387220>:
  788220:	83 ec 10                                        	sub    esp,0x10
  788223:	e8 78 80 3a 00                                  	call   0xb302a0
  788228:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  78822c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  788230:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  788233:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  788237:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  78823b:	8d 0c 24                                        	lea    ecx,[esp]
  78823e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  788242:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  788246:	51                                              	push   ecx
  788247:	8b c8                                           	mov    ecx,eax
  788249:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  78824d:	e8 6e 8b 3a 00                                  	call   0xb30dc0
  788252:	83 c4 10                                        	add    esp,0x10
  788255:	c3                                              	ret
  788256:	cc                                              	int3
  788257:	cc                                              	int3
  788258:	cc                                              	int3
  788259:	cc                                              	int3
  78825a:	cc                                              	int3
  78825b:	cc                                              	int3
  78825c:	cc                                              	int3
  78825d:	cc                                              	int3
  78825e:	cc                                              	int3
  78825f:	cc                                              	int3
