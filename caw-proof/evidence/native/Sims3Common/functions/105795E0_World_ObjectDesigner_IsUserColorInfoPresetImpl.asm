# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105795e0 (World_ObjectDesigner_IsUserColorInfoPresetImpl)
Paired Ghidra pseudocode: 105795E0_World_ObjectDesigner_IsUserColorInfoPresetImpl.c
Window: [0x105795e0, 0x10579660) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105795e0: 83 ec 10 e8 78 ee b7 ff 8b 4c 24 1c 8b 54 24 20
105795f0: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
10579600: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 5e fb
10579610: b7 ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc
10579620: e8 fb 1a fe ff 8b 0d c4 00 c7 10 85 c9 74 29 8b
10579630: 44 24 08 8b 54 24 04 6a 00 50 52 e8 d0 d9 cb ff
10579640: 85 c0 74 14 8b 4c 24 10 8b 54 24 0c 51 52 50 e8
10579650: 6c 4a b5 ff 83 c4 0c c3 d9 05 84 e1 aa 10 c3 cc

LINEAR DISASSEMBLY
105795e0 <.text+0x5785e0>:
105795e0:	83 ec 10                                        	sub    esp,0x10
105795e3:	e8 78 ee b7 ff                                  	call   0x100f8460
105795e8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105795ec:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
105795f0:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
105795f3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105795f7:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
105795fb:	8d 0c 24                                        	lea    ecx,[esp]
105795fe:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10579602:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10579606:	51                                              	push   ecx
10579607:	8b c8                                           	mov    ecx,eax
10579609:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1057960d:	e8 5e fb b7 ff                                  	call   0x100f9170
10579612:	83 c4 10                                        	add    esp,0x10
10579615:	c3                                              	ret
10579616:	cc                                              	int3
10579617:	cc                                              	int3
10579618:	cc                                              	int3
10579619:	cc                                              	int3
1057961a:	cc                                              	int3
1057961b:	cc                                              	int3
1057961c:	cc                                              	int3
1057961d:	cc                                              	int3
1057961e:	cc                                              	int3
1057961f:	cc                                              	int3
10579620:	e8 fb 1a fe ff                                  	call   0x1055b120
10579625:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057962b:	85 c9                                           	test   ecx,ecx
1057962d:	74 29                                           	je     0x10579658
1057962f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10579633:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579637:	6a 00                                           	push   0x0
10579639:	50                                              	push   eax
1057963a:	52                                              	push   edx
1057963b:	e8 d0 d9 cb ff                                  	call   0x10237010
10579640:	85 c0                                           	test   eax,eax
10579642:	74 14                                           	je     0x10579658
10579644:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10579648:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057964c:	51                                              	push   ecx
1057964d:	52                                              	push   edx
1057964e:	50                                              	push   eax
1057964f:	e8 6c 4a b5 ff                                  	call   0x100ce0c0
10579654:	83 c4 0c                                        	add    esp,0xc
10579657:	c3                                              	ret
10579658:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1057965e:	c3                                              	ret
1057965f:	cc                                              	int3
