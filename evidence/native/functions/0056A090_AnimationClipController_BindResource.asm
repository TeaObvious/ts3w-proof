# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056a090, 0x0056a165); analyst name AnimationClipController_BindResource.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056a090 <.text+0x169090>:
  56a090:	f6 05 e0 e7 1c 01 01 	test   BYTE PTR ds:0x11ce7e0,0x1
  56a097:	56                   	push   esi
  56a098:	57                   	push   edi
  56a099:	8b f1                	mov    esi,ecx
  56a09b:	75 19                	jne    0x56a0b6
  56a09d:	83 0d e0 e7 1c 01 01 	or     DWORD PTR ds:0x11ce7e0,0x1
  56a0a4:	68 50 fb fa 00       	push   0xfafb50
  56a0a9:	e8 42 60 26 00       	call   0x7d00f0
  56a0ae:	83 c4 04             	add    esp,0x4
  56a0b1:	a3 dc e7 1c 01       	mov    ds:0x11ce7dc,eax
  56a0b6:	8b be d0 05 00 00    	mov    edi,DWORD PTR [esi+0x5d0]
  56a0bc:	53                   	push   ebx
  56a0bd:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  56a0c1:	3b df                	cmp    ebx,edi
  56a0c3:	74 1f                	je     0x56a0e4
  56a0c5:	85 db                	test   ebx,ebx
  56a0c7:	74 08                	je     0x56a0d1
  56a0c9:	8b 03                	mov    eax,DWORD PTR [ebx]
  56a0cb:	8b 10                	mov    edx,DWORD PTR [eax]
  56a0cd:	8b cb                	mov    ecx,ebx
  56a0cf:	ff d2                	call   edx
  56a0d1:	85 ff                	test   edi,edi
  56a0d3:	89 9e d0 05 00 00    	mov    DWORD PTR [esi+0x5d0],ebx
  56a0d9:	74 09                	je     0x56a0e4
  56a0db:	8b 07                	mov    eax,DWORD PTR [edi]
  56a0dd:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  56a0e0:	8b cf                	mov    ecx,edi
  56a0e2:	ff d2                	call   edx
  56a0e4:	8b 8e d0 05 00 00    	mov    ecx,DWORD PTR [esi+0x5d0]
  56a0ea:	85 c9                	test   ecx,ecx
  56a0ec:	5b                   	pop    ebx
  56a0ed:	74 71                	je     0x56a160
  56a0ef:	e8 0c 0a 01 00       	call   0x57ab00
  56a0f4:	d9 9e e8 05 00 00    	fstp   DWORD PTR [esi+0x5e8]
  56a0fa:	8b 8e d0 05 00 00    	mov    ecx,DWORD PTR [esi+0x5d0]
  56a100:	e8 4b 09 01 00       	call   0x57aa50
  56a105:	d1 e8                	shr    eax,1
  56a107:	24 01                	and    al,0x1
  56a109:	88 86 fb 05 00 00    	mov    BYTE PTR [esi+0x5fb],al
  56a10f:	8b 86 d0 05 00 00    	mov    eax,DWORD PTR [esi+0x5d0]
  56a115:	8b 48 48             	mov    ecx,DWORD PTR [eax+0x48]
  56a118:	85 c9                	test   ecx,ecx
  56a11a:	8d be f0 04 00 00    	lea    edi,[esi+0x4f0]
  56a120:	74 0a                	je     0x56a12c
  56a122:	51                   	push   ecx
  56a123:	8b cf                	mov    ecx,edi
  56a125:	e8 a6 fe ff ff       	call   0x569fd0
  56a12a:	eb 0d                	jmp    0x56a139
  56a12c:	8b 40 4c             	mov    eax,DWORD PTR [eax+0x4c]
  56a12f:	6a 0a                	push   0xa
  56a131:	50                   	push   eax
  56a132:	8b cf                	mov    ecx,edi
  56a134:	e8 27 f3 00 00       	call   0x579460
  56a139:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  56a13c:	8b 11                	mov    edx,DWORD PTR [ecx]
  56a13e:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  56a141:	ff d0                	call   eax
  56a143:	8b 0d dc e7 1c 01    	mov    ecx,DWORD PTR ds:0x11ce7dc
  56a149:	50                   	push   eax
  56a14a:	51                   	push   ecx
  56a14b:	8b cf                	mov    ecx,edi
  56a14d:	e8 8e da 00 00       	call   0x577be0
  56a152:	8b cf                	mov    ecx,edi
  56a154:	e8 67 dd 00 00       	call   0x577ec0
  56a159:	8b ce                	mov    ecx,esi
  56a15b:	e8 40 f4 ff ff       	call   0x5695a0
  56a160:	5f                   	pop    edi
  56a161:	5e                   	pop    esi
  56a162:	c2 04 00             	ret    0x4
