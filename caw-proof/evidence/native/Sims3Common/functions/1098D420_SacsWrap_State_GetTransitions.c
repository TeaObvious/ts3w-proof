/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_State_GetTransitions. Export ordinal(s):
   2236. Entry VA: 0x1098d420. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000D32. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl SacsWrap_State_GetTransitions(int param_1,uint param_2,int param_3)

{
  undefined4 *puVar1;
  uint uVar2;
  undefined4 *puVar3;
  
                    /* 0x98d420  2236  SacsWrap_State_GetTransitions */
  if ((param_1 != 0) && ((param_2 == 0 || (param_3 != 0)))) {
    puVar3 = *(undefined4 **)(param_1 + 0x3c);
    puVar1 = *(undefined4 **)(param_1 + 0x40);
    uVar2 = 0;
    if (puVar3 != puVar1) {
      do {
        if (uVar2 < param_2) {
          *(undefined4 *)(param_3 + uVar2 * 4) = *puVar3;
        }
        puVar3 = puVar3 + 1;
        uVar2 = uVar2 + 1;
      } while (puVar3 != puVar1);
      return uVar2;
    }
  }
  return 0;
}

