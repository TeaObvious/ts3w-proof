/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX cluster, no stack args, RET, ALsuccess. Calls global6E3710
   option producer, optionally03E5D0F9 for template+172, selects treebillboard for declaration+4F8
   into+4C8, then appends53D5FB15 for+504. Both required. No direct FSAALevel read; complete
   upstream global-vector producers remain a separate boundary.
   
   Analyst PC1.67 original contract. Global inputs6E3710(11D2530) and name-selector shadow70C2F0
   precede stored SSET evaluation. Optional template byte172 emits03E5D0F9(weight3,
   OPT_NORMAL_MAPPED); second slot504 appends53D5FB15(weight6, OPT_HORIZONTAL) after first slot4C8.
   Base finite ordinary context with no seasonal/shadow options selects0/6, or3/9 with template
   flag. Not a captured runtime draw. */

uint __fastcall Flora_SelectBillboardShaderDefinitions(int param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  undefined4 *extraout_EAX;
  undefined4 *extraout_EAX_00;
  undefined1 local_res0;
  undefined4 local_d8;
  undefined4 *local_d4;
  undefined4 *local_d0;
  undefined4 local_c0 [48];
  
  local_d4 = local_c0;
  local_d0 = local_c0;
  if (DAT_011d2530 != (void *)0x0) {
    RenderSystem_AppendGlobalShaderOptions(DAT_011d2530,&local_d4);
  }
  puVar1 = local_d0;
  if (*(char *)(*(int *)(param_1 + 0x4b0) + 0x172) != '\0') {
    local_d8 = 0x3e5d0f9;
    if (local_d0 < &local_res0) {
      puVar1 = local_d0 + 1;
      if (local_d0 != (undefined4 *)0x0) {
        *local_d0 = 0x3e5d0f9;
      }
    }
    else {
      FUN_00452bf0(&local_d4,local_d0,&local_d8);
      puVar1 = local_d0;
    }
  }
  local_d0 = puVar1;
  pvVar2 = ShaderSystem_SelectByNameAndDeclaration
                     ("treebillboard",*(void **)(param_1 + 0x4f8),(int *)&local_d4);
  *(void **)(param_1 + 0x4c8) = pvVar2;
  local_d8 = 0x53d5fb15;
  if (local_d0 < &local_res0) {
    puVar1 = local_d0 + 1;
    if (local_d0 != (undefined4 *)0x0) {
      *local_d0 = 0x53d5fb15;
    }
  }
  else {
    FUN_00452bf0(&local_d4,local_d0,&local_d8);
    puVar1 = local_d0;
  }
  local_d0 = puVar1;
  pvVar2 = ShaderSystem_SelectByNameAndDeclaration
                     ("treebillboard",*(void **)(param_1 + 0x4f8),(int *)&local_d4);
  *(void **)(param_1 + 0x504) = pvVar2;
  if ((*(int *)(param_1 + 0x4c8) == 0) || (pvVar2 == (void *)0x0)) {
    if ((local_d4 != (undefined4 *)0x0) && (local_d4 != local_c0)) {
      Memory_FreeIfNonNull(local_d4);
      local_d4 = extraout_EAX;
    }
    return (uint)local_d4 & 0xffffff00;
  }
  if ((local_d4 != (undefined4 *)0x0) && (local_d4 != local_c0)) {
    Memory_FreeIfNonNull(local_d4);
    local_d4 = extraout_EAX_00;
  }
  return CONCAT31((int3)((uint)local_d4 >> 8),1);
}

