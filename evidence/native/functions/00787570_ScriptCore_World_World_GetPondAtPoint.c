/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163528 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetPondAtPoint [assembly=ScriptCore token=0x060007A9; lotId:
   System.UInt64, worldPos: Sims3.SimIFace.Vector3; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered
   pond-at-point wrapper complete167B58Listing. Absentworld/lot/manager returns0; world path C608F0
   nonnegative index+1, negative0. Lot path B636F0 uses full world vector and returns itsID. Plain
   RET caller cleanup; retain actual ID widths and current gate/output policy. Original managed
   LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical
   ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache
   policy is preserved. */

int __cdecl
ScriptCore.World::World_GetPondAtPoint
          (int param_1,int param_2,float param_3,undefined4 param_4,float param_5)

{
  int iVar1;
  int *piVar2;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    if (param_1 == 0 && param_2 == 0) {
      iVar1 = WorldPonds_FindFirstContainingIndex(DAT_011edbc4,param_3,param_5,'\x01');
      if (-1 < iVar1) {
        return iVar1 + 1;
      }
    }
    else {
      piVar2 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
      if ((piVar2 != (int *)0x0) && ((void *)piVar2[0xb2] != (void *)0x0)) {
        local_20 = param_3;
        uStack_1c = param_4;
        fStack_18 = param_5;
        fStack_14 = param_3;
        iVar1 = LotPonds_FindIdAtWorldPoint((void *)piVar2[0xb2],&local_20);
        return iVar1;
      }
    }
  }
  return 0;
}

