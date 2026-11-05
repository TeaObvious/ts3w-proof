/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. PhysicalABI
   verified ECX owner, key pointer,out-collection pointer,create-byte three stack slots RET0C;
   ALboolean. Build resourcekey using product instance/group but type0591B1AF, invoke existing
   mounted-candidate helper7D8310, resource-manager virtual0C load then query interface0591B188.
   Success writes acquired pointer to outCollection atB3194F; failure createByte0 returnsfalse.
   createByte1 allocatesB0-byte collection, records key, initializes/registers and publishes it.
   Query callers here passfalse. The indirect resource-manager load mis-tracks stack locals in
   actual decompiler (cStack_c/local_10/unaff registers); instructions B318C8 andB3194B establish
   create/out argument use. Do not treat those artifacts as literal uninitialized source behavior.
    */

bool __thiscall
ProductPresets_AcquireCollection(void *this,void *productKey,void **outCollection,bool allowCreate)

{
  int iVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int unaff_EBX;
  int unaff_ESI;
  uint local_20;
  int local_1c;
  undefined4 local_18;
  int *local_14;
  int *local_10;
  char cStack_c;
  
  local_1c = *(int *)((int)productKey + 4);
  local_20 = *(uint *)productKey;
  local_14 = *(int **)((int)productKey + 0xc);
  local_18 = 0x591b1af;
  piVar3 = (int *)FUN_004afe80();
  productKey = (void *)0x0;
  ResourceKey_CopyWithMountedCandidate((uint *)&local_10,&local_20);
  cVar2 = (**(code **)(*piVar3 + 0xc))(&local_10,&productKey,0,0,0,0);
  if (cVar2 != '\0') {
    if ((local_14 != (int *)0x0) &&
       (piVar4 = (int *)(**(code **)(*local_14 + 0xc))(0x591b188), piVar4 != (int *)0x0))
    goto LAB_00b3194b;
    (**(code **)(*local_14 + 4))();
  }
                    /* Analyst: Read third physical stack argument create byte; decompiler local
                       alias is artifact. */
  if (cStack_c == '\0') {
    return false;
  }
  puVar5 = (undefined4 *)FUN_004e4500(0xb0,"World/Catalog/ProductObject/UserPresetList",0);
  if (puVar5 == (undefined4 *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    piVar4 = (int *)FUN_0060a800(puVar5);
  }
  (**(code **)*piVar4)();
  piVar4[2] = unaff_ESI;
  piVar4[3] = unaff_EBX;
  piVar4[4] = local_20;
  piVar4[5] = local_1c;
  FUN_0060a1e0(piVar4);
  FUN_00b30d70(this,piVar4);
  iVar1 = *piVar3;
  uVar6 = (**(code **)(*piVar4 + 0xc))(0x2269ed1,1);
  (**(code **)(iVar1 + 0x5c))(uVar6);
LAB_00b3194b:
                    /* Analyst: Second physical stack argument is outCollection pointer; write
                       acquired collection. */
  *local_10 = (int)piVar4;
  return true;
}

