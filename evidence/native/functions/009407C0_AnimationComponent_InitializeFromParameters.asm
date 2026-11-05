# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009407c0,0x0094083d); analyst name AnimationComponent_InitializeFromParameters.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

009407c0 <.text+0x53f7c0>:
  9407c0:	83 ec 10             	sub    esp,0x10
  9407c3:	53                   	push   ebx
  9407c4:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  9407c8:	56                   	push   esi
  9407c9:	57                   	push   edi
  9407ca:	8d 44 24 0c          	lea    eax,[esp+0xc]
  9407ce:	33 ff                	xor    edi,edi
  9407d0:	50                   	push   eax
  9407d1:	8b f1                	mov    esi,ecx
  9407d3:	68 4a 53 15 84       	push   0x8415534a
  9407d8:	8b cb                	mov    ecx,ebx
  9407da:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  9407de:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  9407e2:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  9407e6:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  9407ea:	e8 a1 8e ff ff       	call   0x939690
  9407ef:	84 c0                	test   al,al
  9407f1:	74 0d                	je     0x940800
  9407f3:	57                   	push   edi
  9407f4:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  9407f8:	51                   	push   ecx
  9407f9:	8b ce                	mov    ecx,esi
  9407fb:	e8 00 e3 ff ff       	call   0x93eb00
  940800:	6a 04                	push   0x4
  940802:	68 47 56 a1 23       	push   0x23a15647
  940807:	8b cb                	mov    ecx,ebx
  940809:	e8 02 8e ff ff       	call   0x939610
  94080e:	85 c0                	test   eax,eax
  940810:	74 07                	je     0x940819
  940812:	81 4e 2c 00 04 00 00 	or     DWORD PTR [esi+0x2c],0x400
  940819:	6a 04                	push   0x4
  94081b:	68 99 b8 84 f0       	push   0xf084b899
  940820:	8b cb                	mov    ecx,ebx
  940822:	e8 e9 8d ff ff       	call   0x939610
  940827:	85 c0                	test   eax,eax
  940829:	b0 01                	mov    al,0x1
  94082b:	74 07                	je     0x940834
  94082d:	81 4e 2c 00 00 00 80 	or     DWORD PTR [esi+0x2c],0x80000000
  940834:	5f                   	pop    edi
  940835:	5e                   	pop    esi
  940836:	5b                   	pop    ebx
  940837:	83 c4 10             	add    esp,0x10
  94083a:	c2 04 00             	ret    0x4
