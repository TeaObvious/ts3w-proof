/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Returns null if there is no
   user-tool manager, current tool is not4, active object tool is null or the selected command slot
   is empty. Otherwise selects slot60 versus5C by byte2F7 and returns its pointer at58. Physical
   return is the held native pointer, not a GUID. */

undefined4 HandTool_GetCurrentHeldPointer(void)

{
  int iVar1;
  
  iVar1 = FUN_00cef500();
  if (((iVar1 != 0) && (*(int *)(iVar1 + 0x30) == 4)) &&
     (iVar1 = *(int *)(iVar1 + 0x2c), iVar1 != 0)) {
    if (*(char *)(iVar1 + 0x2f7) == '\0') {
      iVar1 = *(int *)(iVar1 + 0x5c);
    }
    else {
      iVar1 = *(int *)(iVar1 + 0x60);
    }
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 0x58);
    }
  }
  return 0;
}

