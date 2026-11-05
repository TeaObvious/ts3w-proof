# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f630 (Camera_LoadTuning)
Paired Ghidra pseudocode: 1052F630_Camera_LoadTuning.c
Window: [0x1052f630, 0x1052f6a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f6a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f630: 83 ec 08 e8 e8 ba 02 00 85 c0 74 59 8b 10 8b 52
1052f640: 78 8d 0c 24 51 8d 4c 24 08 51 8b 4c 24 18 51 8b
1052f650: c8 c7 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00
1052f660: 00 ff d2 e8 c8 cf 22 00 85 c0 74 29 8b c8 e8 0d
1052f670: 84 40 00 85 c0 74 1e 8b 4c 24 14 8b 14 24 6a 00
1052f680: 6a 01 51 8b 4c 24 10 52 8b 54 24 1c 51 52 8b c8
1052f690: e8 6b d1 22 00 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f630 <.text+0x52e630>:
1052f630:	83 ec 08                                        	sub    esp,0x8
1052f633:	e8 e8 ba 02 00                                  	call   0x1055b120
1052f638:	85 c0                                           	test   eax,eax
1052f63a:	74 59                                           	je     0x1052f695
1052f63c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f63e:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
1052f641:	8d 0c 24                                        	lea    ecx,[esp]
1052f644:	51                                              	push   ecx
1052f645:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1052f649:	51                                              	push   ecx
1052f64a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1052f64e:	51                                              	push   ecx
1052f64f:	8b c8                                           	mov    ecx,eax
1052f651:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1052f659:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
1052f661:	ff d2                                           	call   edx
1052f663:	e8 c8 cf 22 00                                  	call   0x1075c630
1052f668:	85 c0                                           	test   eax,eax
1052f66a:	74 29                                           	je     0x1052f695
1052f66c:	8b c8                                           	mov    ecx,eax
1052f66e:	e8 0d 84 40 00                                  	call   0x10937a80
1052f673:	85 c0                                           	test   eax,eax
1052f675:	74 1e                                           	je     0x1052f695
1052f677:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1052f67b:	8b 14 24                                        	mov    edx,DWORD PTR [esp]
1052f67e:	6a 00                                           	push   0x0
1052f680:	6a 01                                           	push   0x1
1052f682:	51                                              	push   ecx
1052f683:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052f687:	52                                              	push   edx
1052f688:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1052f68c:	51                                              	push   ecx
1052f68d:	52                                              	push   edx
1052f68e:	8b c8                                           	mov    ecx,eax
1052f690:	e8 6b d1 22 00                                  	call   0x1075c800
1052f695:	83 c4 08                                        	add    esp,0x8
1052f698:	c3                                              	ret
1052f699:	cc                                              	int3
1052f69a:	cc                                              	int3
1052f69b:	cc                                              	int3
1052f69c:	cc                                              	int3
1052f69d:	cc                                              	int3
1052f69e:	cc                                              	int3
1052f69f:	cc                                              	int3
