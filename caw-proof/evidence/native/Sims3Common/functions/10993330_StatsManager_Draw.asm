# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993330 (StatsManager_Draw)
Paired Ghidra pseudocode: 10993330_StatsManager_Draw.c
Window: [0x10993330, 0x109933c0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x109933c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993330: 83 ec 10 b8 44 82 ca 10 89 04 24 89 44 24 04 a1
10993340: 70 61 c7 10 8b 48 0c 8b 51 08 56 52 68 50 76 b9
10993350: 10 8d 44 24 0c 68 4c b6 b5 10 50 c7 44 24 20 3c
10993360: 76 b9 10 c7 44 24 1c 45 82 ca 10 e8 10 bd 67 ff
10993370: d9 44 24 2c 8b 74 24 14 d9 5c 24 0c 8b 4c 24 18
10993380: d9 44 24 28 83 c4 08 2b ce d9 1c 24 51 56 e8 cd
10993390: a3 fe ff 8b 54 24 1c 2b d6 83 c4 10 83 fa 01 7e
109933a0: 0d 85 f6 74 09 56 e8 e5 5a f8 ff 83 c4 04 5e 83
109933b0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993330 <.text+0x992330>:
10993330:	83 ec 10                                        	sub    esp,0x10
10993333:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10993338:	89 04 24                                        	mov    DWORD PTR [esp],eax
1099333b:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1099333f:	a1 70 61 c7 10                                  	mov    eax,ds:0x10c76170
10993344:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
10993347:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
1099334a:	56                                              	push   esi
1099334b:	52                                              	push   edx
1099334c:	68 50 76 b9 10                                  	push   0x10b97650
10993351:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10993355:	68 4c b6 b5 10                                  	push   0x10b5b64c
1099335a:	50                                              	push   eax
1099335b:	c7 44 24 20 3c 76 b9 10                         	mov    DWORD PTR [esp+0x20],0x10b9763c
10993363:	c7 44 24 1c 45 82 ca 10                         	mov    DWORD PTR [esp+0x1c],0x10ca8245
1099336b:	e8 10 bd 67 ff                                  	call   0x1000f080
10993370:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
10993374:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
10993378:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1099337c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10993380:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10993384:	83 c4 08                                        	add    esp,0x8
10993387:	2b ce                                           	sub    ecx,esi
10993389:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1099338c:	51                                              	push   ecx
1099338d:	56                                              	push   esi
1099338e:	e8 cd a3 fe ff                                  	call   0x1097d760
10993393:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10993397:	2b d6                                           	sub    edx,esi
10993399:	83 c4 10                                        	add    esp,0x10
1099339c:	83 fa 01                                        	cmp    edx,0x1
1099339f:	7e 0d                                           	jle    0x109933ae
109933a1:	85 f6                                           	test   esi,esi
109933a3:	74 09                                           	je     0x109933ae
109933a5:	56                                              	push   esi
109933a6:	e8 e5 5a f8 ff                                  	call   0x10918e90
109933ab:	83 c4 04                                        	add    esp,0x4
109933ae:	5e                                              	pop    esi
109933af:	83 c4 10                                        	add    esp,0x10
109933b2:	c3                                              	ret
109933b3:	cc                                              	int3
109933b4:	cc                                              	int3
109933b5:	cc                                              	int3
109933b6:	cc                                              	int3
109933b7:	cc                                              	int3
109933b8:	cc                                              	int3
109933b9:	cc                                              	int3
109933ba:	cc                                              	int3
109933bb:	cc                                              	int3
109933bc:	cc                                              	int3
109933bd:	cc                                              	int3
109933be:	cc                                              	int3
109933bf:	cc                                              	int3
