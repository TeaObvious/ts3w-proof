/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 resource-system key-name map lookup:
   obtains manager0072F140; null manager/list yields0; walks list in order through virtual+3C and
   calls0072F230, first nonzero string wins. Forwarded key storage/ABI is inferred by call chain,
   not a fully typed Ghidra signature. Mount-generation caching/background prewarm and
   skip-on-invalid-map are project mechanisms, not properties of this leaf. */

int KeyNames_FindFirstMappedName(void)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  
  piVar2 = (int *)FUN_0072f140();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x3c))();
  if (puVar3 != (undefined4 *)0x0) {
    for (puVar1 = (undefined4 *)*puVar3; puVar1 != puVar3; puVar1 = (undefined4 *)*puVar1) {
      iVar4 = KeyNameMap_FindTextByKey((void *)puVar1[2],(uint *)&stack0x00000004);
      if (iVar4 != 0) {
        return iVar4;
      }
    }
  }
  return 0;
}

