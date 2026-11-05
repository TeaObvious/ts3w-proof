/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note. ECX owner; compares both stack GUID words in eight-byte entries from+38 through exclusive+3C. Returns Boolean in AL, RET8; upperEAX is not a normalized Boolean. Writer/semantic role and lifetime of this vector remain separate from the membership reader. Display alias RoutingOptions_ContainsGuidVector38 is a reference-file annotation; database symbols are unchanged. */

undefined4 __thiscall FUN_0081c5c0(void *this,int param_1,int param_2)

{
  int *piVar1;
  
  for (piVar1 = *(int **)((int)this + 0x38);
      (piVar1 != *(int **)((int)this + 0x3c) && ((*piVar1 != param_1 || (piVar1[1] != param_2))));
      piVar1 = piVar1 + 2) {
  }
  return CONCAT31((int3)((uint)piVar1 >> 8),piVar1 != *(int **)((int)this + 0x3c));
}

