# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007286d0 (ResourceRequests_ClearSlot)
Complete body envelope: 0x007286d0..0x0072877b (exclusive end)
Body ranges: [[007286d0, 0072877a]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007286d0 <.text+0x3276d0>:
  7286d0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7286d4:	53                   	push   ebx
  7286d5:	8b 18                	mov    ebx,DWORD PTR [eax]
  7286d7:	85 db                	test   ebx,ebx
  7286d9:	55                   	push   ebp
  7286da:	8b e9                	mov    ebp,ecx
  7286dc:	0f 84 94 00 00 00    	je     0x728776
  7286e2:	f6 c3 01             	test   bl,0x1
  7286e5:	57                   	push   edi
  7286e6:	74 60                	je     0x728748
  7286e8:	8b 4b ff             	mov    ecx,DWORD PTR [ebx-0x1]
  7286eb:	8b 43 03             	mov    eax,DWORD PTR [ebx+0x3]
  7286ee:	8b 7b 0f             	mov    edi,DWORD PTR [ebx+0xf]
  7286f1:	56                   	push   esi
  7286f2:	8d 73 ff             	lea    esi,[ebx-0x1]
  7286f5:	89 08                	mov    DWORD PTR [eax],ecx
  7286f7:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  7286fa:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7286fd:	85 c9                	test   ecx,ecx
  7286ff:	74 05                	je     0x728706
  728701:	e8 4a 2c e7 ff       	call   0x59b350
  728706:	8b 8d 98 03 00 00    	mov    ecx,DWORD PTR [ebp+0x398]
  72870c:	89 0e                	mov    DWORD PTR [esi],ecx
  72870e:	89 b5 98 03 00 00    	mov    DWORD PTR [ebp+0x398],esi
  728714:	8d 87 b8 00 00 00    	lea    eax,[edi+0xb8]
  72871a:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  72871d:	5e                   	pop    esi
  72871e:	75 4b                	jne    0x72876b
  728720:	8b cf                	mov    ecx,edi
  728722:	e8 19 ec ff ff       	call   0x727340
  728727:	51                   	push   ecx
  728728:	d9 1c 24             	fstp   DWORD PTR [esp]
  72872b:	6a 04                	push   0x4
  72872d:	83 c7 10             	add    edi,0x10
  728730:	57                   	push   edi
  728731:	8b cd                	mov    ecx,ebp
  728733:	e8 78 f6 ff ff       	call   0x727db0
  728738:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  72873c:	5f                   	pop    edi
  72873d:	5d                   	pop    ebp
  72873e:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
  728744:	5b                   	pop    ebx
  728745:	c2 08 00             	ret    0x8
  728748:	f6 c3 03             	test   bl,0x3
  72874b:	75 1e                	jne    0x72876b
  72874d:	83 c5 40             	add    ebp,0x40
  728750:	8b cd                	mov    ecx,ebp
  728752:	e8 69 95 db ff       	call   0x4e1cc0
  728757:	53                   	push   ebx
  728758:	ff 54 24 18          	call   DWORD PTR [esp+0x18]
  72875c:	83 c4 04             	add    esp,0x4
  72875f:	68 44 e3 ff 00       	push   0xffe344
  728764:	8b cd                	mov    ecx,ebp
  728766:	e8 95 94 db ff       	call   0x4e1c00
  72876b:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  72876f:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
  728775:	5f                   	pop    edi
  728776:	5d                   	pop    ebp
  728777:	5b                   	pop    ebx
  728778:	c2 08 00             	ret    0x8
