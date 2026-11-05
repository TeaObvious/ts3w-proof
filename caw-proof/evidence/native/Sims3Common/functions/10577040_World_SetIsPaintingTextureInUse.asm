# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577040 (World_SetIsPaintingTextureInUse)
Paired Ghidra pseudocode: 10577040_World_SetIsPaintingTextureInUse.c
Window: [0x10577040, 0x10577090) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577040: 83 ec 10 e8 38 61 25 00 85 c0 74 35 8b 4c 24 1c
10577050: 8b 54 24 20 89 0c 24 8b 4c 24 14 89 54 24 04 8b
10577060: 54 24 18 89 4c 24 08 8b 4c 24 28 51 89 54 24 10
10577070: 8b 54 24 28 52 8d 4c 24 08 51 8b c8 e8 7f 4f 25
10577080: 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577040 <.text+0x576040>:
10577040:	83 ec 10                                        	sub    esp,0x10
10577043:	e8 38 61 25 00                                  	call   0x107cd180
10577048:	85 c0                                           	test   eax,eax
1057704a:	74 35                                           	je     0x10577081
1057704c:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10577050:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10577054:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10577057:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057705b:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1057705f:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10577063:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10577067:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1057706b:	51                                              	push   ecx
1057706c:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10577070:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10577074:	52                                              	push   edx
10577075:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10577079:	51                                              	push   ecx
1057707a:	8b c8                                           	mov    ecx,eax
1057707c:	e8 7f 4f 25 00                                  	call   0x107cc000
10577081:	83 c4 10                                        	add    esp,0x10
10577084:	c3                                              	ret
10577085:	cc                                              	int3
10577086:	cc                                              	int3
10577087:	cc                                              	int3
10577088:	cc                                              	int3
10577089:	cc                                              	int3
1057708a:	cc                                              	int3
1057708b:	cc                                              	int3
1057708c:	cc                                              	int3
1057708d:	cc                                              	int3
1057708e:	cc                                              	int3
1057708f:	cc                                              	int3
