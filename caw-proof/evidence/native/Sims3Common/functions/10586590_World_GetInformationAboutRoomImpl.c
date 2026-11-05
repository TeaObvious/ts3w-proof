/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetInformationAboutRoomImpl. Export
   ordinal(s): 1333. Entry VA: 0x10586590. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C89. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
World_GetInformationAboutRoomImpl
          (undefined4 *param_1,int param_2,int param_3,undefined4 param_4,int param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int local_18 [6];
  
                    /* 0x586590  1333  World_GetInformationAboutRoomImpl */
  puVar2 = (undefined4 *)FUN_105863d0(local_18,param_2,param_3,param_4,param_5);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  param_1[2] = puVar2[2];
  param_1[3] = puVar2[3];
  uVar1 = puVar2[5];
  param_1[4] = puVar2[4];
  param_1[5] = uVar1;
  return param_1;
}

