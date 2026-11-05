/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetIsPaintingTextureInUse. Export
   ordinal(s): 1581. Entry VA: 0x10577040. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C48. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_SetIsPaintingTextureInUse
          (undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4,char param_5,
          char param_6)

{
  void *this;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x577040  1581  World_SetIsPaintingTextureInUse */
  this = (void *)FUN_107cd180();
  if (this != (void *)0x0) {
    local_10 = param_3;
    local_c = param_4;
    local_8 = param_1;
    local_4 = param_2;
    FUN_107cc000(this,&local_10,param_5,param_6);
  }
  return;
}

