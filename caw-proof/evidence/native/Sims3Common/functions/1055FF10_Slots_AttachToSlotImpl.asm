# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055ff10 (Slots_AttachToSlotImpl)
Paired Ghidra pseudocode: 1055FF10_Slots_AttachToSlotImpl.c
Window: [0x1055ff10, 0x1055ffb0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055ffb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055ff10: 53 56 57 e8 88 a2 1c 00 8b 4c 24 10 8b f8 8b 44
1055ff20: 24 14 50 51 8b cf e8 85 ac 1c 00 8b f0 85 f6 74
1055ff30: 14 8b 15 98 d9 c8 10 52 8b ce e8 61 6e 1c 00 8b
1055ff40: d8 85 db 75 09 5f 5e b8 e9 03 00 00 5b c3 8b 44
1055ff50: 24 1c 8b 4c 24 18 50 51 8b cf e8 51 ac 1c 00 8b
1055ff60: f8 85 ff 75 09 5f 5e b8 ea 03 00 00 5b c3 80 7c
1055ff70: 24 28 00 74 19 8b 15 c4 0c c8 10 52 8b ce e8 1d
1055ff80: 6e 1c 00 85 c0 74 07 8b c8 e8 b2 f0 1c 00 8b 44
1055ff90: 24 24 8b 4c 24 20 50 6a 00 51 57 8b cb e8 6e c7
1055ffa0: 1e 00 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055ff10 <.text+0x55ef10>:
1055ff10:	53                                              	push   ebx
1055ff11:	56                                              	push   esi
1055ff12:	57                                              	push   edi
1055ff13:	e8 88 a2 1c 00                                  	call   0x1072a1a0
1055ff18:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1055ff1c:	8b f8                                           	mov    edi,eax
1055ff1e:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1055ff22:	50                                              	push   eax
1055ff23:	51                                              	push   ecx
1055ff24:	8b cf                                           	mov    ecx,edi
1055ff26:	e8 85 ac 1c 00                                  	call   0x1072abb0
1055ff2b:	8b f0                                           	mov    esi,eax
1055ff2d:	85 f6                                           	test   esi,esi
1055ff2f:	74 14                                           	je     0x1055ff45
1055ff31:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
1055ff37:	52                                              	push   edx
1055ff38:	8b ce                                           	mov    ecx,esi
1055ff3a:	e8 61 6e 1c 00                                  	call   0x10726da0
1055ff3f:	8b d8                                           	mov    ebx,eax
1055ff41:	85 db                                           	test   ebx,ebx
1055ff43:	75 09                                           	jne    0x1055ff4e
1055ff45:	5f                                              	pop    edi
1055ff46:	5e                                              	pop    esi
1055ff47:	b8 e9 03 00 00                                  	mov    eax,0x3e9
1055ff4c:	5b                                              	pop    ebx
1055ff4d:	c3                                              	ret
1055ff4e:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1055ff52:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055ff56:	50                                              	push   eax
1055ff57:	51                                              	push   ecx
1055ff58:	8b cf                                           	mov    ecx,edi
1055ff5a:	e8 51 ac 1c 00                                  	call   0x1072abb0
1055ff5f:	8b f8                                           	mov    edi,eax
1055ff61:	85 ff                                           	test   edi,edi
1055ff63:	75 09                                           	jne    0x1055ff6e
1055ff65:	5f                                              	pop    edi
1055ff66:	5e                                              	pop    esi
1055ff67:	b8 ea 03 00 00                                  	mov    eax,0x3ea
1055ff6c:	5b                                              	pop    ebx
1055ff6d:	c3                                              	ret
1055ff6e:	80 7c 24 28 00                                  	cmp    BYTE PTR [esp+0x28],0x0
1055ff73:	74 19                                           	je     0x1055ff8e
1055ff75:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1055ff7b:	52                                              	push   edx
1055ff7c:	8b ce                                           	mov    ecx,esi
1055ff7e:	e8 1d 6e 1c 00                                  	call   0x10726da0
1055ff83:	85 c0                                           	test   eax,eax
1055ff85:	74 07                                           	je     0x1055ff8e
1055ff87:	8b c8                                           	mov    ecx,eax
1055ff89:	e8 b2 f0 1c 00                                  	call   0x1072f040
1055ff8e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1055ff92:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1055ff96:	50                                              	push   eax
1055ff97:	6a 00                                           	push   0x0
1055ff99:	51                                              	push   ecx
1055ff9a:	57                                              	push   edi
1055ff9b:	8b cb                                           	mov    ecx,ebx
1055ff9d:	e8 6e c7 1e 00                                  	call   0x1074c710
1055ffa2:	5f                                              	pop    edi
1055ffa3:	5e                                              	pop    esi
1055ffa4:	5b                                              	pop    ebx
1055ffa5:	c3                                              	ret
1055ffa6:	cc                                              	int3
1055ffa7:	cc                                              	int3
1055ffa8:	cc                                              	int3
1055ffa9:	cc                                              	int3
1055ffaa:	cc                                              	int3
1055ffab:	cc                                              	int3
1055ffac:	cc                                              	int3
1055ffad:	cc                                              	int3
1055ffae:	cc                                              	int3
1055ffaf:	cc                                              	int3
