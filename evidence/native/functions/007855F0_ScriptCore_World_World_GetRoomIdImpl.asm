# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x007855f0,0x0078565c); analyst name ScriptCore.World::World_GetRoomIdImpl.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007855f0 <.text+0x3845f0>:
  7855f0:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  7855f6:	83 ec 0c             	sub    esp,0xc
  7855f9:	85 c9                	test   ecx,ecx
  7855fb:	74 57                	je     0x785654
  7855fd:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  785601:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  785605:	6a 00                	push   0x0
  785607:	50                   	push   eax
  785608:	52                   	push   edx
  785609:	e8 02 d2 4d 00       	call   0xc62810
  78560e:	85 c0                	test   eax,eax
  785610:	74 42                	je     0x785654
  785612:	8b 80 98 02 00 00    	mov    eax,DWORD PTR [eax+0x298]
  785618:	85 c0                	test   eax,eax
  78561a:	74 38                	je     0x785654
  78561c:	0f be 4c 24 20       	movsx  ecx,BYTE PTR [esp+0x20]
  785621:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  785625:	f3 0f 2a 44 24 18    	cvtsi2ss xmm0,DWORD PTR [esp+0x18]
  78562b:	6a 01                	push   0x1
  78562d:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  785631:	52                   	push   edx
  785632:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  785636:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  78563c:	f3 0f 2a 44 24 24    	cvtsi2ss xmm0,DWORD PTR [esp+0x24]
  785642:	51                   	push   ecx
  785643:	8b c8                	mov    ecx,eax
  785645:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  78564b:	e8 70 2c 3c 00       	call   0xb482c0
  785650:	83 c4 0c             	add    esp,0xc
  785653:	c3                   	ret
  785654:	66 0d ff ff          	or     ax,0xffff
  785658:	83 c4 0c             	add    esp,0xc
  78565b:	c3                   	ret
