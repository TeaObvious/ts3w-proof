/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_SetPatternThumbnailCompositor.
   Export ordinal(s): 2522. Entry VA: 0x109946f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003F8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
ThumbnailManager_SetPatternThumbnailCompositor
          (undefined4 param_1,undefined4 param_2,void *param_3,size_t param_4)

{
  void *this;
  undefined4 uVar1;
  
                    /* 0x9946f0  2522  ThumbnailManager_SetPatternThumbnailCompositor */
  this = (void *)FUN_100f8460();
  uVar1 = FUN_100feeb0(this,param_1,param_2,param_3,param_4,param_3,param_4);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

