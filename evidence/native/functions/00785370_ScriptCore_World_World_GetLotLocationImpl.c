/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163580 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetLotLocationImpl [assembly=ScriptCore token=0x060007B4; worldPos:
   Sims3.SimIFace.Vector3, location: Sims3.SimIFace.LotLocation&, roomDefinition:
   Sims3.SimIFace.eRoomDefinition; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 __cdecl
ScriptCore.World::World_GetLotLocationImpl
          (float param_1,undefined4 param_2,float param_3,int *param_4,int param_5)

{
  undefined2 uVar1;
  void *pvVar2;
  undefined4 uVar3;
  undefined4 local_34;
  float local_2c;
  float local_28;
  undefined4 local_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  uVar3 = 0;
  local_34 = 0;
  local_2c = DAT_00fab218;
  local_28 = DAT_00fab218;
  local_24 = 0;
  if (DAT_011edbc4 != (void *)0x0) {
    pvVar2 = FUN_00c687d0(DAT_011edbc4,param_1,param_3);
    if (pvVar2 != (void *)0x0) {
      local_34 = *(undefined4 *)((int)pvVar2 + 0x4c);
      uVar3 = *(undefined4 *)((int)pvVar2 + 0x48);
      local_20 = param_1;
      uStack_1c = param_2;
      fStack_18 = param_3;
      fStack_14 = param_1;
      FUN_00adc860(pvVar2,&local_20,&local_2c);
      uVar1 = FUN_00b482c0(*(void **)((int)pvVar2 + 0x298),&local_2c,param_5,0);
      *(undefined2 *)((int)param_4 + 10) = uVar1;
    }
  }
  *param_4 = (int)ROUND(local_2c) + -1 +
             (uint)((uint)(local_2c - (float)(int)ROUND(local_2c)) < 0x80000001);
  param_4[1] = (int)ROUND(local_28) + -1 +
               (uint)((uint)(local_28 - (float)(int)ROUND(local_28)) < 0x80000001);
  *(undefined1 *)(param_4 + 2) = (undefined1)local_24;
  return CONCAT44(local_34,uVar3);
}

