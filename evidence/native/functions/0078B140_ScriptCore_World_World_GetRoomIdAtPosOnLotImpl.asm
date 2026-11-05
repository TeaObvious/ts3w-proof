# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078b140 (ScriptCore.World::World_GetRoomIdAtPosOnLotImpl)
Paired Ghidra pseudocode: 0078B140_ScriptCore_World_World_GetRoomIdAtPosOnLotImpl.c
Window: [0x0078b140, 0x0078b190) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078b190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078b140: 8b 0d c4 db 1e 01 85 c9 74 13 8b 44 24 08 8b 54
0078b150: 24 04 6a 00 50 52 e8 b5 76 4d 00 eb 02 33 c0 8b
0078b160: 4c 24 18 8b 54 24 0c 6a 01 51 83 ec 0c 8b cc 89
0078b170: 11 8b 54 24 24 89 51 04 8b 54 24 28 50 89 51 08
0078b180: e8 9b c1 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078b140 <.text+0x38a140>:
  78b140:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78b146:	85 c9                                           	test   ecx,ecx
  78b148:	74 13                                           	je     0x78b15d
  78b14a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78b14e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78b152:	6a 00                                           	push   0x0
  78b154:	50                                              	push   eax
  78b155:	52                                              	push   edx
  78b156:	e8 b5 76 4d 00                                  	call   0xc62810
  78b15b:	eb 02                                           	jmp    0x78b15f
  78b15d:	33 c0                                           	xor    eax,eax
  78b15f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78b163:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78b167:	6a 01                                           	push   0x1
  78b169:	51                                              	push   ecx
  78b16a:	83 ec 0c                                        	sub    esp,0xc
  78b16d:	8b cc                                           	mov    ecx,esp
  78b16f:	89 11                                           	mov    DWORD PTR [ecx],edx
  78b171:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  78b175:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  78b178:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78b17c:	50                                              	push   eax
  78b17d:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  78b180:	e8 9b c1 ff ff                                  	call   0x787320
  78b185:	83 c4 18                                        	add    esp,0x18
  78b188:	c3                                              	ret
  78b189:	cc                                              	int3
  78b18a:	cc                                              	int3
  78b18b:	cc                                              	int3
  78b18c:	cc                                              	int3
  78b18d:	cc                                              	int3
  78b18e:	cc                                              	int3
  78b18f:	cc                                              	int3
