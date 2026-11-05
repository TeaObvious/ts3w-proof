/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 vector16 count closure: ECX vector begin/end/capacity; one physical target-count
   DWORD, RET4. Compare unsigned target with (end-begin)>>4; grow inserts at current end
   through5CFCF0, shrink/equal erases [begin+(target<<4),end) through73E750. TREE7B7D90 clears
   logical end before this call. Valid cold growth yields end=begin+N*16; target0 stays empty.
   Stored inferred types/return/CC remain unchanged. No allocator/OOM safe-false or overflow safety
   guarantee is inferred. */

void __thiscall Vector16_ResizeCount(void *this,uint param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 local_20 [7];
  
  iVar1 = *(int *)this;
  puVar2 = *(undefined4 **)((int)this + 4);
  if ((uint)((int)puVar2 - iVar1 >> 4) < param_1) {
    Vector16_InsertRepeated
              (this,puVar2,(undefined4 *)(param_1 - ((int)puVar2 - iVar1 >> 4)),local_20);
    return;
  }
  Vector16_EraseRange(this,(undefined4 *)(param_1 * 0x10 + iVar1),puVar2);
  return;
}

