# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x005660d0, 0x00566160); analyst name Animation_SendCompletedFromStop.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005660d0 <.text+0x1650d0>:
  5660d0:	83 ec 1c             	sub    esp,0x1c
  5660d3:	53                   	push   ebx
  5660d4:	56                   	push   esi
  5660d5:	8b f1                	mov    esi,ecx
  5660d7:	33 db                	xor    ebx,ebx
  5660d9:	3b f3                	cmp    esi,ebx
  5660db:	74 04                	je     0x5660e1
  5660dd:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  5660e1:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  5660e4:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  5660e8:	51                   	push   ecx
  5660e9:	8b ce                	mov    ecx,esi
  5660eb:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  5660ef:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  5660f3:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  5660f7:	88 5c 24 24          	mov    BYTE PTR [esp+0x24],bl
  5660fb:	88 5c 24 25          	mov    BYTE PTR [esp+0x25],bl
  5660ff:	88 5c 24 26          	mov    BYTE PTR [esp+0x26],bl
  566103:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  566107:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  56610b:	e8 e0 fc ff ff       	call   0x565df0
  566110:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  566114:	3b cb                	cmp    ecx,ebx
  566116:	74 24                	je     0x56613c
  566118:	8d 41 04             	lea    eax,[ecx+0x4]
  56611b:	55                   	push   ebp
  56611c:	8b d0                	mov    edx,eax
  56611e:	83 cd ff             	or     ebp,0xffffffff
  566121:	f0 0f c1 2a          	lock xadd DWORD PTR [edx],ebp
  566125:	4d                   	dec    ebp
  566126:	5d                   	pop    ebp
  566127:	75 13                	jne    0x56613c
  566129:	ba 01 00 00 00       	mov    edx,0x1
  56612e:	87 10                	xchg   DWORD PTR [eax],edx
  566130:	3b cb                	cmp    ecx,ebx
  566132:	74 08                	je     0x56613c
  566134:	8b 01                	mov    eax,DWORD PTR [ecx]
  566136:	8b 10                	mov    edx,DWORD PTR [eax]
  566138:	6a 01                	push   0x1
  56613a:	ff d2                	call   edx
  56613c:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  56613f:	83 c0 ff             	add    eax,0xffffffff
  566142:	3b c3                	cmp    eax,ebx
  566144:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  566147:	75 11                	jne    0x56615a
  566149:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  566150:	8b 06                	mov    eax,DWORD PTR [esi]
  566152:	8b 10                	mov    edx,DWORD PTR [eax]
  566154:	6a 01                	push   0x1
  566156:	8b ce                	mov    ecx,esi
  566158:	ff d2                	call   edx
  56615a:	5e                   	pop    esi
  56615b:	5b                   	pop    ebx
  56615c:	83 c4 1c             	add    esp,0x1c
  56615f:	c3                   	ret
