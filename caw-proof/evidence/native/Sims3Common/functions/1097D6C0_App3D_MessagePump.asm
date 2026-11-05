# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d6c0 (App3D_MessagePump)
Paired Ghidra pseudocode: 1097D6C0_App3D_MessagePump.c
Window: [0x1097d6c0, 0x1097d740) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d6c0: 83 ec 1c 53 55 56 57 8b 3d 48 b8 aa 10 6a 01 33
1097d6d0: f6 56 56 56 8d 44 24 20 50 ff d7 85 c0 74 49 8b
1097d6e0: 1d 74 b8 aa 10 8b 2d 4c b8 aa 10 eb 03 8d 49 00
1097d6f0: 8b 44 24 30 83 f8 ff 74 04 3b f0 7d 2b 83 7c 24
1097d700: 14 12 74 2e 8d 4c 24 10 51 83 c6 01 ff d3 8d 54
1097d710: 24 10 52 ff d5 6a 01 6a 00 6a 00 6a 00 8d 44 24
1097d720: 20 50 ff d7 85 c0 75 c8 5f 8b c6 5e 5d 5b 83 c4
1097d730: 1c c3 5f 5e 5d 83 c8 ff 5b 83 c4 1c c3 cc cc cc

LINEAR DISASSEMBLY
1097d6c0 <.text+0x97c6c0>:
1097d6c0:	83 ec 1c                                        	sub    esp,0x1c
1097d6c3:	53                                              	push   ebx
1097d6c4:	55                                              	push   ebp
1097d6c5:	56                                              	push   esi
1097d6c6:	57                                              	push   edi
1097d6c7:	8b 3d 48 b8 aa 10                               	mov    edi,DWORD PTR ds:0x10aab848
1097d6cd:	6a 01                                           	push   0x1
1097d6cf:	33 f6                                           	xor    esi,esi
1097d6d1:	56                                              	push   esi
1097d6d2:	56                                              	push   esi
1097d6d3:	56                                              	push   esi
1097d6d4:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1097d6d8:	50                                              	push   eax
1097d6d9:	ff d7                                           	call   edi
1097d6db:	85 c0                                           	test   eax,eax
1097d6dd:	74 49                                           	je     0x1097d728
1097d6df:	8b 1d 74 b8 aa 10                               	mov    ebx,DWORD PTR ds:0x10aab874
1097d6e5:	8b 2d 4c b8 aa 10                               	mov    ebp,DWORD PTR ds:0x10aab84c
1097d6eb:	eb 03                                           	jmp    0x1097d6f0
1097d6ed:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1097d6f0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1097d6f4:	83 f8 ff                                        	cmp    eax,0xffffffff
1097d6f7:	74 04                                           	je     0x1097d6fd
1097d6f9:	3b f0                                           	cmp    esi,eax
1097d6fb:	7d 2b                                           	jge    0x1097d728
1097d6fd:	83 7c 24 14 12                                  	cmp    DWORD PTR [esp+0x14],0x12
1097d702:	74 2e                                           	je     0x1097d732
1097d704:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097d708:	51                                              	push   ecx
1097d709:	83 c6 01                                        	add    esi,0x1
1097d70c:	ff d3                                           	call   ebx
1097d70e:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1097d712:	52                                              	push   edx
1097d713:	ff d5                                           	call   ebp
1097d715:	6a 01                                           	push   0x1
1097d717:	6a 00                                           	push   0x0
1097d719:	6a 00                                           	push   0x0
1097d71b:	6a 00                                           	push   0x0
1097d71d:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1097d721:	50                                              	push   eax
1097d722:	ff d7                                           	call   edi
1097d724:	85 c0                                           	test   eax,eax
1097d726:	75 c8                                           	jne    0x1097d6f0
1097d728:	5f                                              	pop    edi
1097d729:	8b c6                                           	mov    eax,esi
1097d72b:	5e                                              	pop    esi
1097d72c:	5d                                              	pop    ebp
1097d72d:	5b                                              	pop    ebx
1097d72e:	83 c4 1c                                        	add    esp,0x1c
1097d731:	c3                                              	ret
1097d732:	5f                                              	pop    edi
1097d733:	5e                                              	pop    esi
1097d734:	5d                                              	pop    ebp
1097d735:	83 c8 ff                                        	or     eax,0xffffffff
1097d738:	5b                                              	pop    ebx
1097d739:	83 c4 1c                                        	add    esp,0x1c
1097d73c:	c3                                              	ret
1097d73d:	cc                                              	int3
1097d73e:	cc                                              	int3
1097d73f:	cc                                              	int3
