/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Object value. Cdecl stack4 object or null. Tests flags against live11EA0F8; script branch forwards both GUID words to791290, non-script typed catalog path CVTTSS2SI price+58. Then934260/95A610 component count may multiply low32 value. Source and lifetime of flags, full tree-count component and exceptional price conversion remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B01D70_FUN_00b01d70.asm
 */

int __cdecl FUN_00b01d70(void *param_1)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = 0;
  if (param_1 != (void *)0x0) {
    if ((*(uint *)((int)param_1 + 0x2c) & DAT_011ea0f8) == 0) {
      iVar2 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
      if (iVar2 != 0) {
        iVar3 = (int)*(float *)(iVar2 + 0x58);
      }
    }
    else {
      iVar3 = FUN_00791290();
    }
    pvVar1 = Object_GetComponentByMask(param_1,DAT_011ea290);
    if (pvVar1 != (void *)0x0) {
      iVar2 = TreeComponent_GetEntryCount((int)pvVar1);
      return iVar2 * iVar3;
    }
  }
  return iVar3;
}

