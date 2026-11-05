/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX script byte-range,resource
   context/group/64-bit instance stack arguments. Open062853A8 resource, write UInt32 version2 then
   raw byte interval, close and return AL accumulated status. Prefix is resource wrapper, distinct
   from inner managed PropertyStream version. */

undefined1 __thiscall
HouseholdScript_WriteVersionedResource
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  byte readSucceeded;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x62853a8;
  local_4 = param_2;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (bVar1) {
    readSucceeded =
         Stream_WriteUInt32(*(void **)((int)param_1 + 8),2,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,readSucceeded);
    (**(code **)(**(int **)((int)param_1 + 8) + 0x38))
              (*(int *)this,*(int *)((int)this + 4) - *(int *)this);
    ResourceStreamContext_Close(param_1);
    return *(undefined1 *)((int)param_1 + 0x14);
  }
  return 0;
}

