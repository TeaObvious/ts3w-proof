# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0075dad0 (ScriptCore.Route::Route_CreateRoute)
Paired Ghidra pseudocode: 0075DAD0_ScriptCore_Route_Route_CreateRoute.c
Window: [0x0075dad0, 0x0075db60) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0075db60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0075dad0: 56 8b 74 24 08 57 8b 7c 24 10 8b c6 0b c7 74 6d
0075dae0: e8 ab b8 00 00 6a 00 6a 00 6a 00 6a 00 68 74 55
0075daf0: 00 01 68 00 02 00 00 e8 04 6a d8 ff 83 c4 18 85
0075db00: c0 74 4a 8b 4c 24 14 51 57 56 8b c8 e8 2f fa ff
0075db10: ff 8b f0 85 f6 74 36 8b 16 8b 42 10 8b ce ff d0
0075db20: 8b 0d c4 50 1d 01 85 c9 74 1a 8d 56 04 52 e8 6d
0075db30: 0a ff ff 8b 06 8b 50 14 8b 7e 18 8b ce ff d2 8b
0075db40: c7 5f 5e c3 8b 06 8b 50 14 8b ce ff d2 5f 33 c0
0075db50: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0075dad0 <.text+0x35cad0>:
  75dad0:	56                                              	push   esi
  75dad1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  75dad5:	57                                              	push   edi
  75dad6:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  75dada:	8b c6                                           	mov    eax,esi
  75dadc:	0b c7                                           	or     eax,edi
  75dade:	74 6d                                           	je     0x75db4d
  75dae0:	e8 ab b8 00 00                                  	call   0x769390
  75dae5:	6a 00                                           	push   0x0
  75dae7:	6a 00                                           	push   0x0
  75dae9:	6a 00                                           	push   0x0
  75daeb:	6a 00                                           	push   0x0
  75daed:	68 74 55 00 01                                  	push   0x1005574
  75daf2:	68 00 02 00 00                                  	push   0x200
  75daf7:	e8 04 6a d8 ff                                  	call   0x4e4500
  75dafc:	83 c4 18                                        	add    esp,0x18
  75daff:	85 c0                                           	test   eax,eax
  75db01:	74 4a                                           	je     0x75db4d
  75db03:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  75db07:	51                                              	push   ecx
  75db08:	57                                              	push   edi
  75db09:	56                                              	push   esi
  75db0a:	8b c8                                           	mov    ecx,eax
  75db0c:	e8 2f fa ff ff                                  	call   0x75d540
  75db11:	8b f0                                           	mov    esi,eax
  75db13:	85 f6                                           	test   esi,esi
  75db15:	74 36                                           	je     0x75db4d
  75db17:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75db19:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75db1c:	8b ce                                           	mov    ecx,esi
  75db1e:	ff d0                                           	call   eax
  75db20:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75db26:	85 c9                                           	test   ecx,ecx
  75db28:	74 1a                                           	je     0x75db44
  75db2a:	8d 56 04                                        	lea    edx,[esi+0x4]
  75db2d:	52                                              	push   edx
  75db2e:	e8 6d 0a ff ff                                  	call   0x74e5a0
  75db33:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75db35:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  75db38:	8b 7e 18                                        	mov    edi,DWORD PTR [esi+0x18]
  75db3b:	8b ce                                           	mov    ecx,esi
  75db3d:	ff d2                                           	call   edx
  75db3f:	8b c7                                           	mov    eax,edi
  75db41:	5f                                              	pop    edi
  75db42:	5e                                              	pop    esi
  75db43:	c3                                              	ret
  75db44:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75db46:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  75db49:	8b ce                                           	mov    ecx,esi
  75db4b:	ff d2                                           	call   edx
  75db4d:	5f                                              	pop    edi
  75db4e:	33 c0                                           	xor    eax,eax
  75db50:	5e                                              	pop    esi
  75db51:	c3                                              	ret
  75db52:	cc                                              	int3
  75db53:	cc                                              	int3
  75db54:	cc                                              	int3
  75db55:	cc                                              	int3
  75db56:	cc                                              	int3
  75db57:	cc                                              	int3
  75db58:	cc                                              	int3
  75db59:	cc                                              	int3
  75db5a:	cc                                              	int3
  75db5b:	cc                                              	int3
  75db5c:	cc                                              	int3
  75db5d:	cc                                              	int3
  75db5e:	cc                                              	int3
  75db5f:	cc                                              	int3
