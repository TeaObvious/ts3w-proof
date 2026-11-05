# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109933f0 (StopWatch_Start)
Paired Ghidra pseudocode: 109933F0_StopWatch_Start.c
Window: [0x109933f0, 0x10993430) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109933f0: 83 ec 08 56 8b 74 24 10 8b 06 0b 46 04 75 2a 83
10993400: 7e 10 01 75 0c 0f 31 89 06 89 56 04 5e 83 c4 08
10993410: c3 8d 4c 24 04 51 ff 15 a4 b2 aa 10 8b 54 24 04
10993420: 8b 44 24 08 89 16 89 46 04 5e 83 c4 08 c3 cc cc

LINEAR DISASSEMBLY
109933f0 <.text+0x9923f0>:
109933f0:	83 ec 08                                        	sub    esp,0x8
109933f3:	56                                              	push   esi
109933f4:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
109933f8:	8b 06                                           	mov    eax,DWORD PTR [esi]
109933fa:	0b 46 04                                        	or     eax,DWORD PTR [esi+0x4]
109933fd:	75 2a                                           	jne    0x10993429
109933ff:	83 7e 10 01                                     	cmp    DWORD PTR [esi+0x10],0x1
10993403:	75 0c                                           	jne    0x10993411
10993405:	0f 31                                           	rdtsc
10993407:	89 06                                           	mov    DWORD PTR [esi],eax
10993409:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1099340c:	5e                                              	pop    esi
1099340d:	83 c4 08                                        	add    esp,0x8
10993410:	c3                                              	ret
10993411:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10993415:	51                                              	push   ecx
10993416:	ff 15 a4 b2 aa 10                               	call   DWORD PTR ds:0x10aab2a4
1099341c:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10993420:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10993424:	89 16                                           	mov    DWORD PTR [esi],edx
10993426:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10993429:	5e                                              	pop    esi
1099342a:	83 c4 08                                        	add    esp,0x8
1099342d:	c3                                              	ret
1099342e:	cc                                              	int3
1099342f:	cc                                              	int3
