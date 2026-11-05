# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009380a0, 0x0093810d); analyst name ObjectRegistry_GenerateUnusedGuid.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009380a0 <.text+0x5370a0>:
  9380a0:	83 ec 14             	sub    esp,0x14
  9380a3:	53                   	push   ebx
  9380a4:	55                   	push   ebp
  9380a5:	56                   	push   esi
  9380a6:	57                   	push   edi
  9380a7:	6a 00                	push   0x0
  9380a9:	8b d9                	mov    ebx,ecx
  9380ab:	e8 50 7d e9 ff       	call   0x7cfe00
  9380b0:	83 c4 04             	add    esp,0x4
  9380b3:	8d 6b 10             	lea    ebp,[ebx+0x10]
  9380b6:	8b f0                	mov    esi,eax
  9380b8:	8d 44 24 14          	lea    eax,[esp+0x14]
  9380bc:	50                   	push   eax
  9380bd:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  9380c1:	8b fa                	mov    edi,edx
  9380c3:	51                   	push   ecx
  9380c4:	8b cd                	mov    ecx,ebp
  9380c6:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  9380ca:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  9380ce:	e8 4d fa ff ff       	call   0x937b20
  9380d3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  9380d7:	3b 83 34 10 00 00    	cmp    eax,DWORD PTR [ebx+0x1034]
  9380dd:	74 22                	je     0x938101
  9380df:	85 c0                	test   eax,eax
  9380e1:	74 1e                	je     0x938101
  9380e3:	8d 54 24 10          	lea    edx,[esp+0x10]
  9380e7:	52                   	push   edx
  9380e8:	c7 44 24 14 01 00 00 00 	mov    DWORD PTR [esp+0x14],0x1
  9380f0:	e8 3b 97 ba ff       	call   0x4e1830
  9380f5:	6a 00                	push   0x0
  9380f7:	e8 04 7d e9 ff       	call   0x7cfe00
  9380fc:	83 c4 08             	add    esp,0x8
  9380ff:	eb b5                	jmp    0x9380b6
  938101:	8b d7                	mov    edx,edi
  938103:	5f                   	pop    edi
  938104:	8b c6                	mov    eax,esi
  938106:	5e                   	pop    esi
  938107:	5d                   	pop    ebp
  938108:	5b                   	pop    ebx
  938109:	83 c4 14             	add    esp,0x14
  93810c:	c3                   	ret
