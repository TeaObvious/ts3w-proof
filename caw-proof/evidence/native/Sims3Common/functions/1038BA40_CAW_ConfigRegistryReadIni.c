/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Loads one original INI through the original section/key
   iterator and invokes the section/value callbacks, then resolves registry inheritance. Does not
   establish hardcoded resource type names. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __thiscall CAW_ConfigRegistryReadIni(void *this,wchar_t *param_1)

{
  undefined4 uVar1;
  undefined4 *local_4a4;
  void *local_4a0;
  undefined4 local_49c;
  undefined4 local_498;
  undefined4 local_494 [293];
  
  FUN_105c3bf0(local_494,param_1);
  local_4a4 = local_494;
  local_49c = 0;
  local_498 = 0;
  local_4a0 = this;
  FUN_10924b50(local_4a4,CAW_ConfigRegistryLoadSection,&local_4a4);
  FUN_1038b3b0(this);
  uVar1 = local_498;
  FUN_105c3b10(local_494);
  return uVar1;
}

