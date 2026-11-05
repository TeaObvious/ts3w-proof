/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PackageTool_Compact. Export ordinal(s): 1999.
   Entry VA: 0x109870f0. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x06000165. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl PackageTool_Compact(short *param_1)

{
  char cVar1;
  undefined4 uVar2;
  uint uVar3;
  int local_398 [230];
  
                    /* 0x9870f0  1999  PackageTool_Compact */
  FUN_108defd0(local_398,(short *)0x0,0);
  cVar1 = FUN_1070b2b0((int)local_398);
  if (cVar1 != '\0') {
    uVar2 = FUN_108dedf0(local_398,param_1);
    if ((char)uVar2 != '\0') {
      cVar1 = FUN_108dd960(local_398,3,6,'\0');
      if (cVar1 != '\0') {
        cVar1 = FUN_108dfb50(local_398);
        if (cVar1 != '\0') {
          uVar2 = FUN_108dcd60(local_398);
          if ((char)uVar2 != '\0') {
            uVar2 = FUN_108de5d0(local_398);
            return CONCAT31((int3)((uint)uVar2 >> 8),1);
          }
        }
      }
    }
  }
  FUN_108dcd60(local_398);
  uVar3 = FUN_108de5d0(local_398);
  return uVar3 & 0xffffff00;
}

