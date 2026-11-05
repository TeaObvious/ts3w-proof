/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX driver,two stack dwords RET8. Selected
   write path emits state resource identity and declared actor/walker data, then distinct hash and
   string parameter lists. Calls007FD4C0(resolve0); hash value0 may use definition default+34, text
   presence selects string serialization. Unknown script parameters and C# explicit resource groups
   are not established saved fields. Exact stream/error/count/callback format remains a bounded
   larger contract, not validated by the parameter projection alone.
   
   Analyst note (PC1.67 SACS migration contract): ECX driver; RET8. Writes key, header/version/count
   and priority+30, actor rows via00800830, selected driver state, then separate byte-counted
   hash/text parameter lists; parameter hash0 may use definition default+34. Text emission007D94B0
   is UTF16 count plus units. This native writer can save active state; current idle DTO zeros
   requests/clips/tracks and is not full native persistence. Existing prior bounded comments remain
   valid for selected parameter paths. */

void __thiscall SacsDriver_WriteStateAndParameters(void *this,void *param_1,int *param_2)

{
  short sVar1;
  int iVar2;
  size_t _Size;
  void *this_00;
  bool readSucceeded;
  byte bVar3;
  char cVar4;
  int iVar5;
  uint uVar6;
  short *_Src;
  short *psVar7;
  undefined1 *_Dst;
  uint *puVar8;
  int iVar9;
  uint *puVar10;
  undefined1 *local_20;
  undefined2 *local_1c;
  undefined2 *local_18;
  char *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = param_1;
  iVar9 = *(int *)((int)this + 0xc);
  iVar2 = *(int *)((int)this + 8);
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    iVar5 = *(int *)((int)this + 4);
    local_10 = *(undefined4 *)(iVar5 + 8);
    local_c = *(undefined4 *)(iVar5 + 0xc);
    local_8 = *(undefined4 *)(iVar5 + 0x10);
    local_4 = *(undefined4 *)(iVar5 + 0x14);
    readSucceeded =
         Stream_WriteResourceKeyTGI
                   (*(void **)((int)param_1 + 8),&local_10,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,readSucceeded);
    bVar3 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),0,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),1);
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),(byte)(iVar9 - iVar2 >> 3));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = FUN_004de060(*(int **)((int)param_1 + 8),0,*(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x30),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    puVar10 = *(uint **)((int)this + 0xc);
    for (puVar8 = *(uint **)((int)this + 8); puVar8 != puVar10; puVar8 = puVar8 + 2) {
      bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*puVar8,*(uint *)((int)param_1 + 0x10)
                                );
      StreamReader_AccumulateStatus(param_1,bVar3);
      if ((void *)puVar8[1] == (void *)0x0) {
        return;
      }
      cVar4 = SacsWalker_WriteSavedState((void *)puVar8[1],param_1,param_2);
      if (cVar4 == '\0') {
        return;
      }
    }
    iVar9 = *(int *)((int)this + 0x18);
    iVar2 = *(int *)((int)this + 0x1c);
    param_1 = (void *)0x0;
    param_1._0_1_ = 0;
    param_2 = (int *)0x0;
    param_2._0_1_ = 0;
    for (; iVar9 != iVar2; iVar9 = iVar9 + 0x10) {
      iVar5 = SacsParameter_ResolveText((void *)(iVar9 + 4),'\0');
      if (iVar5 == 0) {
        param_1 = (void *)(uint)(byte)((byte)param_1 + 1);
      }
      else {
        param_2 = (int *)(uint)(byte)((byte)param_2 + 1);
      }
    }
    uVar6 = 0;
    if (*(int *)((int)this + 0x38) != 0) {
      uVar6 = *(uint *)(*(int *)(*(int *)(*(int *)((int)this + 0x38) + 8) + 0x20) + 0x2c);
    }
    bVar3 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),uVar6,*(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    bVar3 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),0);
    StreamReader_AccumulateStatus(this_00,bVar3);
    bVar3 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),0);
    StreamReader_AccumulateStatus(this_00,bVar3);
    bVar3 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),(byte)param_1);
    StreamReader_AccumulateStatus(this_00,bVar3);
    bVar3 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),(byte)param_2);
    StreamReader_AccumulateStatus(this_00,bVar3);
    puVar8 = *(uint **)((int)this + 0x1c);
    for (puVar10 = *(uint **)((int)this + 0x18); puVar10 != puVar8; puVar10 = puVar10 + 4) {
      iVar9 = SacsParameter_ResolveText(puVar10 + 1,'\0');
      if (iVar9 == 0) {
        bVar3 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),*puVar10,
                                   *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar3);
        uVar6 = puVar10[3];
        if (uVar6 == 0) {
          uVar6 = *(uint *)(puVar10[1] + 0x34);
        }
        bVar3 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),uVar6,*(uint *)((int)this_00 + 0x10)
                                  );
        StreamReader_AccumulateStatus(this_00,bVar3);
      }
    }
    puVar10 = *(uint **)((int)this + 0x1c);
    for (puVar8 = *(uint **)((int)this + 0x18); puVar8 != puVar10; puVar8 = puVar8 + 4) {
      _Src = (short *)SacsParameter_ResolveText(puVar8 + 1,'\0');
      if (_Src != (short *)0x0) {
        sVar1 = *_Src;
        local_20 = (undefined1 *)0x0;
        local_1c = (undefined2 *)0x0;
        local_18 = (undefined2 *)0x0;
        local_14 = "SACS/StateMachineDriver";
        psVar7 = _Src;
        while (sVar1 != 0) {
          psVar7 = psVar7 + 1;
          sVar1 = *psVar7;
        }
        iVar9 = ((int)psVar7 - (int)_Src >> 1) * 2 >> 1;
        uVar6 = iVar9 + 1;
        if (uVar6 < 2) {
          _Dst = &DAT_011c8e54;
          local_18 = &DAT_011c8e56;
        }
        else {
          uVar6 = uVar6 * 2;
          _Dst = (undefined1 *)FUN_004e4500(uVar6,"SACS/StateMachineDriver",0);
          local_18 = (undefined2 *)(_Dst + uVar6);
        }
        _Size = iVar9 * 2;
        local_20 = _Dst;
        local_1c = (undefined2 *)_Dst;
        memmove(_Dst,_Src,_Size);
        local_1c = (undefined2 *)(_Dst + _Size);
        *local_1c = 0;
        bVar3 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),*puVar8,
                                   *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar3);
        StreamContext_WriteUtf16String(this_00,&local_20);
        if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) &&
           (local_20 != (undefined1 *)0x0)) {
          Memory_FreeIfNonNull(local_20);
        }
      }
    }
  }
  return;
}

