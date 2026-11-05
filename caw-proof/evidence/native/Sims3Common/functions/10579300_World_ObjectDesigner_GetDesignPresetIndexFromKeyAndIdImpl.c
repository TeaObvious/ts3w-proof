/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl. Export ordinal(s): 1487. Entry VA:
   0x10579300. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C6F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl
          (undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4,uint param_5)

{
  void *this;
  uint *puVar1;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x579300  1487  World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl */
  puVar1 = &local_10;
  local_c = param_4;
  local_8 = param_1;
  local_10 = param_3;
  local_4 = param_2;
  this = (void *)FUN_100f8460();
  FUN_100faff0(this,puVar1,param_5);
  return;
}

