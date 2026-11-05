# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00758bf0 (ScriptCore.Route::Route_BeginFollowingRouteAnimationSpec)
Paired Ghidra pseudocode: 00758BF0_ScriptCore_Route_Route_BeginFollowingRouteAnimationSpec.c
Window: [0x00758bf0, 0x00758c30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00758c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00758bf0: 8b 44 24 18 8b 4c 24 08 8b 54 24 0c 50 83 ec 10
00758c00: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 28 89
00758c10: 48 08 89 50 0c 8b 44 24 18 50 e8 f1 e8 ff ff 83
00758c20: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00758bf0 <.text+0x357bf0>:
  758bf0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  758bf4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  758bf8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  758bfc:	50                                              	push   eax
  758bfd:	83 ec 10                                        	sub    esp,0x10
  758c00:	8b c4                                           	mov    eax,esp
  758c02:	89 08                                           	mov    DWORD PTR [eax],ecx
  758c04:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  758c08:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  758c0b:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  758c0f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  758c12:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  758c15:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  758c19:	50                                              	push   eax
  758c1a:	e8 f1 e8 ff ff                                  	call   0x757510
  758c1f:	83 c4 18                                        	add    esp,0x18
  758c22:	c3                                              	ret
  758c23:	cc                                              	int3
  758c24:	cc                                              	int3
  758c25:	cc                                              	int3
  758c26:	cc                                              	int3
  758c27:	cc                                              	int3
  758c28:	cc                                              	int3
  758c29:	cc                                              	int3
  758c2a:	cc                                              	int3
  758c2b:	cc                                              	int3
  758c2c:	cc                                              	int3
  758c2d:	cc                                              	int3
  758c2e:	cc                                              	int3
  758c2f:	cc                                              	int3
