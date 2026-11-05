/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_GetInstalledGameDir. Export ordinal(s):
   1686. Entry VA: 0x1097d900. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009CB. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 App3D_GetInstalledGameDir(void)

{
  LPBYTE pBVar1;
  undefined4 uVar2;
  BYTE local_208 [520];
  
                    /* 0x97d900  1686  App3D_GetInstalledGameDir */
  pBVar1 = FUN_105c3f90(local_208,0x104);
  if (pBVar1 != (LPBYTE)0x0) {
    uVar2 = Ordinal_2(pBVar1);
    return uVar2;
  }
  return 0;
}

