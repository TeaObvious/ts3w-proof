# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055ffb0 (Slots_CanAttachToSlotImpl)
Paired Ghidra pseudocode: 1055FFB0_Slots_CanAttachToSlotImpl.c
Window: [0x1055ffb0, 0x10560020) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10560020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055ffb0: 56 57 e8 e9 a1 1c 00 8b 4c 24 0c 8b f8 8b 44 24
1055ffc0: 10 50 51 8b cf e8 e6 ab 1c 00 8b f0 85 f6 74 12
1055ffd0: 8b 15 98 d9 c8 10 52 8b ce e8 c2 6d 1c 00 85 c0
1055ffe0: 75 08 5f b8 e9 03 00 00 5e c3 8b 44 24 18 8b 4c
1055fff0: 24 14 50 51 8b cf e8 b5 ab 1c 00 85 c0 75 08 5f
10560000: b8 ea 03 00 00 5e c3 8b 54 24 1c 6a 00 6a 00 52
10560010: 50 56 e8 69 ca ba ff 83 c4 14 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
1055ffb0 <.text+0x55efb0>:
1055ffb0:	56                                              	push   esi
1055ffb1:	57                                              	push   edi
1055ffb2:	e8 e9 a1 1c 00                                  	call   0x1072a1a0
1055ffb7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055ffbb:	8b f8                                           	mov    edi,eax
1055ffbd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1055ffc1:	50                                              	push   eax
1055ffc2:	51                                              	push   ecx
1055ffc3:	8b cf                                           	mov    ecx,edi
1055ffc5:	e8 e6 ab 1c 00                                  	call   0x1072abb0
1055ffca:	8b f0                                           	mov    esi,eax
1055ffcc:	85 f6                                           	test   esi,esi
1055ffce:	74 12                                           	je     0x1055ffe2
1055ffd0:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
1055ffd6:	52                                              	push   edx
1055ffd7:	8b ce                                           	mov    ecx,esi
1055ffd9:	e8 c2 6d 1c 00                                  	call   0x10726da0
1055ffde:	85 c0                                           	test   eax,eax
1055ffe0:	75 08                                           	jne    0x1055ffea
1055ffe2:	5f                                              	pop    edi
1055ffe3:	b8 e9 03 00 00                                  	mov    eax,0x3e9
1055ffe8:	5e                                              	pop    esi
1055ffe9:	c3                                              	ret
1055ffea:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1055ffee:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055fff2:	50                                              	push   eax
1055fff3:	51                                              	push   ecx
1055fff4:	8b cf                                           	mov    ecx,edi
1055fff6:	e8 b5 ab 1c 00                                  	call   0x1072abb0
1055fffb:	85 c0                                           	test   eax,eax
1055fffd:	75 08                                           	jne    0x10560007
1055ffff:	5f                                              	pop    edi
10560000:	b8 ea 03 00 00                                  	mov    eax,0x3ea
10560005:	5e                                              	pop    esi
10560006:	c3                                              	ret
10560007:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1056000b:	6a 00                                           	push   0x0
1056000d:	6a 00                                           	push   0x0
1056000f:	52                                              	push   edx
10560010:	50                                              	push   eax
10560011:	56                                              	push   esi
10560012:	e8 69 ca ba ff                                  	call   0x1010ca80
10560017:	83 c4 14                                        	add    esp,0x14
1056001a:	5f                                              	pop    edi
1056001b:	5e                                              	pop    esi
1056001c:	c3                                              	ret
1056001d:	cc                                              	int3
1056001e:	cc                                              	int3
1056001f:	cc                                              	int3
