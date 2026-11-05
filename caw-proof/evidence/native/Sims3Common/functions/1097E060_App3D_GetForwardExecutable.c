/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1097e0d3) */
/* WARNING: Removing unreachable block (ram,0x1097e0d7) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_GetForwardExecutable. Export ordinal(s):
   1683. Entry VA: 0x1097e060. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009CD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 App3D_GetForwardExecutable(void)

{
  char cVar1;
  undefined4 uVar2;
  int unaff_ESI;
  
                    /* 0x97e060  1683  App3D_GetForwardExecutable */
  cVar1 = EATrace_ShouldLogImpl();
  if (cVar1 == '\0') {
    return 0;
  }
  uVar2 = Ordinal_2(&_Dst_10ca8244);
  if ((2 < (int)((int)&_Dst_10ca8244 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar2;
}

