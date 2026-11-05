/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete350-byte manager consumer, vtable00FB3DB0+C. ECX manager and six stack DWORDs;
   three exits RET18, result AL. Under manager+170 monitor it attempts cache, resolves
   provider/loader, then provider virtual+34 receives key, local stream output, access1, mode3,
   loadFlags1, null record output (4B0824..4B083C). On success loader virtual+1C consumes the
   stream; local stream virtual+8 releases at4B0894. This proves decoded normal-resource request
   flags, not raw-copy mode. Generic loader/provider/cache semantics remain dynamic; no invented
   argument types assigned.
   Physical ABI completeness limit: body consumes six DWORD stack slots (entrySP+4..18) and all
   exits RET18, result AL; vtableFB3DB0+C points here. A concrete virtual caller's six pushes has
   not been bounded in this proof. Default stored zero-argument signature remains an explicit
   decompiler artifact, not evidence of a zero-argument API; no guessed foreign types assigned. */

char __thiscall
ResourceManager_LoadDecodedResource
          (int *param_1,undefined4 *param_2,undefined4 param_3,int *param_4,int *param_5,
          int *param_6,undefined4 *param_7)

{
  char cVar1;
  char cVar2;
  undefined4 *puVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  LPCRITICAL_SECTION unaff_EBX;
  int *unaff_retaddr;
  
  piVar6 = param_6;
  piVar5 = param_5;
  FUN_004e1c00(param_1 + 0x5c,(uint *)&DAT_00fb3ce0);
  puVar3 = param_7;
  if (param_7 == (undefined4 *)0x0) {
    puVar3 = param_2;
  }
  piVar4 = (int *)(**(code **)(*param_1 + 0x58))(puVar3);
  if (piVar4 != (int *)0x0) {
    piVar7 = param_6;
    if (param_6 == (int *)0x0) {
      piVar7 = unaff_retaddr;
    }
    cVar1 = (**(code **)(*piVar4 + 0x18))(piVar7,param_2);
    if (cVar1 != '\0') {
      FUN_004e1cc0(unaff_EBX);
      return '\x01';
    }
  }
  cVar1 = '\0';
  if (piVar5 == (int *)0x0) {
    piVar5 = (int *)(**(code **)(*param_1 + 0x44))(unaff_retaddr);
    if (piVar5 == (int *)0x0) goto LAB_004b08ab;
  }
  if (piVar6 == (int *)0x0) {
    piVar6 = (int *)(**(code **)(*param_1 + 0x2c))(unaff_retaddr[2],0xffffffff);
    if (piVar6 == (int *)0x0) goto LAB_004b08ab;
  }
  if (param_2 == (undefined4 *)0x0) {
    cVar1 = '\x01';
  }
  else {
    param_4 = (int *)0x0;
    cVar2 = (**(code **)(*piVar5 + 0x34))(unaff_retaddr,&param_4,1,3,1,0);
    if (cVar2 != '\0') {
      cVar1 = (**(code **)(*piVar6 + 0x1c))(param_4,param_2,param_3,unaff_retaddr[2]);
    }
    if (cVar1 != '\0') {
      if (param_6 != (int *)0x0) {
        FUN_004af240((void *)*param_2,param_6);
      }
      (**(code **)(*param_1 + 0x5c))(*param_2,1);
    }
    if (param_4 != (int *)0x0) {
      (**(code **)(*param_4 + 8))();
      FUN_004e1cc0(unaff_EBX);
      return cVar1;
    }
  }
LAB_004b08ab:
  FUN_004e1cc0(unaff_EBX);
  return cVar1;
}

