# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00adc860, 0x00adc8ba); analyst name Lot_WorldPositionToLocalLocation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00adc860 <.text+0x6db860>:
  adc860:	55                   	push   ebp
  adc861:	8b ec                	mov    ebp,esp
  adc863:	83 e4 f0             	and    esp,0xfffffff0
  adc866:	83 ec 1c             	sub    esp,0x1c
  adc869:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  adc86c:	56                   	push   esi
  adc86d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  adc870:	8d 44 24 10          	lea    eax,[esp+0x10]
  adc874:	50                   	push   eax
  adc875:	51                   	push   ecx
  adc876:	8b ce                	mov    ecx,esi
  adc878:	e8 23 a9 fd ff       	call   0xab71a0
  adc87d:	6a 00                	push   0x0
  adc87f:	8d 54 24 14          	lea    edx,[esp+0x14]
  adc883:	52                   	push   edx
  adc884:	8b ce                	mov    ecx,esi
  adc886:	e8 35 95 fd ff       	call   0xab5dc0
  adc88b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  adc890:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  adc893:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc898:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  adc89e:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc8a3:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  adc8a9:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  adc8ac:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  adc8b0:	f3 0f 11 41 04       	movss  DWORD PTR [ecx+0x4],xmm0
  adc8b5:	5e                   	pop    esi
  adc8b6:	8b e5                	mov    esp,ebp
  adc8b8:	5d                   	pop    ebp
  adc8b9:	c3                   	ret
