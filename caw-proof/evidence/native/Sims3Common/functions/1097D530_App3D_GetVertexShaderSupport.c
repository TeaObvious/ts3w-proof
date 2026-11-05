/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_GetVertexShaderSupport. Export ordinal(s):
   1688. Entry VA: 0x1097d530. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009BC. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int App3D_GetVertexShaderSupport(void)

{
  uint uVar1;
  int iVar2;
  
                    /* 0x97d530  1688  App3D_GetVertexShaderSupport */
  iVar2 = FUN_104094c0();
  iVar2 = FUN_1040a780(iVar2);
  uVar1 = *(uint *)(iVar2 + 0xc4);
  if (uVar1 < 0xfffe0101) {
    return 0;
  }
  if (uVar1 < 0xfffe0200) {
    return 1;
  }
  return 3 - (uint)(uVar1 < 0xfffe0300);
}

