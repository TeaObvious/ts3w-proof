/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name LotRouting_GatherSegmentFootprints.
   Original Ghidra database symbol: FUN_00632640; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00632640,00632729); 0 envelope gap bytes are not owned instructions.
*/

/* 632644 reads queryRecord+54, then lot GUID words+48/+4c. Missing owner/GUID/admission and absent selected quadtree produce AL0; the earliest failure clears only AL. 6326C8..DE passes a null filter context when queryRecord+44 is zero, otherwise queryRecord itself. Both endpoint XZ conversions occur before the null-tree check. The final six-word RET is 0x18. */

uint __thiscall
LotRouting_GatherSegmentFootprints(void *this,uint param_1,float *param_2,float *param_3,float param_4,int param_5,
            char param_6)

{
  uint uVar1;
  uint uVar2;
  bool bVar3;
  uint uVar4;
  void *this_00;
  float local_18;
  float local_14;
  float local_c;
  float local_8;
  
  uVar4 = *(uint *)(param_1 + 0x54);
  if (uVar4 != 0) {
    uVar1 = *(uint *)(uVar4 + 0x48);
    uVar2 = *(uint *)(uVar4 + 0x4c);
    if (uVar1 != 0 || uVar2 != 0) {
      uVar4 = LotRouting_HasAdmittedLotRecord(this,uVar1,uVar2);
      if ((char)uVar4 != '\0') {
        this_00 = (void *)FUN_00630330(this,uVar1,uVar2,(int)param_2[2]);
        FUN_0062f560(this,uVar1,uVar2,param_2,&local_c);
        FUN_0062f560(this,uVar1,uVar2,param_3,&local_18);
        if (this_00 != (void *)0x0) {
          bVar3 = FootprintQuadtree_GatherSegmentFootprints(this_00,-(uint)(*(int *)(param_1 + 0x44) != 0) & param_1,local_c,
                               local_8,local_18,local_14,param_4,param_5,param_6);
          if (bVar3) {
            return 1;
          }
        }
        return 0;
      }
    }
  }
  return uVar4 & 0xffffff00;
}
