# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00ec1000..00ec1014; ScriptCore.GameUtils::GameUtils_FreezeLotLODs
  ec1000:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  ec1006:	85 c9                	test   ecx,ecx
  ec1008:	74 0a                	je     0xec1014
  ec100a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  ec100e:	50                   	push   eax
  ec100f:	e8 6c e5 d9 ff       	call   0xc5f580
  ec1014:	c3                   	ret
