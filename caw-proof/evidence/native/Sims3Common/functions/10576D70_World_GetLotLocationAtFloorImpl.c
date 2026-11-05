/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetLotLocationAtFloorImpl. Export
   ordinal(s): 1345. Entry VA: 0x10576d70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C0D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl
World_GetLotLocationAtFloorImpl
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
  
                    /* 0x576d70  1345  World_GetLotLocationAtFloorImpl */
  uVar3 = 0;
  local_34 = 0;
  local_2c = DAT_10aae184;
  local_28 = DAT_10aae184;
  local_24 = 0;
  if (DAT_10c700c4 != (void *)0x0) {
    pvVar2 = FUN_1023d070(DAT_10c700c4,param_1,param_3);
    if (pvVar2 != (void *)0x0) {
      local_34 = *(undefined4 *)((int)pvVar2 + 0x4c);
      uVar3 = *(undefined4 *)((int)pvVar2 + 0x48);
      local_20 = param_1;
      uStack_1c = param_2;
      fStack_18 = param_3;
      fStack_14 = param_1;
      FUN_100a3200(pvVar2,&local_20,&local_2c);
      if (*(void **)((int)pvVar2 + 0x298) != (void *)0x0) {
        uVar1 = FUN_101117d0(*(void **)((int)pvVar2 + 0x298),&local_2c,param_5,0);
        *(undefined2 *)((int)param_4 + 10) = uVar1;
      }
    }
  }
  *param_4 = (int)ROUND(local_2c) + -1 +
             (uint)((uint)(local_2c - (float)(int)ROUND(local_2c)) < 0x80000001);
  param_4[1] = (int)ROUND(local_28) + -1 +
               (uint)((uint)(local_28 - (float)(int)ROUND(local_28)) < 0x80000001);
  *(undefined1 *)(param_4 + 2) = (undefined1)local_24;
  return CONCAT44(local_34,uVar3);
}

