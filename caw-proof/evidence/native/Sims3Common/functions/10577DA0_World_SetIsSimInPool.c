/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetIsSimInPool. Export ordinal(s): 1582.
   Entry VA: 0x10577da0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CEF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
World_SetIsSimInPool(undefined4 param_1,undefined4 param_2,char param_3,undefined4 param_4)

{
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50;
  undefined4 local_4c;
  
                    /* 0x577da0  1582  World_SetIsSimInPool */
  local_58 = param_1;
  local_50 = (uint)(param_3 != '\0');
  local_60 = 0x1c8880a3;
  local_5c = (undefined4 *)0x0;
  local_54 = param_2;
  local_4c = param_4;
  FUN_10489ee0(&local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return;
}

