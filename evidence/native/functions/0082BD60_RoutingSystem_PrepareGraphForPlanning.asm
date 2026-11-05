# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0082bd60, 0x0082bdcf); analyst name RoutingSystem_PrepareGraphForPlanning.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082bd60 <.text+0x42ad60>:
  82bd60:	57                   	push   edi
  82bd61:	8b f9                	mov    edi,ecx
  82bd63:	8b 87 5c 09 00 00    	mov    eax,DWORD PTR [edi+0x95c]
  82bd69:	80 b8 0e 01 00 00 00 	cmp    BYTE PTR [eax+0x10e],0x0
  82bd70:	74 5b                	je     0x82bdcd
  82bd72:	8b 8f 64 09 00 00    	mov    ecx,DWORD PTR [edi+0x964]
  82bd78:	53                   	push   ebx
  82bd79:	56                   	push   esi
  82bd7a:	6a 00                	push   0x0
  82bd7c:	e8 1f ca 43 00       	call   0xc687a0
  82bd81:	8b 30                	mov    esi,DWORD PTR [eax]
  82bd83:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  82bd86:	3b f3                	cmp    esi,ebx
  82bd88:	74 34                	je     0x82bdbe
  82bd8a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  82bd90:	8b 06                	mov    eax,DWORD PTR [esi]
  82bd92:	85 c0                	test   eax,eax
  82bd94:	74 21                	je     0x82bdb7
  82bd96:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  82bd99:	8b 40 4c             	mov    eax,DWORD PTR [eax+0x4c]
  82bd9c:	8b 8f 5c 09 00 00    	mov    ecx,DWORD PTR [edi+0x95c]
  82bda2:	50                   	push   eax
  82bda3:	52                   	push   edx
  82bda4:	e8 d7 64 e0 ff       	call   0x632280
  82bda9:	84 c0                	test   al,al
  82bdab:	74 0a                	je     0x82bdb7
  82bdad:	8b 0e                	mov    ecx,DWORD PTR [esi]
  82bdaf:	51                   	push   ecx
  82bdb0:	8b cf                	mov    ecx,edi
  82bdb2:	e8 d9 f1 ff ff       	call   0x82af90
  82bdb7:	83 c6 04             	add    esi,0x4
  82bdba:	3b f3                	cmp    esi,ebx
  82bdbc:	75 d2                	jne    0x82bd90
  82bdbe:	8b 97 5c 09 00 00    	mov    edx,DWORD PTR [edi+0x95c]
  82bdc4:	5e                   	pop    esi
  82bdc5:	c6 82 0e 01 00 00 00 	mov    BYTE PTR [edx+0x10e],0x0
  82bdcc:	5b                   	pop    ebx
  82bdcd:	5f                   	pop    edi
  82bdce:	c3                   	ret
