/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note. ECX owner; compares both stack GUID words in eight-byte entries from+58 through exclusive+5C. Returns Boolean in AL, RET8; upperEAX is not a normalized Boolean. Writer/semantic role of this distinct vector remains open; do not name it slot-target list solely from membership use. Display alias RoutingOptions_ContainsGuidVector58 is a reference-file annotation; database symbols are unchanged. */

undefined4 __thiscall FUN_0081c580(void *this,int param_1,int param_2)

{
  int *piVar1;
  
  for (piVar1 = *(int **)((int)this + 0x58);
      (piVar1 != *(int **)((int)this + 0x5c) && ((*piVar1 != param_1 || (piVar1[1] != param_2))));
      piVar1 = piVar1 + 2) {
  }
  return CONCAT31((int3)((uint)piVar1 >> 8),piVar1 != *(int **)((int)this + 0x5c));
}

