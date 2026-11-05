/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 Physical ECX scene manager plus subtree/source and32-bit mask stack words, RET08.
   If this+29D byte iszero and this+8 nonzero, call006E3D50 before scratch collection. Lazily
   initialize actual process-global pointer-vector11D2B9C/BA0/BA4 and register its exit cleanup;
   reset logical end to begin each call, then006E4D30 fills it for actual source. Scan32-bit object
   pointers. MaskFFFFFFFF bypasses actual0060FC70 descriptor+44 getter; otherwise require bit
   intersection. Then TEST byte[object+40],42; return AL1 on first match, else AL0. No per-call
   owned snapshot, thread-safe scratch, decoded meanings for flag02/40, complete descendant
   algorithm, native texture hashes or Vulkan readiness are claimed. The actual producer/consumer
   path is700C20 component enumeration to this selected pending-bit test. */

uint __thiscall SceneManager_HasPendingSubtreeFlags(void *this,int param_1,uint param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  
  if ((*(char *)((int)this + 0x29d) == '\0') && (*(int *)((int)this + 8) != 0)) {
    FUN_006e3d50(*(int *)((int)this + 8));
  }
  if ((_DAT_011d2bac & 1) == 0) {
    _DAT_011d2bac = _DAT_011d2bac | 1;
    DAT_011d2b9c = (int *)0x0;
    DAT_011d2ba0 = (int *)0x0;
    _DAT_011d2ba4 = 0;
    _DAT_011d2ba8 = "Renderer/SceneManager";
    FUN_00f7f381((_onexit_t)&LAB_00f92d30);
  }
  DAT_011d2ba0 = DAT_011d2b9c;
  FUN_006e4d30(*(void **)((int)this + 8),&DAT_011d2b9c,param_1);
  piVar2 = DAT_011d2ba0;
  piVar4 = DAT_011d2b9c;
  piVar3 = DAT_011d2ba0;
  while( true ) {
    if (piVar4 == piVar2) {
      return (uint)piVar3 & 0xffffff00;
    }
                    /* Exact maskFFFFFFFF bypasses descriptor-mask getter; other masks require
                       nonzero bit intersection before object+40 pending bits42. */
    iVar1 = *piVar4;
                    /* TEST byte object+40,42; selected low-bit meanings not inferred from this
                       predicate alone. */
    if (((param_2 == 0xffffffff) ||
        (piVar3 = (int *)GetNativeDescriptorTypeName_Field44(iVar1), (param_2 & (uint)piVar3) != 0))
       && ((*(byte *)(iVar1 + 0x40) & 0x42) != 0)) break;
    piVar4 = piVar4 + 1;
  }
  return CONCAT31((int3)((uint)piVar3 >> 8),1);
}

