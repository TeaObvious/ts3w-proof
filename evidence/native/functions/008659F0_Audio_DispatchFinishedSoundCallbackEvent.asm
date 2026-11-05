# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x008659f0 (Audio_DispatchFinishedSoundCallbackEvent)
Full Ghidra function-body envelope: 0x008659f0..0x00865aea (exclusive end)
Ghidra body ranges: [[008659f0, 00865ae9]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

008659f0 <.text+0x4649f0>:
  8659f0:	81 ec 88 00 00 00                               	sub    esp,0x88
  8659f6:	81 bc 24 8c 00 00 00 ee 29 a1 03                	cmp    DWORD PTR [esp+0x8c],0x3a129ee
  865a01:	56                                              	push   esi
  865a02:	57                                              	push   edi
  865a03:	0f 85 d6 00 00 00                               	jne    0x865adf
  865a09:	8d b1 0c 7d 02 00                               	lea    esi,[ecx+0x27d0c]
  865a0f:	8d 84 24 98 00 00 00                            	lea    eax,[esp+0x98]
  865a16:	50                                              	push   eax
  865a17:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  865a1b:	51                                              	push   ecx
  865a1c:	8b ce                                           	mov    ecx,esi
  865a1e:	e8 8d 5f 1f 00                                  	call   0xa5b9b0
  865a23:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  865a26:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  865a29:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  865a2d:	3b 0c 90                                        	cmp    ecx,DWORD PTR [eax+edx*4]
  865a30:	0f 84 a9 00 00 00                               	je     0x865adf
  865a36:	8b 79 04                                        	mov    edi,DWORD PTR [ecx+0x4]
  865a39:	83 ec 08                                        	sub    esp,0x8
  865a3c:	8b c4                                           	mov    eax,esp
  865a3e:	89 08                                           	mov    DWORD PTR [eax],ecx
  865a40:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  865a44:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  865a48:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  865a4b:	52                                              	push   edx
  865a4c:	8b ce                                           	mov    ecx,esi
  865a4e:	e8 5d c6 ed ff                                  	call   0x7420b0
  865a53:	85 ff                                           	test   edi,edi
  865a55:	0f 84 84 00 00 00                               	je     0x865adf
  865a5b:	e8 30 39 f0 ff                                  	call   0x769390
  865a60:	8b f0                                           	mov    esi,eax
  865a62:	85 f6                                           	test   esi,esi
  865a64:	74 79                                           	je     0x865adf
  865a66:	8d 84 24 98 00 00 00                            	lea    eax,[esp+0x98]
  865a6d:	50                                              	push   eax
  865a6e:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  865a72:	e8 f9 08 c9 ff                                  	call   0x4f6370
  865a77:	8b 8c 24 9c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x9c]
  865a7e:	51                                              	push   ecx
  865a7f:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  865a83:	e8 48 09 c9 ff                                  	call   0x4f63d0
  865a88:	8d 94 24 a0 00 00 00                            	lea    edx,[esp+0xa0]
  865a8f:	52                                              	push   edx
  865a90:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  865a94:	e8 d7 08 c9 ff                                  	call   0x4f6370
  865a99:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865a9b:	8b 80 34 01 00 00                               	mov    eax,DWORD PTR [eax+0x134]
  865aa1:	6a 03                                           	push   0x3
  865aa3:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  865aa7:	51                                              	push   ecx
  865aa8:	57                                              	push   edi
  865aa9:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  865aad:	52                                              	push   edx
  865aae:	8b ce                                           	mov    ecx,esi
  865ab0:	ff d0                                           	call   eax
  865ab2:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  865ab7:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  865abf:	74 0b                                           	je     0x865acc
  865ac1:	6a 00                                           	push   0x0
  865ac3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  865ac7:	e8 94 fc c8 ff                                  	call   0x4f5760
  865acc:	68 20 58 4f 00                                  	push   0x4f5820
  865ad1:	6a 03                                           	push   0x3
  865ad3:	6a 20                                           	push   0x20
  865ad5:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  865ad9:	51                                              	push   ecx
  865ada:	e8 01 0c be ff                                  	call   0x4466e0
  865adf:	5f                                              	pop    edi
  865ae0:	5e                                              	pop    esi
  865ae1:	81 c4 88 00 00 00                               	add    esp,0x88
  865ae7:	c2 10 00                                        	ret    0x10
