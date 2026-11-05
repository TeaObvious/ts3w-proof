# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00758c30 (ScriptCore.Route::Route_BeginFollowingRouteAnimationSpecMult)
Paired Ghidra pseudocode: 00758C30_ScriptCore_Route_Route_BeginFollowingRouteAnimationSpecMult.c
Window: [0x00758c30, 0x00758c80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00758c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00758c30: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 8b 44 24
00758c40: 1c 51 8b 4c 24 10 52 8b 54 24 18 50 83 ec 10 8b
00758c50: c4 89 08 8b 4c 24 30 89 50 04 8b 54 24 34 89 48
00758c60: 08 89 50 0c 8b 44 24 24 50 e8 22 e9 ff ff 83 c4
00758c70: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00758c30 <.text+0x357c30>:
  758c30:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  758c34:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  758c38:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  758c3c:	50                                              	push   eax
  758c3d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  758c41:	51                                              	push   ecx
  758c42:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  758c46:	52                                              	push   edx
  758c47:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  758c4b:	50                                              	push   eax
  758c4c:	83 ec 10                                        	sub    esp,0x10
  758c4f:	8b c4                                           	mov    eax,esp
  758c51:	89 08                                           	mov    DWORD PTR [eax],ecx
  758c53:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  758c57:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  758c5a:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  758c5e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  758c61:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  758c64:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  758c68:	50                                              	push   eax
  758c69:	e8 22 e9 ff ff                                  	call   0x757590
  758c6e:	83 c4 24                                        	add    esp,0x24
  758c71:	c3                                              	ret
  758c72:	cc                                              	int3
  758c73:	cc                                              	int3
  758c74:	cc                                              	int3
  758c75:	cc                                              	int3
  758c76:	cc                                              	int3
  758c77:	cc                                              	int3
  758c78:	cc                                              	int3
  758c79:	cc                                              	int3
  758c7a:	cc                                              	int3
  758c7b:	cc                                              	int3
  758c7c:	cc                                              	int3
  758c7d:	cc                                              	int3
  758c7e:	cc                                              	int3
  758c7f:	cc                                              	int3
