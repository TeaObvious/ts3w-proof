/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXmanager +4stackDWORDs/RET10hex: context and3keywords,
   ALstatus. Clears list/map/count/serial, opens06393F5D mode0, consumes UInt32version WITHOUT
   comparing its value, then UInt32count. No65535countcap, final exact-end test or
   zero/duplicateowner rejection. Each row readsGUID then C08710 and checks status. MapC09090
   last-writes matching GUID; EVERY successful row links at tail and increments UInt32serial,
   storing low16at+1C. Thus saved-load admission differs from liveAddC09650. Partial failed row
   cleanup is reference-counted. Decompiler unaff_retaddr on failedrow cleanup follows unresolved
   destructor-call stack propagation; physical stackcontext reload atC093D1 uses ESP+28 before
   Close. Do not hand-correct actualC. */

undefined1 __thiscall
RugManager_ReadSavedResource(void *this,void *param_1,uint param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  bool bVar4;
  undefined4 *this_00;
  int *piVar5;
  void *unaff_retaddr;
  uint local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  iVar1 = (int)this + 4;
  *(int *)((int)this + 8) = iVar1;
  *(int *)iVar1 = iVar1;
  FUN_00c08eb0(*(int *)((int)this + 0x10),*(uint *)((int)this + 0x14));
  *(undefined4 *)((int)this + 0x18) = 0;
  local_10 = param_2;
  local_4 = param_4;
  local_c = param_3;
  local_8 = 0x6393f5d;
  bVar4 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  if (bVar4) {
    bVar4 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_14,*(uint *)((int)param_1 + 0x10))
    ;
    StreamReader_AccumulateStatus(param_1,bVar4);
    param_4 = 0;
    bVar4 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&param_4,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    if ((*(char *)((int)param_1 + 0x14) != '\0') && (param_2 = 0, param_4 != 0)) {
      while( true ) {
        this_00 = (undefined4 *)FUN_004e4500(0x28,"Lot/RugManager/AddRug",0);
        if (this_00 == (undefined4 *)0x0) {
          this_00 = (undefined4 *)0x0;
        }
        else {
          this_00[1] = 0;
          *this_00 = &PTR_FUN_0102bba4;
          this_00[4] = 0;
          this_00[5] = 0;
          *(undefined2 *)(this_00 + 7) = 0;
          *(undefined2 *)((int)this_00 + 0x1e) = 0;
          *(undefined1 *)(this_00 + 8) = 0;
          *(undefined1 *)((int)this_00 + 0x21) = 0;
          this_00[2] = 0;
          this_00[3] = 0;
          this_00[1] = this_00[1] + 1;
        }
        bVar4 = Stream_ReadUInt64(*(void **)((int)param_1 + 8),(ulonglong *)(this_00 + 4),
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        RugRecord_ReadCompactFields(this_00,param_1);
        if (*(char *)((int)param_1 + 0x14) == '\0') break;
        piVar5 = (int *)RugManager_GetOrCreateOwnerSlot((void *)((int)this + 0xc),this_00 + 4);
        puVar2 = (undefined4 *)*piVar5;
        if (this_00 != puVar2) {
          if (this_00 != (undefined4 *)0x0) {
            this_00[1] = this_00[1] + 1;
          }
          *piVar5 = (int)this_00;
          if ((puVar2 != (undefined4 *)0x0) &&
             (iVar3 = puVar2[1], puVar2[1] = iVar3 + -1, iVar3 + -1 == 0)) {
            puVar2[1] = 1;
            (**(code **)*puVar2)(1);
          }
        }
        this_00[3] = *(undefined4 *)((int)this + 8);
        this_00[2] = iVar1;
        *(undefined4 **)((int)this + 8) = this_00 + 2;
        *(undefined4 **)this_00[3] = this_00 + 2;
        *(int *)((int)this + 0x30) = *(int *)((int)this + 0x30) + 1;
        *(int *)((int)this + 0x2c) = *(int *)((int)this + 0x2c) + 1;
        iVar3 = this_00[1];
        *(undefined2 *)(this_00 + 7) = *(undefined2 *)((int)this + 0x30);
        this_00[1] = iVar3 + -1;
        if (iVar3 + -1 == 0) {
          this_00[1] = 1;
          (**(code **)*this_00)(1);
        }
        param_2 = param_2 + 1;
        if (param_4 <= param_2) {
          ResourceStreamContext_Close(param_1);
          return *(undefined1 *)((int)param_1 + 0x14);
        }
      }
      if ((this_00 != (undefined4 *)0x0) &&
         (iVar1 = this_00[1], this_00[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        this_00[1] = 1;
        (**(code **)*this_00)(1);
        ResourceStreamContext_Close(unaff_retaddr);
        return *(undefined1 *)((int)unaff_retaddr + 0x14);
      }
    }
    ResourceStreamContext_Close(param_1);
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

