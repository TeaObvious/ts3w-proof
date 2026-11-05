/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete instruction body: AL-only predicate; upper24 EAX bits unspecified. Requires
   pending decision-graph-record vector begin+11C==end+120, helper7F3F90(this+44) ALtrue, then every
   eight-byte walker row [this+10,this+14) has pointed walker+24==0. Constructor804B00 and
   processor802530 establish vector endpoints, not numeric counters. Body ranges800260..80028C
   and800290..8002A3 exclude80028D..80028F. This predicate does not independently establish no
   queued request/controller/held clip. */

uint __fastcall SACS_DriverIsQuiescentAL_800260(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x11c);
  if ((uVar1 == *(uint *)(param_1 + 0x120)) &&
     (uVar1 = SACS_GraphEntriesHaveNoBit0_7F3F90(param_1 + 0x44), (char)uVar1 != '\0')) {
    uVar1 = *(uint *)(param_1 + 0x10);
    while( true ) {
      if (uVar1 == *(uint *)(param_1 + 0x14)) {
        return CONCAT31((int3)(uVar1 >> 8),1);
      }
      if (*(int *)(*(int *)(uVar1 + 4) + 0x24) != 0) break;
      uVar1 = uVar1 + 8;
    }
  }
  return uVar1 & 0xffffff00;
}

