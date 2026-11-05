/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX metadata,
   resource stream-context pointer and thumbnail-load byte, RET8, accumulated AL status. Exact
   resource keys are nine16-byte rows01156138..011561C7, all instance1/group0. Read name/detail
   strings and64-bit hashes; absent hash resource falls back to NameHash64_Utf16Z(keystring).
   Lotcount UInt32+8, additional vector+50, optional image+68 and path+40 have separate scopes.
   Identity initializes+60/+64 toFFFFFFFF; exact296A6258 resource reads UInt16version<=1 then
   twoUInt32; version>1 closesandfails. Getter fallback occurs per storedword, not only resource
   absence. Current first-of-type metadata choice, SNAP selection and category heuristics are not
   established by this native reader. */

bool __thiscall WorldTemplate_ReadMetadata(void *this,void *streamContext,bool loadThumbnail)

{
  short sVar1;
  int *piVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  short *psVar6;
  undefined4 *puVar7;
  int *piVar8;
  undefined4 uVar9;
  short *psVar10;
  ulonglong uVar11;
  undefined3 in_stack_00000009;
  uint uStack_34;
  undefined4 uStack_30;
  undefined4 auStack_2c [11];
  
  if (*(undefined2 **)((int)this + 0x8c) != *(undefined2 **)((int)this + 0x90)) {
    **(undefined2 **)((int)this + 0x8c) = 0;
    *(undefined4 *)((int)this + 0x90) = *(undefined4 *)((int)this + 0x8c);
  }
  piVar2 = *(int **)streamContext;
  if ((piVar2 != (int *)0x0) && (iVar5 = (**(code **)(*piVar2 + 0x28))(), iVar5 != 0)) {
    psVar6 = (short *)(**(code **)(*piVar2 + 0x28))();
    sVar1 = *psVar6;
    psVar10 = psVar6;
    while (sVar1 != 0) {
      psVar10 = psVar10 + 1;
      sVar1 = *psVar10;
    }
    FUN_00408d60((undefined4 *)((int)this + 0x8c),psVar6,psVar6 + ((int)psVar10 - (int)psVar6 >> 1))
    ;
  }
  if (*(char *)((int)streamContext + 0x14) == '\0') {
LAB_005a2cb1:
    uVar11 = NameHash64_Utf16Z(*(ushort **)((int)this + 0xc));
    *(ulonglong *)((int)this + 0x20) = uVar11;
  }
  else {
    bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156138,0);
    if (bVar3) {
      StreamContext_ReadUtf16String(streamContext,(undefined4 *)((int)this + 0xc));
      ResourceStreamContext_Close(streamContext);
    }
    if ((*(char *)((int)streamContext + 0x14) == '\0') ||
       (bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156148,0), !bVar3))
    goto LAB_005a2cb1;
    bVar3 = Stream_ReadUInt64(*(void **)((int)streamContext + 8),(ulonglong *)((int)this + 0x20),
                              *(uint *)((int)streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar3);
    ResourceStreamContext_Close(streamContext);
  }
  if (*(char *)((int)streamContext + 0x14) == '\0') {
LAB_005a2d2a:
    uVar11 = NameHash64_Utf16Z(*(ushort **)((int)this + 0x28));
    *(ulonglong *)((int)this + 0x38) = uVar11;
  }
  else {
    bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156158,0);
    if (bVar3) {
      StreamContext_ReadUtf16String(streamContext,(undefined4 *)((int)this + 0x28));
      ResourceStreamContext_Close(streamContext);
    }
    if ((*(char *)((int)streamContext + 0x14) == '\0') ||
       (bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156168,0), !bVar3))
    goto LAB_005a2d2a;
    bVar3 = Stream_ReadUInt64(*(void **)((int)streamContext + 8),(ulonglong *)((int)this + 0x38),
                              *(uint *)((int)streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar3);
    ResourceStreamContext_Close(streamContext);
  }
  if (*(char *)((int)streamContext + 0x14) != '\0') {
    bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156178,0);
    if (bVar3) {
      bVar3 = Stream_ReadUInt32(*(void **)((int)streamContext + 8),(uint *)((int)this + 8),
                                *(uint *)((int)streamContext + 0x10));
      StreamReader_AccumulateStatus(streamContext,bVar3);
      ResourceStreamContext_Close(streamContext);
    }
    if ((*(char *)((int)streamContext + 0x14) != '\0') &&
       (bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_011561a8,0), bVar3)) {
      FUN_007d8790(streamContext,(void *)((int)this + 0x50));
      ResourceStreamContext_Close(streamContext);
    }
  }
  if (loadThumbnail != false) {
    if (*(undefined4 **)((int)this + 0x68) != (undefined4 *)0x0) {
      (**(code **)**(undefined4 **)((int)this + 0x68))(1);
      *(undefined4 *)((int)this + 0x68) = 0;
    }
    if (*(char *)((int)streamContext + 0x14) == '\0') goto LAB_005a2e68;
    bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156188,0);
    if (bVar3) {
      piVar2 = *(int **)((int)streamContext + 8);
      if (piVar2 != (int *)0x0) {
        FUN_00445400(auStack_2c);
        puVar7 = (undefined4 *)FUN_00444060(0x30);
        if (puVar7 == (undefined4 *)0x0) {
          piVar8 = (int *)0x0;
        }
        else {
          piVar8 = (int *)FUN_004446f0(puVar7);
        }
        *(int **)((int)this + 0x68) = piVar8;
        cVar4 = FUN_004460e0(piVar2,(void *)0x32,piVar8);
        if (cVar4 == '\0') {
          if (*(undefined4 **)((int)this + 0x68) != (undefined4 *)0x0) {
            (**(code **)**(undefined4 **)((int)this + 0x68))(1);
          }
          *(undefined4 *)((int)this + 0x68) = 0;
          ResourceStreamContext_Close(streamContext);
        }
        FUN_00445440(auStack_2c);
      }
      ResourceStreamContext_Close(streamContext);
    }
  }
  if ((*(char *)((int)streamContext + 0x14) != '\0') &&
     (bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_01156198,0), bVar3)) {
    StreamContext_ReadUtf16String(streamContext,(undefined4 *)((int)this + 0x40));
    ResourceStreamContext_Close(streamContext);
  }
LAB_005a2e68:
                    /* Analyst: Both stored identity words first becomeFFFFFFFF, independently of
                       resource presence. */
  *(undefined4 *)((int)this + 0x60) = 0xffffffff;
  *(undefined4 *)((int)this + 100) = 0xffffffff;
  if ((*(char *)((int)streamContext + 0x14) != '\0') &&
     (bVar3 = ResourceStreamContext_OpenRead(streamContext,&DAT_011561b8,0), bVar3)) {
    _loadThumbnail = 0;
    bVar3 = Stream_ReadUInt16(*(void **)((int)streamContext + 8),(ushort *)&loadThumbnail,
                              *(uint *)((int)streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar3);
                    /* Analyst: UInt16 identity version accepts0/1; greater than1 fails after close.
                        */
    if (1 < _loadThumbnail) {
      ResourceStreamContext_Close(streamContext);
      return false;
    }
    uVar9 = Stream_ReadUInt32ArrayByByteOrder
                      (*(int **)((int)streamContext + 8),&uStack_34,2,
                       *(uint *)((int)streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,(byte)uVar9);
    *(uint *)((int)this + 0x60) = uStack_34;
    *(undefined4 *)((int)this + 100) = uStack_30;
    ResourceStreamContext_Close(streamContext);
  }
  FUN_005a2990((int)this);
  return (bool)*(undefined1 *)((int)streamContext + 0x14);
}

