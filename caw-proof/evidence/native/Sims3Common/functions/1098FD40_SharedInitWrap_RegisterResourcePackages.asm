# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fd40 (SharedInitWrap_RegisterResourcePackages)
Paired Ghidra pseudocode: 1098FD40_SharedInitWrap_RegisterResourcePackages.c
Window: [0x1098fd40, 0x1098fda0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fd40: 83 ec 10 8b 44 24 14 50 8d 4c 24 04 c7 44 24 04
1098fd50: 00 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 0c
1098fd60: 00 00 00 00 c7 44 24 10 80 72 b9 10 e8 af a8 6d
1098fd70: ff 8d 0c 24 51 e8 f6 cd c3 ff 8b 54 24 0c 8b 44
1098fd80: 24 04 2b d0 83 e2 fe 83 c4 04 83 fa 02 7e 0d 85
1098fd90: c0 74 09 50 e8 f7 90 f8 ff 83 c4 04 83 c4 10 c3

LINEAR DISASSEMBLY
1098fd40 <.text+0x98ed40>:
1098fd40:	83 ec 10                                        	sub    esp,0x10
1098fd43:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098fd47:	50                                              	push   eax
1098fd48:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1098fd4c:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
1098fd54:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
1098fd5c:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1098fd64:	c7 44 24 10 80 72 b9 10                         	mov    DWORD PTR [esp+0x10],0x10b97280
1098fd6c:	e8 af a8 6d ff                                  	call   0x1006a620
1098fd71:	8d 0c 24                                        	lea    ecx,[esp]
1098fd74:	51                                              	push   ecx
1098fd75:	e8 f6 cd c3 ff                                  	call   0x105ccb70
1098fd7a:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098fd7e:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fd82:	2b d0                                           	sub    edx,eax
1098fd84:	83 e2 fe                                        	and    edx,0xfffffffe
1098fd87:	83 c4 04                                        	add    esp,0x4
1098fd8a:	83 fa 02                                        	cmp    edx,0x2
1098fd8d:	7e 0d                                           	jle    0x1098fd9c
1098fd8f:	85 c0                                           	test   eax,eax
1098fd91:	74 09                                           	je     0x1098fd9c
1098fd93:	50                                              	push   eax
1098fd94:	e8 f7 90 f8 ff                                  	call   0x10918e90
1098fd99:	83 c4 04                                        	add    esp,0x4
1098fd9c:	83 c4 10                                        	add    esp,0x10
1098fd9f:	c3                                              	ret
