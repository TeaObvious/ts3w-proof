/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX driver,four physical stack dwords RET10
   (fourth unused by this body). Scans16-byte rows+130..+134 for exact three dwords; removes first
   matching row by shifting, ignores one-shot byte. Equality compares raw32bit identities; does not
   mean wildcard removal. No lock inside leaf; actual native caller-thread synchronization remains
   bounded. */

void __thiscall SacsEventFilters_RemoveFirstExact(void *this,int param_1,int param_2,int param_3)

{
  int *piVar1;
  
  piVar1 = *(int **)((int)this + 0x130);
  if (piVar1 != *(int **)((int)this + 0x134)) {
    while (((*piVar1 != param_1 || (piVar1[1] != param_2)) || (piVar1[2] != param_3))) {
      piVar1 = piVar1 + 4;
      if (piVar1 == *(int **)((int)this + 0x134)) {
        return;
      }
    }
    if (piVar1 + 4 < *(int **)((int)this + 0x134)) {
      FUN_007fff00(piVar1 + 4,*(int **)((int)this + 0x134),piVar1);
    }
    *(int *)((int)this + 0x134) = *(int *)((int)this + 0x134) + -0x10;
  }
  return;
}

