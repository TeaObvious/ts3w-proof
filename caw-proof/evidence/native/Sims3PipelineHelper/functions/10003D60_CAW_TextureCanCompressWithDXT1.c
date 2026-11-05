/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3PipelineHelper.dll: Stdcall engine/buffer stack arguments with RET8.
   Requires buffer format0x3D(A8R8G8B8); inspects base mip/face/slice and actual row stride. Each
   packed pixel must equal zero or be unsigned>=FF000000. Transparent pixels with nonzero RGB and
   other formats are rejected. The row register propagation must be read from original instructions,
   not unaff_EBX in decompiler output. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 CAW_TextureCanCompressWithDXT1(undefined4 param_1,int *param_2)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  int unaff_EBX;
  uint uVar6;
  int iStack_24;
  int *piStack_10;
  
  iVar2 = (**(code **)(*param_2 + 0x14))(param_2);
  if (iVar2 != 0x3d) {
    return 0;
  }
  FUN_100022c0(param_2,(int *)&stack0xffffffd8,0,0,0);
  uVar3 = (**(code **)(*param_2 + 0x24))(param_2);
  uVar4 = (**(code **)(*param_2 + 0x28))(param_2);
  uVar6 = 0;
  if (uVar4 != 0) {
    do {
      uVar5 = 0;
      if (uVar3 != 0) {
        do {
          uVar1 = *(uint *)(unaff_EBX + uVar5 * 4);
          if ((uVar1 != 0) && (uVar1 < 0xff000000)) {
            if (piStack_10 != (int *)0x0) {
              (**(code **)(*piStack_10 + 8))();
            }
            return 0;
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < uVar3);
      }
      uVar6 = uVar6 + 1;
      unaff_EBX = unaff_EBX + iStack_24;
    } while (uVar6 < uVar4);
  }
  if (piStack_10 != (int *)0x0) {
    (**(code **)(*piStack_10 + 8))();
  }
  return 1;
}

