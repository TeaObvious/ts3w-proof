# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00757070 (ScriptCore.Route::Route_UpdateRouteAnimationSpecMult)
Paired Ghidra pseudocode: 00757070_ScriptCore_Route_Route_UpdateRouteAnimationSpecMult.c
Window: [0x00757070, 0x007570c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007570c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00757070: 8b 44 24 24 8b 4c 24 20 8b 54 24 10 50 51 8b 4c
00757080: 24 1c 83 ec 10 8b c4 89 10 8b 54 24 30 89 48 04
00757090: 8b 4c 24 34 89 50 08 8b 54 24 24 89 48 0c 8b 44
007570a0: 24 20 8b 4c 24 1c 52 50 51 e8 72 cd ff ff 83 c4
007570b0: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00757070 <.text+0x356070>:
  757070:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  757074:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  757078:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  75707c:	50                                              	push   eax
  75707d:	51                                              	push   ecx
  75707e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  757082:	83 ec 10                                        	sub    esp,0x10
  757085:	8b c4                                           	mov    eax,esp
  757087:	89 10                                           	mov    DWORD PTR [eax],edx
  757089:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  75708d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  757090:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  757094:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  757097:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  75709b:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  75709e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7570a2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7570a6:	52                                              	push   edx
  7570a7:	50                                              	push   eax
  7570a8:	51                                              	push   ecx
  7570a9:	e8 72 cd ff ff                                  	call   0x753e20
  7570ae:	83 c4 24                                        	add    esp,0x24
  7570b1:	c3                                              	ret
  7570b2:	cc                                              	int3
  7570b3:	cc                                              	int3
  7570b4:	cc                                              	int3
  7570b5:	cc                                              	int3
  7570b6:	cc                                              	int3
  7570b7:	cc                                              	int3
  7570b8:	cc                                              	int3
  7570b9:	cc                                              	int3
  7570ba:	cc                                              	int3
  7570bb:	cc                                              	int3
  7570bc:	cc                                              	int3
  7570bd:	cc                                              	int3
  7570be:	cc                                              	int3
  7570bf:	cc                                              	int3
