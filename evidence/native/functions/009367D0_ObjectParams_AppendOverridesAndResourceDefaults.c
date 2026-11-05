/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX resource/default owner, two stack
   pointers, RET8. Iterates64-byte override records in input order; nameHash+0, kindBYTE+3C. Exact
   jump table93686C:0 byte-string(+4),1 inline16-byte key(+18),2 manager virtual+CC resolves
   rawword+38 into FINAL type4 (even result0),3 skips,4 rawword+38 into FINAL type5. Missing manager
   skips kind2. Then appends own direct/default resource expansion through9365E0. This input record
   kind is NOT proved to be managed wire UInt32 encoding; upstream wire decoder remains open. */

void __thiscall
ObjectParams_AppendOverridesAndResourceDefaults(void *this,uint *overrideRange,void *builder)

{
  uint *puVar1;
  int *word0;
  uint resolvedWord;
  uint *puVar2;
  
  word0 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar1 = (uint *)overrideRange[1];
  for (puVar2 = (uint *)*overrideRange; puVar2 != puVar1; puVar2 = puVar2 + 0x10) {
    switch((char)puVar2[0xf]) {
    case '\0':
      ParameterBuilder_AppendByteString(builder,*puVar2,(char *)puVar2[1]);
      break;
    case '\x01':
      ParameterBuilder_AppendResourceKey16(builder,*puVar2,puVar2 + 6);
      break;
    case '\x02':
      if (word0 != (int *)0x0) {
        resolvedWord = (**(code **)(*word0 + 0xcc))(word0,puVar2[0xe]);
        ParameterBuilder_AppendResolvedWordType4(builder,*puVar2,resolvedWord);
      }
      break;
    case '\x04':
      ParameterBuilder_AppendRawWordType5(builder,*puVar2,puVar2[0xe]);
    }
  }
  ObjectParams_AppendDirectAndResourceExpansion(this,builder);
  return;
}

