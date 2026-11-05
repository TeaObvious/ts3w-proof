# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x008199b0, 0x00819a68); analyst name RoutingJob_InitializeFromCandidates.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

008199b0 <.text+0x4189b0>:
  8199b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  8199b4:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  8199b8:	53                   	push   ebx
  8199b9:	55                   	push   ebp
  8199ba:	56                   	push   esi
  8199bb:	8b f1                	mov    esi,ecx
  8199bd:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  8199c1:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  8199c4:	c7 06 90 22 02 01    	mov    DWORD PTR [esi],0x1022290
  8199ca:	33 c0                	xor    eax,eax
  8199cc:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  8199cf:	89 4e 14             	mov    DWORD PTR [esi+0x14],ecx
  8199d2:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  8199d5:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  8199d8:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  8199db:	c7 46 24 c0 22 02 01 	mov    DWORD PTR [esi+0x24],0x10222c0
  8199e2:	57                   	push   edi
  8199e3:	8d 7e 18             	lea    edi,[esi+0x18]
  8199e6:	8d 5e 28             	lea    ebx,[esi+0x28]
  8199e9:	89 03                	mov    DWORD PTR [ebx],eax
  8199eb:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  8199ee:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  8199f1:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  8199f5:	c7 43 0c a0 22 02 01 	mov    DWORD PTR [ebx+0xc],0x10222a0
  8199fc:	8d 6e 40             	lea    ebp,[esi+0x40]
  8199ff:	8b cd                	mov    ecx,ebp
  819a01:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  819a04:	89 46 3c             	mov    DWORD PTR [esi+0x3c],eax
  819a07:	e8 84 2e 00 00       	call   0x81c890
  819a0c:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  819a10:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  819a14:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  819a18:	89 8e c0 00 00 00    	mov    DWORD PTR [esi+0xc0],ecx
  819a1e:	6a ff                	push   0xffffffff
  819a20:	8d 8e d0 00 00 00    	lea    ecx,[esi+0xd0]
  819a26:	89 96 c8 00 00 00    	mov    DWORD PTR [esi+0xc8],edx
  819a2c:	89 86 cc 00 00 00    	mov    DWORD PTR [esi+0xcc],eax
  819a32:	e8 b9 0f ce ff       	call   0x4fa9f0
  819a37:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  819a3b:	51                   	push   ecx
  819a3c:	8b cf                	mov    ecx,edi
  819a3e:	e8 4d ee f3 ff       	call   0x758890
  819a43:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  819a47:	52                   	push   edx
  819a48:	8b cb                	mov    ecx,ebx
  819a4a:	e8 41 ee f3 ff       	call   0x758890
  819a4f:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  819a53:	85 c0                	test   eax,eax
  819a55:	74 08                	je     0x819a5f
  819a57:	50                   	push   eax
  819a58:	8b cd                	mov    ecx,ebp
  819a5a:	e8 31 36 00 00       	call   0x81d090
  819a5f:	5f                   	pop    edi
  819a60:	8b c6                	mov    eax,esi
  819a62:	5e                   	pop    esi
  819a63:	5d                   	pop    ebp
  819a64:	5b                   	pop    ebx
  819a65:	c2 28 00             	ret    0x28
