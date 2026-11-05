/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ScriptProxy_GetResourceKeyImpl;
   World_ObjectGetProductKey. Export ordinal(s): 737; 1525. Entry VA: 0x10578bb0. Original managed
   P/Invoke MethodDef(s): ScriptCore:0x06000C14; ScriptCore:0x06000F90. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl
ScriptProxy_GetResourceKeyImpl(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined1 local_10 [8];
  undefined4 *puStack_8;
  
                    /* 0x578bb0  737  ScriptProxy_GetResourceKeyImpl
                       0x578bb0  1525  World_ObjectGetProductKey */
  piVar2 = (int *)FUN_1055b120();
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xbc))(local_10,param_2,param_3);
  *puStack_8 = *puVar3;
  puStack_8[1] = puVar3[1];
  uVar1 = puVar3[3];
  puStack_8[2] = puVar3[2];
  puStack_8[3] = uVar1;
  return puStack_8;
}

