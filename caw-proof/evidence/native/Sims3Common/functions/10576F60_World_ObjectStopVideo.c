/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectStopVideo. Export ordinal(s): 1558.
   Entry VA: 0x10576f60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C3E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_ObjectStopVideo(undefined4 param_1,undefined4 param_2)

{
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
                    /* 0x576f60  1558  World_ObjectStopVideo */
  local_60 = 0x635a339e;
  local_5c = (undefined4 *)0x0;
  local_58 = param_1;
  local_54 = param_2;
  FUN_10489ee0(&local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

