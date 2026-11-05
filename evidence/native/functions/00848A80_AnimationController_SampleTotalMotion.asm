# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00848a80, 0x00848a9d); analyst name AnimationController_SampleTotalMotion.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00848a80 <.text+0x447a80>:
  848a80:	51                   	push   ecx
  848a81:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  848a85:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  848a89:	8d 04 24             	lea    eax,[esp]
  848a8c:	50                   	push   eax
  848a8d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  848a91:	51                   	push   ecx
  848a92:	52                   	push   edx
  848a93:	50                   	push   eax
  848a94:	e8 77 fd ff ff       	call   0x848810
  848a99:	83 c4 14             	add    esp,0x14
  848a9c:	c3                   	ret
