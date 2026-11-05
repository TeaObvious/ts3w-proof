/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX catalog,
   one16-byte resource-key pointer, RET4. Dispatch key.type+8: OBJD319E4F1D uses map+C0,
   OBJK02DC343F map+D4; exact key first, then7D77B0 alternate; absent/other type returns zero.
   Result is borrowed product pointer; no retain in this body. Map collision ordering is established
   separately by C919E0. */

undefined4 __thiscall ObjectCatalog_FindByTypedKey(void *this,uint *param_1)

{
  int iVar1;
  int local_18;
  int local_14;
  uint local_10 [4];
  
                    /* Analyst: Typed lookup dispatch; key words+8 type,+C group. */
  if (param_1[2] == 0x319e4f1d) {
    FUN_00c8db20((void *)((int)this + 0xc0),&local_18,param_1);
    iVar1 = local_18;
    if (local_18 == local_14) {
      iVar1 = *(int *)((int)this + 0xc4);
    }
    if (iVar1 != *(int *)((int)this + 0xc4)) {
LAB_00c8ebee:
      return *(undefined4 *)(iVar1 + 0x10);
    }
    ResourceKey_MakeAlternate(local_10,param_1);
    FUN_00c8db20((void *)((int)this + 0xc0),&local_18,local_10);
    if (local_18 == local_14) {
      local_18 = *(int *)((int)this + 0xc4);
    }
    if (local_18 != *(int *)((int)this + 0xc4)) {
      return *(undefined4 *)(local_18 + 0x10);
    }
  }
  else if (param_1[2] == 0x2dc343f) {
    FUN_00c8db20((void *)((int)this + 0xd4),&local_18,param_1);
    iVar1 = local_18;
    if (local_18 == local_14) {
      iVar1 = *(int *)((int)this + 0xd8);
    }
    if (iVar1 != *(int *)((int)this + 0xd8)) goto LAB_00c8ebee;
    ResourceKey_MakeAlternate(local_10,param_1);
    FUN_00c8db20((void *)((int)this + 0xd4),&local_18,local_10);
    if (local_18 == local_14) {
      local_18 = *(int *)((int)this + 0xd8);
    }
    if (local_18 != *(int *)((int)this + 0xd8)) {
      return *(undefined4 *)(local_18 + 0x10);
    }
  }
  return 0;
}

