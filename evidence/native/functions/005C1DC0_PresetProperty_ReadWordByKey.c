/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tattoo property result contract. ECX property container plus3stack words RET0C,
   ALBoolean. Iterates DWORD references from+4C to+50, resolves each through5C1800 (one pushed raw
   word/caller pops4; detailed shared resolver unexpanded), compares resolved entry+4 with keyWord
   by identity. Missing ->AL0 and no outputs. Found -> writes DWORD typeOut=entryDWORD+8 &FF, then
   virtual entry+4 with ECX entry plus(wordOut,constant4); returns its AL. No comparison with
   caller's incoming typeOut2, no name hash, alpha clamp or guaranteed copy success inferred.
   Per-call virtual ABI retains output buffer mutation in actual C. */

bool __thiscall PresetProperty_ReadWordByKey(void *this,uint keyWord,uint *typeOut,uint *wordOut)

{
  uint *puVar1;
  bool bVar2;
  int *arg0;
  uint *puVar3;
  
  puVar3 = *(uint **)((int)this + 0x4c);
  puVar1 = *(uint **)((int)this + 0x50);
  while( true ) {
    if (puVar3 == puVar1) {
      return false;
    }
    arg0 = FUN_005c1800(*puVar3);
    if (arg0[1] == keyWord) break;
    puVar3 = puVar3 + 1;
  }
  *typeOut = arg0[2] & 0xff;
  bVar2 = (**(code **)(*arg0 + 4))(arg0,wordOut,4);
  return bVar2;
}

