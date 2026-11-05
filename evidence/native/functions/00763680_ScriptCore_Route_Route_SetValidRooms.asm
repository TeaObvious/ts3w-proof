# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00763680 (ScriptCore.Route::Route_SetValidRooms)
Paired Ghidra pseudocode: 00763680_ScriptCore_Route_Route_SetValidRooms.c
Window: [0x00763680, 0x00763770) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00763770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00763680: 8b 44 24 04 8b 0d c4 50 1d 01 83 ec 08 55 50 e8
00763690: 1c 7e fe ff 8b e8 85 ed 0f 84 c8 00 00 00 8b 55
007636a0: 00 8b 42 10 57 8b cd ff d0 8b cd e8 50 ec fe ff
007636b0: 8b f8 85 ff 0f 84 9d 00 00 00 8b 17 8b 02 53 56
007636c0: 8b cf ff d0 8b 5c 24 28 33 c0 85 db 8d 77 20 c7
007636d0: 44 24 14 00 00 00 00 89 44 24 10 74 1d e8 ae 5c
007636e0: 00 00 8b 10 8b 52 74 8d 4c 24 10 51 8d 4c 24 18
007636f0: 51 53 8b c8 ff d2 8b 44 24 10 83 7c 24 14 00 8b
00763700: 4c 24 20 8b 54 24 24 89 4e 18 89 56 1c 74 38 85
00763710: c0 7e 34 8b 4c 24 2c 89 4e 10 50 8b ce e8 ce ea
00763720: 4b 00 33 c0 39 44 24 10 7e 22 8d 9b 00 00 00 00
00763730: 8b 4c 24 14 8b 0c 81 8b 16 89 0c 82 83 c0 01 3b
00763740: 44 24 10 7c eb eb 05 8b 16 89 56 04 8b 07 8b 50
00763750: 04 8b cf ff d2 5e 5b 8b 45 00 8b 50 14 5f 8b cd
00763760: 5d 83 c4 08 ff e2 5d 83 c4 08 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00763680 <.text+0x362680>:
  763680:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  763684:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  76368a:	83 ec 08                                        	sub    esp,0x8
  76368d:	55                                              	push   ebp
  76368e:	50                                              	push   eax
  76368f:	e8 1c 7e fe ff                                  	call   0x74b4b0
  763694:	8b e8                                           	mov    ebp,eax
  763696:	85 ed                                           	test   ebp,ebp
  763698:	0f 84 c8 00 00 00                               	je     0x763766
  76369e:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7636a1:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7636a4:	57                                              	push   edi
  7636a5:	8b cd                                           	mov    ecx,ebp
  7636a7:	ff d0                                           	call   eax
  7636a9:	8b cd                                           	mov    ecx,ebp
  7636ab:	e8 50 ec fe ff                                  	call   0x752300
  7636b0:	8b f8                                           	mov    edi,eax
  7636b2:	85 ff                                           	test   edi,edi
  7636b4:	0f 84 9d 00 00 00                               	je     0x763757
  7636ba:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7636bc:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7636be:	53                                              	push   ebx
  7636bf:	56                                              	push   esi
  7636c0:	8b cf                                           	mov    ecx,edi
  7636c2:	ff d0                                           	call   eax
  7636c4:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
  7636c8:	33 c0                                           	xor    eax,eax
  7636ca:	85 db                                           	test   ebx,ebx
  7636cc:	8d 77 20                                        	lea    esi,[edi+0x20]
  7636cf:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  7636d7:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  7636db:	74 1d                                           	je     0x7636fa
  7636dd:	e8 ae 5c 00 00                                  	call   0x769390
  7636e2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7636e4:	8b 52 74                                        	mov    edx,DWORD PTR [edx+0x74]
  7636e7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7636eb:	51                                              	push   ecx
  7636ec:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7636f0:	51                                              	push   ecx
  7636f1:	53                                              	push   ebx
  7636f2:	8b c8                                           	mov    ecx,eax
  7636f4:	ff d2                                           	call   edx
  7636f6:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7636fa:	83 7c 24 14 00                                  	cmp    DWORD PTR [esp+0x14],0x0
  7636ff:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  763703:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  763707:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
  76370a:	89 56 1c                                        	mov    DWORD PTR [esi+0x1c],edx
  76370d:	74 38                                           	je     0x763747
  76370f:	85 c0                                           	test   eax,eax
  763711:	7e 34                                           	jle    0x763747
  763713:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  763717:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
  76371a:	50                                              	push   eax
  76371b:	8b ce                                           	mov    ecx,esi
  76371d:	e8 ce ea 4b 00                                  	call   0xc221f0
  763722:	33 c0                                           	xor    eax,eax
  763724:	39 44 24 10                                     	cmp    DWORD PTR [esp+0x10],eax
  763728:	7e 22                                           	jle    0x76374c
  76372a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  763730:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  763734:	8b 0c 81                                        	mov    ecx,DWORD PTR [ecx+eax*4]
  763737:	8b 16                                           	mov    edx,DWORD PTR [esi]
  763739:	89 0c 82                                        	mov    DWORD PTR [edx+eax*4],ecx
  76373c:	83 c0 01                                        	add    eax,0x1
  76373f:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
  763743:	7c eb                                           	jl     0x763730
  763745:	eb 05                                           	jmp    0x76374c
  763747:	8b 16                                           	mov    edx,DWORD PTR [esi]
  763749:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  76374c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76374e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  763751:	8b cf                                           	mov    ecx,edi
  763753:	ff d2                                           	call   edx
  763755:	5e                                              	pop    esi
  763756:	5b                                              	pop    ebx
  763757:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  76375a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  76375d:	5f                                              	pop    edi
  76375e:	8b cd                                           	mov    ecx,ebp
  763760:	5d                                              	pop    ebp
  763761:	83 c4 08                                        	add    esp,0x8
  763764:	ff e2                                           	jmp    edx
  763766:	5d                                              	pop    ebp
  763767:	83 c4 08                                        	add    esp,0x8
  76376a:	c3                                              	ret
  76376b:	cc                                              	int3
  76376c:	cc                                              	int3
  76376d:	cc                                              	int3
  76376e:	cc                                              	int3
  76376f:	cc                                              	int3
