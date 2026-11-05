# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x008662c0 (Audio_StoreSoundFinishedDelegate)
Full Ghidra function-body envelope: 0x008662c0..0x008662f7 (exclusive end)
Ghidra body ranges: [[008662c0, 008662f6]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

008662c0 <.text+0x4652c0>:
  8662c0:	83 ec 14                                        	sub    esp,0x14
  8662c3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  8662c7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  8662cb:	89 04 24                                        	mov    DWORD PTR [esp],eax
  8662ce:	c6 44 24 18 00                                  	mov    BYTE PTR [esp+0x18],0x0
  8662d3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  8662d7:	50                                              	push   eax
  8662d8:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  8662dc:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  8662e0:	52                                              	push   edx
  8662e1:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  8662e5:	50                                              	push   eax
  8662e6:	81 c1 0c 7d 02 00                               	add    ecx,0x27d0c
  8662ec:	e8 7f df f8 ff                                  	call   0x7f4270
  8662f1:	83 c4 14                                        	add    esp,0x14
  8662f4:	c2 08 00                                        	ret    0x8
