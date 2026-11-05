# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787110 (ScriptCore.World::World_IsPosInsideGreenhouseImpl)
Paired Ghidra pseudocode: 00787110_ScriptCore_World_World_IsPosInsideGreenhouseImpl.c
Window: [0x00787110, 0x007871a0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x007871a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787110: 8b 0d c4 db 1e 01 83 ec 0c 85 c9 56 74 74 d9 44
00787120: 24 1c 83 ec 08 d9 5c 24 04 d9 44 24 1c d9 1c 24
00787130: e8 9b 16 4e 00 8b f0 85 f6 74 57 d9 05 18 b2 fa
00787140: 00 8d 44 24 08 d9 54 24 04 50 d9 5c 24 0c 8d 4c
00787150: 24 08 d9 44 24 20 51 83 ec 08 d9 5c 24 04 8b ce
00787160: d9 44 24 24 c7 44 24 1c 00 00 00 00 d9 1c 24 e8
00787170: cc fc 32 00 d9 44 24 08 83 ec 08 d9 5c 24 04 8b
00787180: ce d9 44 24 0c d9 1c 24 e8 13 c8 32 00 5e 83 c4
00787190: 0c c3 32 c0 5e 83 c4 0c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787110 <.text+0x386110>:
  787110:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  787116:	83 ec 0c                                        	sub    esp,0xc
  787119:	85 c9                                           	test   ecx,ecx
  78711b:	56                                              	push   esi
  78711c:	74 74                                           	je     0x787192
  78711e:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  787122:	83 ec 08                                        	sub    esp,0x8
  787125:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  787129:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  78712d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  787130:	e8 9b 16 4e 00                                  	call   0xc687d0
  787135:	8b f0                                           	mov    esi,eax
  787137:	85 f6                                           	test   esi,esi
  787139:	74 57                                           	je     0x787192
  78713b:	d9 05 18 b2 fa 00                               	fld    DWORD PTR ds:0xfab218
  787141:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  787145:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  787149:	50                                              	push   eax
  78714a:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  78714e:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  787152:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  787156:	51                                              	push   ecx
  787157:	83 ec 08                                        	sub    esp,0x8
  78715a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78715e:	8b ce                                           	mov    ecx,esi
  787160:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  787164:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  78716c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78716f:	e8 cc fc 32 00                                  	call   0xab6e40
  787174:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  787178:	83 ec 08                                        	sub    esp,0x8
  78717b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78717f:	8b ce                                           	mov    ecx,esi
  787181:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  787185:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  787188:	e8 13 c8 32 00                                  	call   0xab39a0
  78718d:	5e                                              	pop    esi
  78718e:	83 c4 0c                                        	add    esp,0xc
  787191:	c3                                              	ret
  787192:	32 c0                                           	xor    al,al
  787194:	5e                                              	pop    esi
  787195:	83 c4 0c                                        	add    esp,0xc
  787198:	c3                                              	ret
  787199:	cc                                              	int3
  78719a:	cc                                              	int3
  78719b:	cc                                              	int3
  78719c:	cc                                              	int3
  78719d:	cc                                              	int3
  78719e:	cc                                              	int3
  78719f:	cc                                              	int3
