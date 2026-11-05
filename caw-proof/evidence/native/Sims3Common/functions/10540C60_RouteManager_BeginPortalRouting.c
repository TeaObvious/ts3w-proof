/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_BeginPortalRouting. Export
   ordinal(s): 559. Entry VA: 0x10540c60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RouteManager_BeginPortalRouting(int param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 in_stack_0000005c;
  undefined4 in_stack_00000060;
  undefined4 in_stack_00000064;
  undefined4 in_stack_00000068;
  int in_stack_ffffff98;
  int in_stack_ffffff9c;
  undefined4 in_stack_ffffffa0;
  undefined4 in_stack_ffffffa4;
  undefined4 in_stack_ffffffa8;
  undefined4 in_stack_ffffffac;
  undefined4 in_stack_ffffffb0;
  undefined4 in_stack_ffffffb4;
  undefined4 in_stack_ffffffb8;
  undefined4 in_stack_ffffffbc;
  undefined4 in_stack_ffffffc0;
  undefined4 in_stack_ffffffc4;
  undefined4 in_stack_ffffffc8;
  undefined4 in_stack_ffffffcc;
  undefined4 in_stack_ffffffd0;
  undefined4 in_stack_ffffffd4;
  undefined4 in_stack_ffffffd8;
  float in_stack_ffffffdc;
  undefined4 in_stack_ffffffe0;
  float in_stack_ffffffe4;
  
                    /* 0x540c60  559  RouteManager_BeginPortalRouting */
  puVar2 = (undefined4 *)&stack0x0000000c;
  puVar3 = (undefined4 *)&stack0xffffff98;
  for (iVar1 = 0x14; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = *puVar2;
    puVar2 = puVar2 + 1;
    puVar3 = puVar3 + 1;
  }
  FUN_1053e540(param_1,param_2,in_stack_ffffff98,in_stack_ffffff9c,in_stack_ffffffa0,
               in_stack_ffffffa4,in_stack_ffffffa8,in_stack_ffffffac,in_stack_ffffffb0,
               in_stack_ffffffb4,in_stack_ffffffb8,in_stack_ffffffbc,in_stack_ffffffc0,
               in_stack_ffffffc4,in_stack_ffffffc8,in_stack_ffffffcc,in_stack_ffffffd0,
               in_stack_ffffffd4,in_stack_ffffffd8,in_stack_ffffffdc,in_stack_ffffffe0,
               in_stack_ffffffe4,in_stack_0000005c,in_stack_00000060,in_stack_00000064,
               in_stack_00000068);
  return;
}

