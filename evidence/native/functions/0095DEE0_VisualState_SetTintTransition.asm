# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095dee0 (VisualState_SetTintTransition)
Full Ghidra function-body envelope: 0x0095dee0..0x0095df3c (exclusive end)
Ghidra body ranges: [[0095dee0, 0095df3b]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095dee0 <.text+0x55cee0>:
  95dee0:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  95dee3:	8b c2                	mov    eax,edx
  95dee5:	33 44 24 04          	xor    eax,DWORD PTR [esp+0x4]
  95dee9:	83 ec 10             	sub    esp,0x10
  95deec:	25 ff ff ff 00       	and    eax,0xffffff
  95def1:	33 c2                	xor    eax,edx
  95def3:	3b d0                	cmp    edx,eax
  95def5:	74 3f                	je     0x95df36
  95def7:	8a 54 24 20          	mov    dl,BYTE PTR [esp+0x20]
  95defb:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  95df01:	88 54 24 04          	mov    BYTE PTR [esp+0x4],dl
  95df05:	8b d0                	mov    edx,eax
  95df07:	33 54 24 1c          	xor    edx,DWORD PTR [esp+0x1c]
  95df0b:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
  95df0e:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  95df11:	81 e2 ff ff ff 00    	and    edx,0xffffff
  95df17:	33 d0                	xor    edx,eax
  95df19:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  95df1d:	8d 04 24             	lea    eax,[esp]
  95df20:	50                   	push   eax
  95df21:	51                   	push   ecx
  95df22:	6a 1c                	push   0x1c
  95df24:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  95df2a:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  95df2e:	e8 8d 77 fd ff       	call   0x9356c0
  95df33:	83 c4 0c             	add    esp,0xc
  95df36:	83 c4 10             	add    esp,0x10
  95df39:	c2 10 00             	ret    0x10
