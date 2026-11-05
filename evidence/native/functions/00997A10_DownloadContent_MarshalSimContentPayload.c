/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: cdecl hidden result pointer then key table, uint64 object ID array
   and byte script data handles. Output16-byte record has status inbyte0, host pointer+4, SimStorage
   pointer+8, created content pointer+c; EAX returns result pointer. Builds contenttype 04f88964
   from decoded keylist/objectids/script data. Objectids stride8, signed count>0; requires
   owner+664. Decompiler loses host virtual-call cleanup and incorrectly substitutes result pointer
   for script data in one call; follow pushes at997aac..997ac2. */

void * __cdecl
DownloadContent_MarshalSimContentPayload
          (void *result,void *keyTable,void *objectIds,void *scriptData)

{
  int *piVar1;
  undefined4 uVar2;
  void *pvVar3;
  int iVar4;
  void *unaff_ESI;
  int unaff_EDI;
  undefined4 *this;
  char *local_40;
  undefined1 local_3c [12];
  int local_30 [4];
  uint local_20;
  undefined1 auStack_1c [12];
  int local_10 [4];
  
  local_20 = local_20 & 0xffffff00;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar4 = 0;
  this = (undefined4 *)0x0;
  if (piVar1 != (int *)0x0) {
    local_40 = "Services/ContentManagerHost/SaveCustomSim/IndexedKeyList";
    FUN_007d9500(local_30,&local_40);
    uVar2 = FUN_00994f40(piVar1,keyTable);
    if ((char)uVar2 == '\0') {
LAB_00997b20:
      if (local_30[0] != 0) {
        FUN_004e44e0(local_30[0]);
      }
      *(uint *)result = local_20;
      *(int **)((int)result + 4) = piVar1;
      *(undefined4 *)((int)result + 8) = 0;
      *(undefined4 **)((int)result + 0xc) = this;
      return result;
    }
    local_40 = "Services/ContentManagerHost/SaveCustomSim/ObjectIdList";
    FUN_007d9500(local_10,&local_40);
    (**(code **)(*piVar1 + 0x68))(objectIds,local_3c,&local_40);
    if (0 < unaff_EDI) {
      FUN_007def60(auStack_1c,unaff_ESI,(int)((int)unaff_ESI + unaff_EDI * 8));
    }
    (**(code **)(*piVar1 + 0x70))(result,&local_40,&stack0xffffffbc);
    this = FUN_009a65d0(0x4f88964);
    FUN_009a7d50(this,local_30);
    FUN_009a87a0((int)this);
    FUN_009a5ab0((int)this);
    pvVar3 = DownloadContent_GetOwnerFromGlobalLink();
    if (pvVar3 != (void *)0x0) {
      iVar4 = *(int *)((int)pvVar3 + 0x664);
      if (iVar4 == 0) {
        if (local_10[0] != 0) {
          FUN_004e44e0(local_10[0]);
        }
        goto LAB_00997b20;
      }
      local_20 = CONCAT31(local_20._1_3_,1);
    }
    if (local_10[0] != 0) {
      FUN_004e44e0(local_10[0]);
    }
    if (local_30[0] != 0) {
      FUN_004e44e0(local_30[0]);
    }
  }
  *(uint *)result = local_20;
  *(int **)((int)result + 4) = piVar1;
  *(int *)((int)result + 8) = iVar4;
  *(undefined4 **)((int)result + 0xc) = this;
  return result;
}

