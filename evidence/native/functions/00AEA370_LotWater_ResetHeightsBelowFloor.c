/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX terrain,
   plainRET. Requires existingC8water and+8floor pointers. Inclusive x/z loops fill x-major water
   with level-zero floor minus exact1.0 atF998F8, then clear existingCCpond-flag byte span.
   Complete165B57actualListing; no current dictionary retry/generation inference. Original managed
   LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical
   ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache
   policy is preserved. */

void __fastcall LotWater_ResetHeightsBelowFloor(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if ((*(int *)(param_1 + 200) != 0) && (*(int *)(param_1 + 8) != 0)) {
    iVar4 = 0;
    if (-1 < *(int *)(param_1 + 0xc)) {
      iVar3 = *(int *)(param_1 + 0x10);
      do {
        iVar2 = 0;
        if (-1 < iVar3) {
          do {
            iVar3 = *(int *)(param_1 + 8);
            iVar1 = *(int *)(iVar3 + 0x24);
            *(float *)(*(int *)(*(int *)(param_1 + 200) + 0xc) +
                      (*(int *)(*(int *)(param_1 + 200) + 8) * iVar4 + iVar2) * 4) =
                 *(float *)(*(int *)(iVar1 + 0x10) +
                           (((*(int *)(iVar3 + 0x18) - *(int *)(iVar3 + 0x10)) * *(int *)(iVar1 + 4)
                            + iVar4) * *(int *)(iVar1 + 8) + iVar2) * 4) - 1.0;
            iVar3 = *(int *)(param_1 + 0x10);
            iVar2 = iVar2 + 1;
          } while (iVar2 <= iVar3);
        }
        iVar4 = iVar4 + 1;
      } while (iVar4 <= *(int *)(param_1 + 0xc));
    }
    iVar4 = *(int *)(param_1 + 0xcc);
    if (iVar4 != 0) {
      memset(*(void **)(iVar4 + 0xc),0,*(int *)(iVar4 + 0x10) - (int)*(void **)(iVar4 + 0xc));
    }
  }
  return;
}

