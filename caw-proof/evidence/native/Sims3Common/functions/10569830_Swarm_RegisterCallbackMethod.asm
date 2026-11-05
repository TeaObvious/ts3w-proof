# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569830 (Swarm_RegisterCallbackMethod)
Paired Ghidra pseudocode: 10569830_Swarm_RegisterCallbackMethod.c
Window: [0x10569830, 0x10569890) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569830: 57 8b 7c 24 08 85 ff 77 53 53 56 e8 e0 18 ff ff
10569840: 8b 4c 24 18 8b f0 8b 06 8b 50 58 51 8b ce ff d2
10569850: 8b 4c 24 14 8b d8 8b 06 8b 50 58 51 8b ce ff d2
10569860: 50 c1 e7 05 8d 87 c8 b1 c7 10 68 dc 9d b1 10 50
10569870: e8 0b 58 aa ff 53 8d 8f d8 b1 c7 10 68 dc 9d b1
10569880: 10 51 e8 f9 57 aa ff 83 c4 18 5e 5b 5f c3 cc cc

LINEAR DISASSEMBLY
10569830 <.text+0x568830>:
10569830:	57                                              	push   edi
10569831:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
10569835:	85 ff                                           	test   edi,edi
10569837:	77 53                                           	ja     0x1056988c
10569839:	53                                              	push   ebx
1056983a:	56                                              	push   esi
1056983b:	e8 e0 18 ff ff                                  	call   0x1055b120
10569840:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10569844:	8b f0                                           	mov    esi,eax
10569846:	8b 06                                           	mov    eax,DWORD PTR [esi]
10569848:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1056984b:	51                                              	push   ecx
1056984c:	8b ce                                           	mov    ecx,esi
1056984e:	ff d2                                           	call   edx
10569850:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10569854:	8b d8                                           	mov    ebx,eax
10569856:	8b 06                                           	mov    eax,DWORD PTR [esi]
10569858:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1056985b:	51                                              	push   ecx
1056985c:	8b ce                                           	mov    ecx,esi
1056985e:	ff d2                                           	call   edx
10569860:	50                                              	push   eax
10569861:	c1 e7 05                                        	shl    edi,0x5
10569864:	8d 87 c8 b1 c7 10                               	lea    eax,[edi+0x10c7b1c8]
1056986a:	68 dc 9d b1 10                                  	push   0x10b19ddc
1056986f:	50                                              	push   eax
10569870:	e8 0b 58 aa ff                                  	call   0x1000f080
10569875:	53                                              	push   ebx
10569876:	8d 8f d8 b1 c7 10                               	lea    ecx,[edi+0x10c7b1d8]
1056987c:	68 dc 9d b1 10                                  	push   0x10b19ddc
10569881:	51                                              	push   ecx
10569882:	e8 f9 57 aa ff                                  	call   0x1000f080
10569887:	83 c4 18                                        	add    esp,0x18
1056988a:	5e                                              	pop    esi
1056988b:	5b                                              	pop    ebx
1056988c:	5f                                              	pop    edi
1056988d:	c3                                              	ret
1056988e:	cc                                              	int3
1056988f:	cc                                              	int3
