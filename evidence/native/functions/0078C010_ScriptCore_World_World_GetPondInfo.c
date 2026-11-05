/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163518 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetPondInfo [assembly=ScriptCore token=0x060007A8; pondId: System.UInt32,
   lotId: System.UInt64, pondInfo: Sims3.SimIFace.PondInfo&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered PondInfo
   wrapper complete379B113Listing. World IDs1..count only: writes ID+70/water+6C/four bound corners,
   leaves other output fields untouched. Lot path native manager+2C8 then B636B0
   signextendedshort-ID search. False returnsAL0 without output clearing; plainRET. Original managed
   metadata field types do not prove raw packing. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

undefined4 __cdecl
ScriptCore.World::World_GetPondInfo(uint param_1,int param_2,int param_3,void *param_4)

{
  int iVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  void *this;
  uint in_EAX;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    if (param_2 == 0 && param_3 == 0) {
      if (param_1 != 0) {
        param_2 = FUN_00c60950((int)DAT_011edbc4);
        if (param_1 <= (uint)param_2) {
          iVar5 = FUN_00c60850(this,param_1 - 1);
          param_2 = 0;
          if (iVar5 != 0) {
            uVar6 = *(undefined4 *)(iVar5 + 0x218);
            *(uint *)((int)param_4 + 0x70) = param_1;
            *(undefined4 *)((int)param_4 + 0x6c) = uVar6;
            iVar1 = *(int *)(iVar5 + 0x21c);
            iVar2 = *(int *)(iVar5 + 0x220);
            fVar3 = (float)(*(int *)(iVar5 + 0x228) + -1);
            fVar4 = (float)(*(int *)(iVar5 + 0x224) + -1);
            FUN_0076bf70((void *)((int)param_4 + 0xc),fVar4,uVar6,fVar3);
            FUN_0076bf70((void *)((int)param_4 + 0x18),fVar4,uVar6,(float)iVar2);
            FUN_0076bf70((void *)((int)param_4 + 0x24),(float)iVar1,uVar6,(float)iVar2);
            uVar6 = FUN_0076bf70((void *)((int)param_4 + 0x30),(float)iVar1,uVar6,fVar3);
            return CONCAT31((int3)((uint)uVar6 >> 8),1);
          }
        }
      }
      return param_2 & 0xffffff00;
    }
    piVar7 = FUN_00c62810(DAT_011edbc4,param_2,param_3,(int *)0x0);
    in_EAX = 0;
    if ((piVar7 != (int *)0x0) && (in_EAX = 0, (void *)piVar7[0xb2] != (void *)0x0)) {
      uVar6 = LotPonds_TryWriteInfoForId((void *)piVar7[0xb2],(short)param_1,param_4);
      return uVar6;
    }
  }
  return in_EAX & 0xffffff00;
}

