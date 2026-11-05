/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 texture-tag binding consumer. Physical ECX builder plus view pointer, entry
   ordinal, low tag DWORD and high tag DWORD; RET10. Compose lookup DWORD=(high<<16)|low without
   masking low, then lookup builder+8C map. A non-end iterator with nonnull value at node+8 updates
   the view entry by00799380. Otherwise005CF4B0(builder,low,high) returns a key whose fourDWORDs are
   copied locally and passed to00799320. Caller005CF740 supplies(1F,4) or(1F,8),
   yielding0004001F/0008001F. This function owns neither the tagmap lifecycle nor the returned
   reference; allocation/texture composition and unresolved external lifetimes are not inferred. */

void __thiscall
CasModelBuilder_BindTextureTag(void *this,void *param_1,int param_2,uint param_3,uint param_4)

{
  uint uVar1;
  undefined4 *puVar2;
  int local_18 [2];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  uVar1 = param_4;
                    /* 32-bit composite tag=(high<<16)|low. Low is not masked. Caller sentinel kinds
                       form0004001F or0008001F. */
  param_4 = param_4 << 0x10 | param_3;
  SurfaceTagMap_FindIterator((void *)((int)this + 0x8c),local_18,&param_4);
  if ((local_18[0] != *(int *)(*(int *)((int)this + 0x90) + *(int *)((int)this + 0x94) * 4)) &&
     (*(int *)(local_18[0] + 8) != 0)) {
    FUN_00799380(param_1,param_2,*(int *)(local_18[0] + 8));
    return;
  }
  puVar2 = FUN_005cf4b0(this,param_3,uVar1);
  local_10 = *puVar2;
  local_c = puVar2[1];
  local_8 = puVar2[2];
  local_4 = puVar2[3];
  FUN_00799320(param_1,param_2,&local_10);
  return;
}

