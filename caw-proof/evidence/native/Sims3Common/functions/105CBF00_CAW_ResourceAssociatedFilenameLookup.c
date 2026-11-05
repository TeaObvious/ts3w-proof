/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Iterates the original registry collection for an associated
   instance filename. This lookup alone does not establish map-loading ownership, lifetime or
   priority among all registry producers. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

int CAW_ResourceAssociatedFilenameLookup(void)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  
  piVar2 = (int *)FUN_105219c0();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x3c))();
  if (puVar3 != (undefined4 *)0x0) {
    for (puVar1 = (undefined4 *)*puVar3; puVar1 != puVar3; puVar1 = (undefined4 *)*puVar1) {
      iVar4 = FUN_10521c90((void *)puVar1[2],(uint *)&stack0x00000004);
      if (iVar4 != 0) {
        return iVar4;
      }
    }
  }
  return 0;
}

