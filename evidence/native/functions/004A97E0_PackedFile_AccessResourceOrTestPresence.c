/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX packed
   provider, six stack slots RET18. Resource key, optional output stream, access flags, mode, load
   flags, optional record output; types/names are analyst inference from instructions. Invalid
   access mask&3 fails. Under provider lock, ensure index, query exact index vtable28(key),
   optionally copy record; if output-stream pointer is null, return AL record-present immediately.
   Remaining branches open/read/create stream and manage ownership; no alternate-key transform is
   present. Only null-output exact-presence branch is used by4B0110 here; full body retained to
   bound that fact.
   PC1.67 payload-selection closure: record+0C is codec ushort from index parser4AC510.
   Stream-present read branch chooses raw if codec0 or !(loadFlags&1), otherwise decoded
   through4A86A0. Normal consumer4B0760 passes loadFlags1. Stream-null presence returns before
   deletion gate. Visible stream deletion is storedSize1 AND memorySizeFFFFFFFF;
   parser/hashinsert/lookup have no offsetFFFFFFFF sentinel. Raw branch uses stored size; decoded
   buffer uses memory size. Five physical read-decode DWORDs and return AL are annotated on callee;
   index and provider lifetime annotations remain authoritative for their separate boundaries. */

bool __thiscall
PackedFile_AccessResourceOrTestPresence
          (void *this,void *resourceKey,void **outStream,uint accessFlags,uint mode,uint loadFlags,
          void *outRecord)

