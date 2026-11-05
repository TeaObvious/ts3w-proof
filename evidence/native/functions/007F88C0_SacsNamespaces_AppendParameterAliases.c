/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX node,two stack dwords RET8. Iterates
   numbered NamespaceMap%dFrom / NamespaceMap%dTo (UTF16 literals01020138/01020104); first two
   hashes use cached definitions, later names are formatted. Stops at first zero/missing From. A
   bound To scene entity inserts alias through005823C0. Invoked after selected authored CLIP
   namespace rows and before direct actors in007F8DC0. Cached lookup/error helper behavior remains
   bounded. */

void __thiscall SacsNamespaces_AppendParameterAliases(void *this,void *param_1,void *param_2)

{
  wint_t *pwVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  int *piVar5;
  uint uVar6;
  wint_t *pwVar7;
  int local_28;
  wint_t *local_20;
  undefined1 *local_1c;
  undefined2 *local_18;
  undefined4 local_14;
  wint_t *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  undefined4 local_4;
  
  uVar6 = 0;
  do {
    if (uVar6 < 2) {
      iVar2 = FUN_007f3b40(*(int *)((int)this + 0x28));
      local_28 = FUN_007fd860(iVar2);
    }
    else {
      local_14 = 0x1020128;
      local_20 = (wint_t *)&DAT_011c8e54;
      local_1c = &DAT_011c8e54;
      local_18 = &DAT_011c8e56;
      FUN_0040e840(&local_20,(ushort *)0x1020138);
      pwVar1 = local_20;
      pwVar7 = local_20;
      pvVar4 = (void *)FUN_007f3b40(*(int *)((int)this + 0x28));
      local_28 = FUN_007fda50(pvVar4,pwVar7);
      if ((2 < (int)((int)local_18 - (int)pwVar1 & 0xfffffffeU)) && (pwVar1 != (wint_t *)0x0)) {
        Memory_FreeIfNonNull(pwVar1);
      }
    }
    if (local_28 != 0) {
      iVar2 = FUN_007f3b90(param_1,local_28);
      if (uVar6 < 2) {
        iVar3 = FUN_007f3b40(*(int *)((int)this + 0x28));
        iVar3 = FUN_007fd860(iVar3);
      }
      else {
        local_4 = 0x1020128;
        local_10 = (wint_t *)&DAT_011c8e54;
        local_c = &DAT_011c8e54;
        local_8 = &DAT_011c8e56;
        FUN_0040e840(&local_10,(ushort *)0x1020104);
        pwVar1 = local_10;
        pwVar7 = local_10;
        pvVar4 = (void *)FUN_007f3b40(*(int *)((int)this + 0x28));
        iVar3 = FUN_007fda50(pvVar4,pwVar7);
        if ((2 < (int)((int)local_8 - (int)pwVar1 & 0xfffffffeU)) && (pwVar1 != (wint_t *)0x0)) {
          Memory_FreeIfNonNull(pwVar1);
        }
      }
      if (iVar3 != 0) {
        iVar3 = FUN_007f3b90(param_1,iVar3);
        piVar5 = (int *)SacsContext_FindActorByHash(param_1,iVar3);
        if (piVar5 != (int *)0x0) {
          AnimationNamespaces_InsertFirstBinding(param_2,iVar2,piVar5);
        }
      }
    }
    uVar6 = uVar6 + 1;
  } while (local_28 != 0);
  return;
}

