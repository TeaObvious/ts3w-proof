# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00adc980, 0x00adc9da); analyst name Lot_WorldPositionToLocalLocationAtFloor.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00adc980 <.text+0x6db980>:
  adc980:	55                   	push   ebp
  adc981:	8b ec                	mov    ebp,esp
  adc983:	83 e4 f0             	and    esp,0xfffffff0
  adc986:	83 ec 1c             	sub    esp,0x1c
  adc989:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  adc98c:	56                   	push   esi
  adc98d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  adc990:	8d 44 24 10          	lea    eax,[esp+0x10]
  adc994:	50                   	push   eax
  adc995:	51                   	push   ecx
  adc996:	8b ce                	mov    ecx,esi
  adc998:	e8 03 a8 fd ff       	call   0xab71a0
  adc99d:	6a 01                	push   0x1
  adc99f:	8d 54 24 14          	lea    edx,[esp+0x14]
  adc9a3:	52                   	push   edx
  adc9a4:	8b ce                	mov    ecx,esi
  adc9a6:	e8 05 98 fd ff       	call   0xab61b0
  adc9ab:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  adc9b0:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  adc9b3:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc9b8:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  adc9be:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc9c3:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  adc9c9:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  adc9cc:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  adc9d0:	f3 0f 11 41 04       	movss  DWORD PTR [ecx+0x4],xmm0
  adc9d5:	5e                   	pop    esi
  adc9d6:	8b e5                	mov    esp,ebp
  adc9d8:	5d                   	pop    ebp
  adc9d9:	c3                   	ret
