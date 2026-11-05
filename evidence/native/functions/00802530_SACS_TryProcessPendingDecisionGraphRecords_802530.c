/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete57-instruction body: reentry byte driver+148 nonzero returnsAL0. Otherwise set
   byte1, walk12-byte records from+11C to+120 and call801CF0(driver,record). On ALtrue shift later
   records left in original order and decrement end by12, rechecking current record; on false
   advance record and clear local aggregate-success byte. Finally clear+148 and return aggregate
   result in AL; upper24 bits unspecified. Directly establishes begin/end/record stride and removal
   order, not numeric counters or the meaning/correctness of801CF0. No capacity-word writer is
   admitted here. */

int __fastcall SACS_TryProcessPendingDecisionGraphRecords_802530(void *param_1)

{
  bool bVar1;
  undefined4 in_EAX;
  uint3 uVar3;
  undefined4 *puVar2;
  undefined3 extraout_var;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined1 local_1;
  
  uVar3 = (uint3)((uint)in_EAX >> 8);
  if (*(char *)((int)param_1 + 0x148) == '\0') {
    puVar5 = *(undefined4 **)((int)param_1 + 0x11c);
    puVar6 = *(undefined4 **)((int)param_1 + 0x120);
    puVar2 = (undefined4 *)CONCAT31(uVar3,1);
    local_1 = 1;
    *(undefined1 *)((int)param_1 + 0x148) = 1;
    if (puVar5 != puVar6) {
      puVar7 = puVar5 + 3;
      do {
        bVar1 = SacsDriver_ProcessGraphWalkRecord(param_1,puVar5);
        puVar2 = (undefined4 *)CONCAT31(extraout_var,bVar1);
        if (bVar1) {
          puVar6 = *(undefined4 **)((int)param_1 + 0x120);
          if (puVar7 < puVar6) {
            puVar4 = puVar7 + -3;
            puVar2 = puVar7;
            do {
              *puVar4 = *puVar2;
              puVar4[1] = puVar2[1];
              puVar4[2] = puVar2[2];
              puVar2 = puVar2 + 3;
              puVar4 = puVar4 + 3;
            } while (puVar2 != puVar6);
          }
          *(int *)((int)param_1 + 0x120) = *(int *)((int)param_1 + 0x120) + -0xc;
          puVar6 = *(undefined4 **)((int)param_1 + 0x120);
        }
        else {
          puVar5 = puVar5 + 3;
          local_1 = 0;
          puVar7 = puVar7 + 3;
        }
      } while (puVar5 != puVar6);
    }
    *(undefined1 *)((int)param_1 + 0x148) = 0;
    return CONCAT31((int3)((uint)puVar2 >> 8),local_1);
  }
  return (uint)uVar3 << 8;
}

