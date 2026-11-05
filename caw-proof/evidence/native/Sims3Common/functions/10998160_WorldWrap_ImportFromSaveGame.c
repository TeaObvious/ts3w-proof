/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ImportFromSaveGame. Export ordinal(s):
   2667. Entry VA: 0x10998160. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004FB. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_ImportFromSaveGame(int param_1,short *param_2)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x998160  2667  WorldWrap_ImportFromSaveGame */
  if ((param_2 != (short *)0x0) && (param_1 != 0)) {
    iVar1 = FUN_1006ee60();
    if ((iVar1 != 0) && ((undefined4 *)(param_1 + 8) != (undefined4 *)0x0)) {
      uVar2 = FUN_10070ec0((undefined4 *)(param_1 + 8),param_2);
      if ((char)uVar2 != '\0') {
        return 1;
      }
    }
  }
  return 0;
}