{
  LPCRITICAL_SECTION this_00;
  int iVar1;
  void *pvVar2;
  bool bVar3;
  uint *puVar4;
  uint uVar5;
  int *piVar6;
  int *piVar7;
  bool bVar8;
  bool bVar9;
  LPCRITICAL_SECTION local_1c;
  uint auStack_18 [2];
  undefined2 uStack_10;
  undefined1 uStack_e;
  
  piVar7 = (int *)0x0;
  if ((accessFlags & 3) == 0) goto LAB_004a9c48;
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x270);
  local_1c = this_00;
  FUN_004e1c00(this_00,(uint *)&DAT_00fb3508);
  if (*(int *)((int)this + 0x14) == 0) {
    FUN_004a6c20(this);
    if ((*(int *)((int)this + 0x14) == 0) || (*(int *)((int)this + 0x2d0) == 0)) {
      FUN_004e1cc0(this_00);
      return false;
    }
  }
  pvVar2 = resourceKey;
  puVar4 = (uint *)(**(code **)(**(int **)((int)this + 0x2d0) + 0x28))(resourceKey);
  bVar8 = puVar4 != (uint *)0x0;
  resourceKey = (void *)CONCAT31(resourceKey._1_3_,bVar8);
  bVar3 = false;
  if ((bVar8) && (outRecord != (void *)0x0)) {
    *(uint *)outRecord = *puVar4;
    *(uint *)((int)outRecord + 4) = puVar4[1];
    *(uint *)((int)outRecord + 8) = puVar4[2];
    *(uint *)((int)outRecord + 0xc) = (uint)(ushort)puVar4[3];
  }
  if (outStream == (void **)0x0) {
    FUN_004e1cc0(local_1c);
    return (bool)resourceKey._0_1_;
  }
  if (((bVar8) && (puVar4[2] == 0xffffffff)) && (puVar4[1] == 1)) {
LAB_004a98da:
    FUN_004e1cc0(local_1c);
    return false;
  }
  uVar5 = mode;
  if (mode == 6) {
    if ((accessFlags & 2) == 0) {
      uVar5 = 3;
    }
    else {
      uVar5 = (-(uint)((accessFlags & 1) != 0) & 2) + 2;
    }
  }
  if (bVar8) {
    bVar9 = uVar5 == 1;
  }
  else {
    if (uVar5 == 3) goto LAB_004a98da;
    bVar9 = uVar5 == 5;
  }
  if (bVar9) goto LAB_004a98da;
  if ((uVar5 == 2) || (uVar5 == 5)) {
    bVar3 = true;
  }
  if ((*(uint *)((int)this + 0x14) & accessFlags) != accessFlags) goto LAB_004a98da;
  if (*(uint *)((int)this + 0x14) != 0) {
    if (bVar8) {
      if ((accessFlags & 2) == 0) {
        FUN_0072ca50((void *)((int)this + 0x2e8),(int *)&resourceKey,pvVar2);
        if (resourceKey == (void *)((int)this + 0x2ec)) {
          if (((short)puVar4[3] == 0) || ((loadFlags & 1) == 0)) {
            uVar5 = puVar4[1];
            if ((0x200 < uVar5) || ((loadFlags & 2) != 0)) {
              piVar7 = (int *)(**(code **)(*(int *)this + 0x74))(accessFlags,*puVar4,uVar5,pvVar2);
              accessFlags = (uint)piVar7;
              goto LAB_004a9bff;
            }
            loadFlags = (**(code **)(**(int **)((int)this + 0x10) + 8))
                                  (uVar5,"ResourceLoad/PackedFile/RecordData",0);
            if ((void *)loadFlags != (void *)0x0) {
              bVar3 = PackedFile_ReadRawPayload(this,(void *)loadFlags,*puVar4,puVar4[1]);
              if (bVar3) {
                piVar7 = (int *)(**(code **)(*(int *)this + 0x70))
                                          (accessFlags,loadFlags,puVar4[1],pvVar2);
                accessFlags = (uint)piVar7;
                if (piVar7 != (int *)0x0) goto LAB_004a9c03;
              }
              (**(code **)(**(int **)((int)this + 0x10) + 0xc))(loadFlags,0);
            }
          }
          else {
            loadFlags = (**(code **)(**(int **)((int)this + 0x10) + 8))
                                  (puVar4[2],"ResourceLoad/PackedFile/RecordData",0);
            if (loadFlags != 0) {
              bVar3 = PackedFile_ReadAndDecodePayload
                                (this,(uint)(ushort)puVar4[3],*puVar4,puVar4[1],puVar4[2],loadFlags)
              ;
              if (bVar3) {
                piVar7 = (int *)(**(code **)(*(int *)this + 0x70))
                                          (accessFlags,loadFlags,puVar4[2],pvVar2);
                accessFlags = (uint)piVar7;
                if (piVar7 != (int *)0x0) goto LAB_004a9c03;
              }
              (**(code **)(**(int **)((int)this + 0x10) + 0xc))(loadFlags,0);
            }
          }
        }
        else {
          iVar1 = *(int *)((int)resourceKey + 0x20);
          if (*(int *)(iVar1 + 8) == 0x12e4a891) {
            if ((*(int *)(iVar1 + 0x5c) != 0) || (*(int *)(iVar1 + 0x2c) != 0)) goto LAB_004a9a69;
            piVar7 = (int *)(**(code **)(*(int *)this + 0x6c))(accessFlags,iVar1,pvVar2);
            accessFlags = (uint)piVar7;
LAB_004a9bff:
            if (piVar7 != (int *)0x0) {
LAB_004a9c03:
              (**(code **)(*piVar7 + 4))();
              FUN_004a6e80(auStack_18,pvVar2,&accessFlags);
              FUN_004a9770((void *)((int)this + 0x2e8),(int)&accessFlags,auStack_18);
            }
          }
        }
      }
      else {
        piVar6 = (int *)FUN_0072ca50((void *)((int)this + 0x2e8),(int *)&resourceKey,pvVar2);
        if (*piVar6 == (int)this + 0x2ec) {
          if (bVar3) {
            piVar7 = (int *)(**(code **)(*(int *)this + 0x74))(accessFlags,0,0,pvVar2);
            accessFlags = (uint)piVar7;
            if (piVar7 != (int *)0x0) {
              (**(code **)(*(int *)this + 0x9c))();
              (**(code **)(*(int *)this + 0x40))(pvVar2);
              goto LAB_004a9bd5;
            }
          }
          else {
            if (((short)puVar4[3] == 0) || ((loadFlags & 1) == 0)) {
LAB_004a9a69:
              piVar7 = (int *)(**(code **)(*(int *)this + 0x74))
                                        (accessFlags,*puVar4,puVar4[1],pvVar2);
              accessFlags = (uint)piVar7;
              goto LAB_004a9bff;
            }
            loadFlags = (**(code **)(**(int **)((int)this + 0x10) + 8))
                                  (puVar4[2],"ResourceLoad/PackedFile/Raw",0);
            if (loadFlags != 0) {
              bVar3 = PackedFile_ReadAndDecodePayload
                                (this,(uint)(ushort)puVar4[3],*puVar4,puVar4[1],puVar4[2],loadFlags)
              ;
              if (bVar3) {
                piVar7 = (int *)(**(code **)(*(int *)this + 0x70))
                                          (accessFlags,loadFlags,puVar4[2],pvVar2);
                accessFlags = (uint)piVar7;
                if (piVar7 != (int *)0x0) goto LAB_004a9c03;
              }
              (**(code **)(**(int **)((int)this + 0x10) + 0xc))(loadFlags,0);
            }
          }
        }
      }
    }
    else {
      piVar7 = (int *)(**(code **)(*(int *)this + 0x74))(accessFlags,0,0);
      accessFlags = (uint)piVar7;
      if (piVar7 != (int *)0x0) {
        (**(code **)(*(int *)this + 0x9c))();
LAB_004a9bd5:
        local_1c = (LPCRITICAL_SECTION)0x0;
        auStack_18[0] = 0;
        auStack_18[1] = 0;
        uStack_10 = 0;
        uStack_e = 0;
        (**(code **)(**(int **)((int)this + 0x2d0) + 0x2c))(pvVar2,&local_1c);
        goto LAB_004a9bff;
      }
    }
  }
  FUN_004e1cc0(local_1c);
  if (piVar7 != (int *)0x0) {
    (**(code **)(*piVar7 + 4))();
  }
LAB_004a9c48:
  if (outStream != (void **)0x0) {
    *outStream = piVar7;
  }
  return piVar7 != (int *)0x0;
}

