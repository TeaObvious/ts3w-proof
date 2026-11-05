# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00728600 (ResourceRequests_Construct)
Complete body envelope: 0x00728600..0x007286a9 (exclusive end)
Body ranges: [[00728600, 007286a8]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00728600 <.text+0x327600>:
  728600:	53                   	push   ebx
  728601:	56                   	push   esi
  728602:	8b f1                	mov    esi,ecx
  728604:	8d 4e 04             	lea    ecx,[esi+0x4]
  728607:	c7 06 f0 e3 ff 00    	mov    DWORD PTR [esi],0xffe3f0
  72860d:	57                   	push   edi
  72860e:	33 ff                	xor    edi,edi
  728610:	89 39                	mov    DWORD PTR [ecx],edi
  728612:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  728615:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  728618:	89 79 0c             	mov    DWORD PTR [ecx+0xc],edi
  72861b:	89 79 10             	mov    DWORD PTR [ecx+0x10],edi
  72861e:	89 79 14             	mov    DWORD PTR [ecx+0x14],edi
  728621:	89 79 18             	mov    DWORD PTR [ecx+0x18],edi
  728624:	89 79 1c             	mov    DWORD PTR [ecx+0x1c],edi
  728627:	89 79 20             	mov    DWORD PTR [ecx+0x20],edi
  72862a:	89 79 24             	mov    DWORD PTR [ecx+0x24],edi
  72862d:	57                   	push   edi
  72862e:	c7 41 28 8c e4 ff 00 	mov    DWORD PTR [ecx+0x28],0xffe48c
  728635:	e8 16 f1 ff ff       	call   0x727750
  72863a:	6a 01                	push   0x1
  72863c:	57                   	push   edi
  72863d:	8d 4e 40             	lea    ecx,[esi+0x40]
  728640:	c7 46 38 00 00 40 01 	mov    DWORD PTR [esi+0x38],0x1400000
  728647:	e8 a4 96 db ff       	call   0x4e1cf0
  72864c:	68 fc 02 00 00       	push   0x2fc
  728651:	8d 9e 80 00 00 00    	lea    ebx,[esi+0x80]
  728657:	57                   	push   edi
  728658:	53                   	push   ebx
  728659:	89 bb 00 03 00 00    	mov    DWORD PTR [ebx+0x300],edi
  72865f:	e8 34 6c 85 00       	call   0xf7f298
  728664:	c7 83 fc 02 00 00 ff 	mov    DWORD PTR [ebx+0x2fc],0xffffffff
  72866b:	ff ff ff 
  72866e:	8d 86 8c 03 00 00    	lea    eax,[esi+0x38c]
  728674:	c7 40 08 5c e4 ff 00 	mov    DWORD PTR [eax+0x8],0xffe45c
  72867b:	89 00                	mov    DWORD PTR [eax],eax
  72867d:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  728680:	83 c4 0c             	add    esp,0xc
  728683:	89 be 98 03 00 00    	mov    DWORD PTR [esi+0x398],edi
  728689:	89 be 9c 03 00 00    	mov    DWORD PTR [esi+0x39c],edi
  72868f:	5f                   	pop    edi
  728690:	c7 86 a0 03 00 00 38 	mov    DWORD PTR [esi+0x3a0],0xffe438
  728697:	e4 ff 00 
  72869a:	c7 86 a4 03 00 00 c6 	mov    DWORD PTR [esi+0x3a4],0x1c6
  7286a1:	01 00 00 
  7286a4:	8b c6                	mov    eax,esi
  7286a6:	5e                   	pop    esi
  7286a7:	5b                   	pop    ebx
  7286a8:	c3                   	ret
