# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743da0 (ScriptCore.LookAtTask::LookAt_EnableLookAtTaskImpl)
Paired Ghidra pseudocode: 00743DA0_ScriptCore_LookAtTask_LookAt_EnableLookAtTaskImpl.c
Window: [0x00743da0, 0x00743e00) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743da0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00743db0: 46 75 47 e8 d8 55 02 00 8b 10 8b c8 8b 82 cc 00
00743dc0: 00 00 56 ff d0 8b f0 85 f6 74 2f 83 46 04 01 53
00743dd0: 8b ce e8 19 d3 e3 ff 8a d8 8b 46 04 83 c0 ff 89
00743de0: 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02 6a
00743df0: 01 8b ce ff d0 8a c3 5b 5e c3 32 c0 5e c3 cc cc

LINEAR DISASSEMBLY
00743da0 <.text+0x342da0>:
  743da0:	56                                              	push   esi
  743da1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  743da5:	8b c6                                           	mov    eax,esi
  743da7:	25 00 00 00 ff                                  	and    eax,0xff000000
  743dac:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  743db1:	75 47                                           	jne    0x743dfa
  743db3:	e8 d8 55 02 00                                  	call   0x769390
  743db8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743dba:	8b c8                                           	mov    ecx,eax
  743dbc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  743dc2:	56                                              	push   esi
  743dc3:	ff d0                                           	call   eax
  743dc5:	8b f0                                           	mov    esi,eax
  743dc7:	85 f6                                           	test   esi,esi
  743dc9:	74 2f                                           	je     0x743dfa
  743dcb:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743dcf:	53                                              	push   ebx
  743dd0:	8b ce                                           	mov    ecx,esi
  743dd2:	e8 19 d3 e3 ff                                  	call   0x5810f0
  743dd7:	8a d8                                           	mov    bl,al
  743dd9:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743ddc:	83 c0 ff                                        	add    eax,0xffffffff
  743ddf:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743de2:	75 11                                           	jne    0x743df5
  743de4:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743deb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743ded:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743def:	6a 01                                           	push   0x1
  743df1:	8b ce                                           	mov    ecx,esi
  743df3:	ff d0                                           	call   eax
  743df5:	8a c3                                           	mov    al,bl
  743df7:	5b                                              	pop    ebx
  743df8:	5e                                              	pop    esi
  743df9:	c3                                              	ret
  743dfa:	32 c0                                           	xor    al,al
  743dfc:	5e                                              	pop    esi
  743dfd:	c3                                              	ret
  743dfe:	cc                                              	int3
  743dff:	cc                                              	int3
