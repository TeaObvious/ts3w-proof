/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 native-object table writer. Physical writer ECX and stack4 output stream context;
   RET4, no semantic return value. Serializes each object through virtual18 into a temporary record
   stream with an offset per ordinal. False writer status resets that status, rewinds the record
   stream to its prior position and stores signed offset-1. Emits NOBJ magic4A424F4E, version101,
   object count, entry offset1C, resource-name count, key-table offset1C+8*n and data offset
   plus16*nameCount. Writes factory/offset rows, TGI resource keys and buffered record bytes, then
   releases locals. Generic object virtual10/18, stream primitive failures and allocator/provider
   services are not followed or replaced. Owned255 instructions705 bytes form one exact range;
   physical ECX/stack/void metadata changes no instruction or existing neighbor annotation. */

void __thiscall NativeObjectTable_WriteRecords(void *this,void *outputContext)

{
  int *piVar1;
  void *pvVar2;
  byte bVar3;
  bool readSucceeded;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  uint value;
  void *key;
  uint uVar7;
  uint uVar8;
  uint local_44;
  int iStack_40;
  void *local_3c;
  int *local_38;
  int *local_34;
  char *local_30;
  undefined **local_2c;
  undefined4 *puStack_28;
  undefined4 uStack_1c;
  
  piVar6 = (int *)0x0;
  local_3c = (void *)0x0;
  local_38 = (int *)0x0;
  local_34 = (int *)0x0;
  local_30 = "Services/PersistWriter";
  FUN_004df460(&local_2c,0,0,0);
  FUN_004dee40(&local_2c,1,1.0);
  StreamReader_Attach((void *)((int)this + 4),&local_2c,1);
  local_44 = 0;
  if (*(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2 != 0) {
    do {
      piVar1 = *(int **)(*(int *)((int)this + 0x1c) + local_44 * 4);
      (**(code **)(*piVar1 + 0x10))();
      iVar4 = FUN_004deef0(&local_2c,0);
      iStack_40 = iVar4;
      if (piVar6 < local_34) {
        local_38 = piVar6 + 1;
        if (piVar6 != (int *)0x0) {
          *piVar6 = iVar4;
        }
      }
      else {
        FUN_00982420(&local_3c,piVar6,&iStack_40);
      }
      piVar6 = local_38;
      (**(code **)(*piVar1 + 0x18))((int)this + 4,this);
      if (*(char *)((int)this + 0x18) == '\0') {
        *(undefined1 *)((int)this + 0x18) = 1;
        FUN_004df2b0(&local_2c,iVar4,0);
        piVar6[-1] = -1;
      }
      local_44 = local_44 + 1;
    } while (local_44 < (uint)(*(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2));
  }
  value = *(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2;
  uVar8 = value * 8 + 0x1c;
  uVar7 = *(int *)((int)this + 0x50) - *(int *)((int)this + 0x4c) >> 4;
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),0x4a424f4e,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),0x101,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),value,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),0x1c,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),uVar7,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),uVar8,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)outputContext + 8),uVar7 * 0x10 + uVar8,
                             *(uint *)((int)outputContext + 0x10));
  StreamReader_AccumulateStatus(outputContext,bVar3);
  uVar8 = 0;
  if (value != 0) {
    do {
      piVar6 = *(int **)(*(int *)((int)this + 0x1c) + uVar8 * 4);
      if (piVar6 == (int *)0x0) {
        uVar7 = 0;
      }
      else {
        uVar7 = (**(code **)(*piVar6 + 0x10))();
      }
      bVar3 = FUN_004de060(*(int **)((int)outputContext + 8),uVar7,
                           *(int *)((int)outputContext + 0x10));
      StreamReader_AccumulateStatus(outputContext,bVar3);
      bVar3 = FUN_004de060(*(int **)((int)outputContext + 8),*(uint *)((int)local_3c + uVar8 * 4),
                           *(int *)((int)outputContext + 0x10));
      StreamReader_AccumulateStatus(outputContext,bVar3);
      uVar8 = uVar8 + 1;
    } while (uVar8 < value);
  }
  pvVar2 = *(void **)((int)this + 0x50);
  for (key = *(void **)((int)this + 0x4c); key != pvVar2; key = (void *)((int)key + 0x10)) {
    readSucceeded =
         Stream_WriteResourceKeyTGI
                   (*(void **)((int)outputContext + 8),key,*(uint *)((int)outputContext + 0x10));
    StreamReader_AccumulateStatus(outputContext,readSucceeded);
  }
  if (puStack_28 == (undefined4 *)0x0) {
    uVar5 = 0;
  }
  else {
    uVar5 = puStack_28[2];
  }
  bVar3 = FUN_004dde50(*(int **)((int)outputContext + 8),uVar5,uStack_1c);
  StreamReader_AccumulateStatus(outputContext,bVar3);
  local_2c = &PTR_FUN_00fb6c00;
  if (puStack_28 != (undefined4 *)0x0) {
    FUN_004dee00(puStack_28);
  }
  local_2c = &PTR_LAB_00faaa04;
  if (local_3c != (void *)0x0) {
    Memory_FreeIfNonNull(local_3c);
  }
  return;
}

