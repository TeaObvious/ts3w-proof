# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078b190 (ScriptCore.World::World_GetRoomIdAtPosImpl)
Paired Ghidra pseudocode: 0078B190_ScriptCore_World_World_GetRoomIdAtPosImpl.c
Window: [0x0078b190, 0x0078b1e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078b1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078b190: 8b 0d c4 db 1e 01 85 c9 74 19 d9 44 24 0c 83 ec
0078b1a0: 08 d9 5c 24 04 d9 44 24 0c d9 1c 24 e8 1f d6 4d
0078b1b0: 00 eb 02 33 c0 8b 4c 24 10 8b 54 24 04 6a 00 51
0078b1c0: 83 ec 0c 8b cc 89 11 8b 54 24 1c 89 51 04 8b 54
0078b1d0: 24 20 50 89 51 08 e8 45 c1 ff ff 83 c4 18 c3 cc

LINEAR DISASSEMBLY
0078b190 <.text+0x38a190>:
  78b190:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78b196:	85 c9                                           	test   ecx,ecx
  78b198:	74 19                                           	je     0x78b1b3
  78b19a:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  78b19e:	83 ec 08                                        	sub    esp,0x8
  78b1a1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78b1a5:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  78b1a9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78b1ac:	e8 1f d6 4d 00                                  	call   0xc687d0
  78b1b1:	eb 02                                           	jmp    0x78b1b5
  78b1b3:	33 c0                                           	xor    eax,eax
  78b1b5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78b1b9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78b1bd:	6a 00                                           	push   0x0
  78b1bf:	51                                              	push   ecx
  78b1c0:	83 ec 0c                                        	sub    esp,0xc
  78b1c3:	8b cc                                           	mov    ecx,esp
  78b1c5:	89 11                                           	mov    DWORD PTR [ecx],edx
  78b1c7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  78b1cb:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  78b1ce:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  78b1d2:	50                                              	push   eax
  78b1d3:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  78b1d6:	e8 45 c1 ff ff                                  	call   0x787320
  78b1db:	83 c4 18                                        	add    esp,0x18
  78b1de:	c3                                              	ret
  78b1df:	cc                                              	int3
