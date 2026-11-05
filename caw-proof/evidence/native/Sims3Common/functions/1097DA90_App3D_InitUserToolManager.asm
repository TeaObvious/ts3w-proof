# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097da90 (App3D_InitUserToolManager)
Paired Ghidra pseudocode: 1097DA90_App3D_InitUserToolManager.c
Window: [0x1097da90, 0x1097db10) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097db10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097da90: 51 6a 00 6a 00 6a 00 6a 00 68 dc 5f b9 10 68 d8
1097daa0: 01 00 00 e8 08 b4 f9 ff 83 c4 18 85 c0 74 09 8b
1097dab0: c8 e8 ba b8 94 ff eb 02 33 c0 8b 0d 44 7b cb 10
1097dac0: 3b c1 74 39 85 c0 56 74 0c 8d 50 04 be 01 00 00
1097dad0: 00 f0 0f c1 32 85 c9 a3 44 7b cb 10 74 1e 8d 41
1097dae0: 04 8b d0 83 ce ff f0 0f c1 32 4e 75 0f ba 01 00
1097daf0: 00 00 87 10 8b 01 8b 10 6a 01 ff d2 5e 8b 0d 44
1097db00: 7b cb 10 83 c4 04 e9 b5 97 94 ff cc cc cc cc cc

LINEAR DISASSEMBLY
1097da90 <.text+0x97ca90>:
1097da90:	51                                              	push   ecx
1097da91:	6a 00                                           	push   0x0
1097da93:	6a 00                                           	push   0x0
1097da95:	6a 00                                           	push   0x0
1097da97:	6a 00                                           	push   0x0
1097da99:	68 dc 5f b9 10                                  	push   0x10b95fdc
1097da9e:	68 d8 01 00 00                                  	push   0x1d8
1097daa3:	e8 08 b4 f9 ff                                  	call   0x10918eb0
1097daa8:	83 c4 18                                        	add    esp,0x18
1097daab:	85 c0                                           	test   eax,eax
1097daad:	74 09                                           	je     0x1097dab8
1097daaf:	8b c8                                           	mov    ecx,eax
1097dab1:	e8 ba b8 94 ff                                  	call   0x102c9370
1097dab6:	eb 02                                           	jmp    0x1097daba
1097dab8:	33 c0                                           	xor    eax,eax
1097daba:	8b 0d 44 7b cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7b44
1097dac0:	3b c1                                           	cmp    eax,ecx
1097dac2:	74 39                                           	je     0x1097dafd
1097dac4:	85 c0                                           	test   eax,eax
1097dac6:	56                                              	push   esi
1097dac7:	74 0c                                           	je     0x1097dad5
1097dac9:	8d 50 04                                        	lea    edx,[eax+0x4]
1097dacc:	be 01 00 00 00                                  	mov    esi,0x1
1097dad1:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
1097dad5:	85 c9                                           	test   ecx,ecx
1097dad7:	a3 44 7b cb 10                                  	mov    ds:0x10cb7b44,eax
1097dadc:	74 1e                                           	je     0x1097dafc
1097dade:	8d 41 04                                        	lea    eax,[ecx+0x4]
1097dae1:	8b d0                                           	mov    edx,eax
1097dae3:	83 ce ff                                        	or     esi,0xffffffff
1097dae6:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
1097daea:	4e                                              	dec    esi
1097daeb:	75 0f                                           	jne    0x1097dafc
1097daed:	ba 01 00 00 00                                  	mov    edx,0x1
1097daf2:	87 10                                           	xchg   DWORD PTR [eax],edx
1097daf4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097daf6:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097daf8:	6a 01                                           	push   0x1
1097dafa:	ff d2                                           	call   edx
1097dafc:	5e                                              	pop    esi
1097dafd:	8b 0d 44 7b cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7b44
1097db03:	83 c4 04                                        	add    esp,0x4
1097db06:	e9 b5 97 94 ff                                  	jmp    0x102c72c0
1097db0b:	cc                                              	int3
1097db0c:	cc                                              	int3
1097db0d:	cc                                              	int3
1097db0e:	cc                                              	int3
1097db0f:	cc                                              	int3
