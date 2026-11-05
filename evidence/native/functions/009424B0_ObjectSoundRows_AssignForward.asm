# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009424b0 <.text+0x5414b0>:
  9424b0:	56                   	push   esi
  9424b1:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  9424b5:	3b 74 24 0c          	cmp    esi,DWORD PTR [esp+0xc]
  9424b9:	74 3d                	je     0x9424f8
  9424bb:	53                   	push   ebx
  9424bc:	55                   	push   ebp
  9424bd:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  9424c1:	57                   	push   edi
  9424c2:	8d 5d 04             	lea    ebx,[ebp+0x4]
  9424c5:	8d 7e 04             	lea    edi,[esi+0x4]
  9424c8:	3b fb                	cmp    edi,ebx
  9424ca:	8b 06                	mov    eax,DWORD PTR [esi]
  9424cc:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
  9424cf:	74 0e                	je     0x9424df
  9424d1:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  9424d4:	8b 17                	mov    edx,DWORD PTR [edi]
  9424d6:	51                   	push   ecx
  9424d7:	52                   	push   edx
  9424d8:	8b cb                	mov    ecx,ebx
  9424da:	e8 31 34 ac ff       	call   0x405910
  9424df:	83 c6 14             	add    esi,0x14
  9424e2:	83 c5 14             	add    ebp,0x14
  9424e5:	83 c3 14             	add    ebx,0x14
  9424e8:	83 c7 14             	add    edi,0x14
  9424eb:	3b 74 24 18          	cmp    esi,DWORD PTR [esp+0x18]
  9424ef:	75 d7                	jne    0x9424c8
  9424f1:	5f                   	pop    edi
  9424f2:	8b c5                	mov    eax,ebp
  9424f4:	5d                   	pop    ebp
  9424f5:	5b                   	pop    ebx
  9424f6:	5e                   	pop    esi
  9424f7:	c3                   	ret
  9424f8:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  9424fc:	5e                   	pop    esi
  9424fd:	c3                   	ret
