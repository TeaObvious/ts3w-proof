/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PackageTool_Create. Export ordinal(s): 2000.
   Entry VA: 0x10987050. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x06000164. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl PackageTool_Create(LPCWSTR param_1)

{
  bool bVar1;
  char cVar2;
  uint uVar3;
  undefined4 uVar4;
  int local_398 [230];
  
                    /* 0x987050  2000  PackageTool_Create */
  uVar3 = FUN_10910a60(param_1);
  if ((char)uVar3 != '\0') goto LAB_109870d1;
  FUN_108defd0(local_398,(short *)0x0,0);
  cVar2 = FUN_1070b2b0((int)local_398);
  if (cVar2 == '\0') {
LAB_109870b8:
    bVar1 = false;
  }
  else {
    uVar4 = FUN_108dedf0(local_398,param_1);
    if ((char)uVar4 == '\0') goto LAB_109870b8;
    cVar2 = FUN_108dd960(local_398,2,6,'\0');
    if (cVar2 == '\0') goto LAB_109870b8;
    uVar4 = FUN_108dcd60(local_398);
    if ((char)uVar4 == '\0') goto LAB_109870b8;
    bVar1 = true;
  }
  FUN_108dcd60(local_398);
  if (!bVar1) {
    uVar3 = FUN_108de5d0(local_398);
    return uVar3 & 0xffffff00;
  }
  uVar3 = FUN_108de5d0(local_398);
LAB_109870d1:
  return CONCAT31((int3)(uVar3 >> 8),1);
}

