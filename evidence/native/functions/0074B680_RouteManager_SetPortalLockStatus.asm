# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b680,0x0074b6b9); analyst name RouteManager_SetPortalLockStatus.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b680 <.text+0x34a680>:
  74b680:	e8 6b d6 0d 00       	call   0x828cf0
  74b685:	85 c0                	test   eax,eax
  74b687:	74 2d                	je     0x74b6b6
  74b689:	8b c8                	mov    ecx,eax
  74b68b:	e8 30 df 0d 00       	call   0x8295c0
  74b690:	85 c0                	test   eax,eax
  74b692:	74 22                	je     0x74b6b6
  74b694:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  74b698:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  74b69c:	51                   	push   ecx
  74b69d:	52                   	push   edx
  74b69e:	8b c8                	mov    ecx,eax
  74b6a0:	e8 db 4c ee ff       	call   0x630380
  74b6a5:	85 c0                	test   eax,eax
  74b6a7:	74 0d                	je     0x74b6b6
  74b6a9:	8a 4c 24 0c          	mov    cl,BYTE PTR [esp+0xc]
  74b6ad:	88 88 8f 00 00 00    	mov    BYTE PTR [eax+0x8f],cl
  74b6b3:	b0 01                	mov    al,0x1
  74b6b5:	c3                   	ret
  74b6b6:	32 c0                	xor    al,al
  74b6b8:	c3                   	ret
