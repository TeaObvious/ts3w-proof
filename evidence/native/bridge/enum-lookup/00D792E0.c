/* Final Ghidra decompilation after semantic name/comment readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records the complete existing owned body; generated C is not a callable replacement.
   Function-local instruction notes explain the saved body/plate; generated statements are unchanged. */

/* Analyst PC1.67 slot accessor for UInt64-key/field-pointer temporary pairs (16-byte stride). Calls
   A862D0(begin,end,key,byte[receiver+10h]); candidate==end or unsigned lexicographic key<candidate
   (high then low) constructs key64/zero field value and calls D78920. Otherwise returns candidate+8
   without insertion; equal candidates reuse the existing value slot, overwritten by the enum
   caller. EAX points to the field slot; RET 04. Search/insert ordering, general duplicate
   coalescing and alias/cache count invariants remain dependencies. */

uint * __thiscall UInt64FieldPairs_GetValueSlot(void *this,uint *param_1)

{
  /* Instruction contract: The returned EAX points to a writable field-pointer slot, not to the field record. Equal search candidates take the no-insertion path. */
  /* Instruction contract: Global key uniqueness/order depends on the search/insert child bodies. The caller overwrites this returned slot with the current field pointer. */

  uint *puVar1;
  uint *puVar2;
  uint local_10;
  uint local_c;
  undefined4 local_8;

  puVar1 = *(uint **)((int)this + 4);
  puVar2 = (uint *)FUN_00a862d0(*(uint **)this,(int)puVar1,param_1);
  if ((puVar2 == puVar1) ||
     ((param_1[1] <= puVar2[1] && ((param_1[1] < puVar2[1] || (*param_1 < *puVar2)))))) {
    local_10 = *param_1;
    local_c = param_1[1];
    local_8 = 0;
    puVar2 = (uint *)FUN_00d78920(this,puVar2,&local_10);
  }
  return puVar2 + 2;
}
