# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00789950 <.text+0x388950>:
  789950:	83 ec 10             	sub    esp,0x10
  789953:	e8 18 dc 1a 00       	call   0x937570
  789958:	85 c0                	test   eax,eax
  78995a:	74 57                	je     0x7899b3
  78995c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  789960:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  789964:	51                   	push   ecx
  789965:	52                   	push   edx
  789966:	8b c8                	mov    ecx,eax
  789968:	e8 13 e6 1a 00       	call   0x937f80
  78996d:	85 c0                	test   eax,eax
  78996f:	74 42                	je     0x7899b3
  789971:	8b 0d c4 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fc4
  789977:	51                   	push   ecx
  789978:	8b c8                	mov    ecx,eax
  78997a:	e8 e1 a8 1a 00       	call   0x934260
  78997f:	85 c0                	test   eax,eax
  789981:	74 30                	je     0x7899b3
  789983:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  789987:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  78998b:	89 14 24             	mov    DWORD PTR [esp],edx
  78998e:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  789992:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  789996:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  78999a:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  78999e:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  7899a2:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  7899a6:	52                   	push   edx
  7899a7:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  7899ab:	51                   	push   ecx
  7899ac:	8b c8                	mov    ecx,eax
  7899ae:	e8 dd fa 1b 00       	call   0x949490
  7899b3:	83 c4 10             	add    esp,0x10
  7899b6:	c3                   	ret
