/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_CanSeeObjectImpl. Export ordinal(s): 1264.
   Entry VA: 0x10581f40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CBE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
World_CanSeeObjectImpl
          (float param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,char param_6)

{
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  
                    /* 0x581f40  1264  World_CanSeeObjectImpl */
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = "Routing/IgnoreList";
  local_30 = param_1;
  uStack_2c = param_2;
  uStack_28 = param_3;
  fStack_24 = param_1;
  FUN_1057c250(&local_30,param_4,param_5,param_6,&local_20,(int *)0x0);
  return;
}

