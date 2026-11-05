# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10560020 (Slots_DetachFromParentImpl)
Paired Ghidra pseudocode: 10560020_Slots_DetachFromParentImpl.c
Window: [0x10560020, 0x105600c0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x105600c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10560020: 55 8b ec 83 e4 f0 83 ec 2c 56 e8 71 a1 1c 00 8b
10560030: 4d 0c 8b 55 08 51 52 8b c8 e8 72 ab 1c 00 85 c0
10560040: 75 07 32 c0 5e 8b e5 5d c3 8b 0d 98 d9 c8 10 51
10560050: 8b c8 e8 49 6d 1c 00 8b f0 85 f6 74 e5 8d 54 24
10560060: 10 52 8b ce e8 27 a1 1e 00 6a 00 8b ce e8 be bd
10560070: 1e 00 84 c0 74 cc 8d 44 24 10 50 8b ce e8 4e a9
10560080: 1e 00 b0 01 5e 8b e5 5d c3 cc cc cc cc cc cc cc
10560090: f6 44 24 04 01 56 8b f1 c7 05 80 b0 c7 10 00 00
105600a0: 00 00 c7 06 cc c8 ac 10 74 09 56 e8 e0 8d 3b 00
105600b0: 83 c4 04 8b c6 5e c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10560020 <.text+0x55f020>:
10560020:	55                                              	push   ebp
10560021:	8b ec                                           	mov    ebp,esp
10560023:	83 e4 f0                                        	and    esp,0xfffffff0
10560026:	83 ec 2c                                        	sub    esp,0x2c
10560029:	56                                              	push   esi
1056002a:	e8 71 a1 1c 00                                  	call   0x1072a1a0
1056002f:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10560032:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10560035:	51                                              	push   ecx
10560036:	52                                              	push   edx
10560037:	8b c8                                           	mov    ecx,eax
10560039:	e8 72 ab 1c 00                                  	call   0x1072abb0
1056003e:	85 c0                                           	test   eax,eax
10560040:	75 07                                           	jne    0x10560049
10560042:	32 c0                                           	xor    al,al
10560044:	5e                                              	pop    esi
10560045:	8b e5                                           	mov    esp,ebp
10560047:	5d                                              	pop    ebp
10560048:	c3                                              	ret
10560049:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
1056004f:	51                                              	push   ecx
10560050:	8b c8                                           	mov    ecx,eax
10560052:	e8 49 6d 1c 00                                  	call   0x10726da0
10560057:	8b f0                                           	mov    esi,eax
10560059:	85 f6                                           	test   esi,esi
1056005b:	74 e5                                           	je     0x10560042
1056005d:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10560061:	52                                              	push   edx
10560062:	8b ce                                           	mov    ecx,esi
10560064:	e8 27 a1 1e 00                                  	call   0x1074a190
10560069:	6a 00                                           	push   0x0
1056006b:	8b ce                                           	mov    ecx,esi
1056006d:	e8 be bd 1e 00                                  	call   0x1074be30
10560072:	84 c0                                           	test   al,al
10560074:	74 cc                                           	je     0x10560042
10560076:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1056007a:	50                                              	push   eax
1056007b:	8b ce                                           	mov    ecx,esi
1056007d:	e8 4e a9 1e 00                                  	call   0x1074a9d0
10560082:	b0 01                                           	mov    al,0x1
10560084:	5e                                              	pop    esi
10560085:	8b e5                                           	mov    esp,ebp
10560087:	5d                                              	pop    ebp
10560088:	c3                                              	ret
10560089:	cc                                              	int3
1056008a:	cc                                              	int3
1056008b:	cc                                              	int3
1056008c:	cc                                              	int3
1056008d:	cc                                              	int3
1056008e:	cc                                              	int3
1056008f:	cc                                              	int3
10560090:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
10560095:	56                                              	push   esi
10560096:	8b f1                                           	mov    esi,ecx
10560098:	c7 05 80 b0 c7 10 00 00 00 00                   	mov    DWORD PTR ds:0x10c7b080,0x0
105600a2:	c7 06 cc c8 ac 10                               	mov    DWORD PTR [esi],0x10acc8cc
105600a8:	74 09                                           	je     0x105600b3
105600aa:	56                                              	push   esi
105600ab:	e8 e0 8d 3b 00                                  	call   0x10918e90
105600b0:	83 c4 04                                        	add    esp,0x4
105600b3:	8b c6                                           	mov    eax,esi
105600b5:	5e                                              	pop    esi
105600b6:	c2 04 00                                        	ret    0x4
105600b9:	cc                                              	int3
105600ba:	cc                                              	int3
105600bb:	cc                                              	int3
105600bc:	cc                                              	int3
105600bd:	cc                                              	int3
105600be:	cc                                              	int3
105600bf:	cc                                              	int3
