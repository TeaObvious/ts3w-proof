# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b53130,0x00b53170); analyst name LotPartition_SetRoomMarkerSeed.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b53130 <.text+0x752130>:
  b53130:	56                   	push   esi
  b53131:	33 c0                	xor    eax,eax
  b53133:	57                   	push   edi
  b53134:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  b53138:	83 ff 03             	cmp    edi,0x3
  b5313b:	0f 95 c0             	setne  al
  b5313e:	8b f1                	mov    esi,ecx
  b53140:	83 e8 01             	sub    eax,0x1
  b53143:	83 e0 02             	and    eax,0x2
  b53146:	8b 4c 86 44          	mov    ecx,DWORD PTR [esi+eax*4+0x44]
  b5314a:	85 c9                	test   ecx,ecx
  b5314c:	74 1d                	je     0xb5316b
  b5314e:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  b53152:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  b53156:	52                   	push   edx
  b53157:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  b5315b:	50                   	push   eax
  b5315c:	52                   	push   edx
  b5315d:	57                   	push   edi
  b5315e:	e8 2d 2a 0b 00       	call   0xc05b90
  b53163:	57                   	push   edi
  b53164:	8b ce                	mov    ecx,esi
  b53166:	e8 55 ff ff ff       	call   0xb530c0
  b5316b:	5f                   	pop    edi
  b5316c:	5e                   	pop    esi
  b5316d:	c2 10 00             	ret    0x10
