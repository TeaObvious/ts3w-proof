/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tattoo property result contract. ECX preset context plus3stack args, RET0C,
   ALBoolean. Null context+28 ->false without output writes. Converts supplied narrow name
   through5F5550, passes its returned key word to5C1DC0 together with both output pointers,
   preserves child AL across5F56E0 key cleanup. Key conversion/interning and preset parser lifetime
   are not fully established; names are analyst role labels. */

bool __thiscall PresetProperty_ReadWordByName(void *this,char *name,uint *typeOut,uint *wordOut)

{
  bool bVar1;
  uint keyWord;
  
  if (*(int *)((int)this + 0x28) == 0) {
    return false;
  }
  keyWord = FUN_005f5550((byte *)name);
  bVar1 = PresetProperty_ReadWordByKey(*(void **)((int)this + 0x28),keyWord,typeOut,wordOut);
  FUN_005f56e0();
  return bVar1;
}

