# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982fc0 (ContentManager_ConvertSims3Pack)
Paired Ghidra pseudocode: 10982FC0_ContentManager_ConvertSims3Pack.c
Window: [0x10982fc0, 0x10983060) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10983060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982fc0: 83 ec 10 8b 4c 24 18 b8 44 82 ca 10 89 04 24 89
10982fd0: 44 24 04 8d 04 24 50 51 c7 44 24 14 b0 8b b5 10
10982fe0: c7 44 24 10 45 82 ca 10 e8 53 ff ff ff 83 c4 08
10982ff0: 84 c0 75 21 8b 54 24 08 8b 04 24 2b d0 83 fa 01
10983000: 7e 0d 85 c0 74 09 50 e8 84 5e f9 ff 83 c4 04 32
10983010: c0 83 c4 10 c3 8b 44 24 20 8b 4c 24 1c 8b 54 24
10983020: 14 53 50 51 52 8d 44 24 10 50 e8 e1 76 e3 ff 8b
10983030: 4c 24 1c 8a d8 8b 44 24 14 2b c8 83 c4 10 83 f9
10983040: 01 7e 0d 85 c0 74 09 50 e8 43 5e f9 ff 83 c4 04
10983050: 8a c3 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982fc0 <.text+0x981fc0>:
10982fc0:	83 ec 10                                        	sub    esp,0x10
10982fc3:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10982fc7:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10982fcc:	89 04 24                                        	mov    DWORD PTR [esp],eax
10982fcf:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10982fd3:	8d 04 24                                        	lea    eax,[esp]
10982fd6:	50                                              	push   eax
10982fd7:	51                                              	push   ecx
10982fd8:	c7 44 24 14 b0 8b b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58bb0
10982fe0:	c7 44 24 10 45 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8245
10982fe8:	e8 53 ff ff ff                                  	call   0x10982f40
10982fed:	83 c4 08                                        	add    esp,0x8
10982ff0:	84 c0                                           	test   al,al
10982ff2:	75 21                                           	jne    0x10983015
10982ff4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10982ff8:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
10982ffb:	2b d0                                           	sub    edx,eax
10982ffd:	83 fa 01                                        	cmp    edx,0x1
10983000:	7e 0d                                           	jle    0x1098300f
10983002:	85 c0                                           	test   eax,eax
10983004:	74 09                                           	je     0x1098300f
10983006:	50                                              	push   eax
10983007:	e8 84 5e f9 ff                                  	call   0x10918e90
1098300c:	83 c4 04                                        	add    esp,0x4
1098300f:	32 c0                                           	xor    al,al
10983011:	83 c4 10                                        	add    esp,0x10
10983014:	c3                                              	ret
10983015:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10983019:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098301d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10983021:	53                                              	push   ebx
10983022:	50                                              	push   eax
10983023:	51                                              	push   ecx
10983024:	52                                              	push   edx
10983025:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10983029:	50                                              	push   eax
1098302a:	e8 e1 76 e3 ff                                  	call   0x107ba710
1098302f:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10983033:	8a d8                                           	mov    bl,al
10983035:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10983039:	2b c8                                           	sub    ecx,eax
1098303b:	83 c4 10                                        	add    esp,0x10
1098303e:	83 f9 01                                        	cmp    ecx,0x1
10983041:	7e 0d                                           	jle    0x10983050
10983043:	85 c0                                           	test   eax,eax
10983045:	74 09                                           	je     0x10983050
10983047:	50                                              	push   eax
10983048:	e8 43 5e f9 ff                                  	call   0x10918e90
1098304d:	83 c4 04                                        	add    esp,0x4
10983050:	8a c3                                           	mov    al,bl
10983052:	5b                                              	pop    ebx
10983053:	83 c4 10                                        	add    esp,0x10
10983056:	c3                                              	ret
10983057:	cc                                              	int3
10983058:	cc                                              	int3
10983059:	cc                                              	int3
1098305a:	cc                                              	int3
1098305b:	cc                                              	int3
1098305c:	cc                                              	int3
1098305d:	cc                                              	int3
1098305e:	cc                                              	int3
1098305f:	cc                                              	int3
