/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXmanager +4stackDWORDs/RET10hex: context and3keywords.
   Opens resource06393F5D in write mode1; writes UInt32version1, counts linked rows as UInt32,
   visits list through C08AA0 callbackC08B90, closes stream, returns ALstatus. UpperEAX bits in
   decompiler CONCAT31 are not Boolean data. Writer order is manager list order; insertion serial is
   reconstructed on load. */

undefined4 __thiscall
RugManager_WriteSavedResource
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  bool bVar2;
  byte bVar3;
  undefined3 extraout_var;
  int *piVar4;
  undefined3 extraout_var_00;
  undefined3 uVar5;
  uint value;
  undefined4 local_1c [3];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_2;
  local_c = param_3;
  local_8 = 0x6393f5d;
  local_4 = param_4;
  bVar2 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  uVar5 = extraout_var;
  if (bVar2) {
    bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),1,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    piVar1 = (int *)((int)this + 4);
    value = 0xffffffff;
    piVar4 = piVar1;
    do {
      piVar4 = (int *)*piVar4;
      value = value + 1;
    } while (piVar4 != piVar1);
    bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),value,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    FUN_00c08aa0(local_1c,piVar1,this,RugManager_WriteOrderedRow,param_1);
    ResourceStreamContext_Close(param_1);
    uVar5 = extraout_var_00;
  }
  return CONCAT31(uVar5,*(undefined1 *)((int)param_1 + 0x14));
}

