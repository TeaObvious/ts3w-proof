/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): Map key packs low
   mask16, z byte in bits16..23, x byte in bits24..31. Insert/find node through A7D360, then
   overwrite x/z/on, mask and timer0. Same exact x/z/mask restarts from logical complement rather
   than preserving current interpolated alpha. Stack lanes are ABI words even though decompiler
   narrows their consumed values. */

void __thiscall
FloorFeatureGeometry_StartFade
          (void *this,undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined2 param_4)

{
  undefined4 *puVar1;
  undefined4 local_c;
  undefined4 local_8;
  
  _param_4 = CONCAT22(CONCAT11(param_1,param_2),param_4);
  local_c._0_3_ = CONCAT12(param_3,CONCAT11(param_2,param_1));
  local_8 = CONCAT22(local_8._2_2_,param_4);
  puVar1 = (undefined4 *)FUN_00a7d360((void *)((int)this + 0x22c),(uint *)&param_4);
  *puVar1 = local_c;
  puVar1[1] = local_8;
  puVar1[2] = 0;
  return;
}

