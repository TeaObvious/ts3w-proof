/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Query_GetObjectsOnLot. Export ordinal(s): 535.
   Entry VA: 0x1053ac30. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600000E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Query_GetObjectsOnLot(undefined4 param_1,int param_2,int param_3,uint param_4)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined1 *local_1020;
  undefined1 *local_101c;
  undefined1 *local_1018;
  char *local_1014;
  undefined1 *local_1010;
  undefined1 local_1008 [4092];
  undefined4 uStack_c;
  undefined1 local_8 [4];
  
                    /* 0x53ac30  535  Query_GetObjectsOnLot */
  uStack_c = 0x1053ac40;
  local_1020 = local_1008;
  local_1018 = local_8;
  uVar3 = 0;
  local_1014 = "Scripting/HandleArray";
  local_101c = local_1020;
  local_1010 = local_1020;
  iVar1 = FUN_1053aa20(param_2,param_3,param_4,(int *)&local_1020);
  if (iVar1 != 0) {
    piVar2 = (int *)FUN_1055b120();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_1020,(int)local_101c - (int)local_1020 >> 3)
    ;
  }
  if ((local_1020 != (undefined1 *)0x0) && (local_1020 != local_1010)) {
    FUN_10918e90((int)local_1020);
  }
  return uVar3;
}

