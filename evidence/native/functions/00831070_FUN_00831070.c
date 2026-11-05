/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX routing owner plus nine stack words RET36; EAX output pointer, result firstDWORD is signed integer status, not float. Missingtarget clears status/GUID words but not reserved+4. Under owner+918 critical section select override masks40000/8000/10000/20000 or product+A4bit14. Footprint82FD70, LOS82A8C0, then people82A360 onlywithoutfootprint; strict greater status replacement preserves earlier equal winner. Full children/catalog/physics/thread semantics remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00831070_FUN_00831070.asm
 */

float * __thiscall
FUN_00831070(void *this,float *param_1,void *param_2,void *param_3,float *param_4,void *param_5,
            uint param_6,undefined4 param_7,undefined4 *param_8,int param_9)

{
  undefined4 uVar1;
  int iVar2;
  float fVar3;
  char cVar4;
  byte local_2a;
  char local_29;
  float local_1c;
  float local_18;
  float local_14;
  float local_10 [2];
  float local_8;
  float local_4;
  
  if (param_3 == (void *)0x0) {
    *param_1 = 0.0;
    param_1[2] = 0.0;
    param_1[3] = 0.0;
    return param_1;
  }
  FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x918),(uint *)&DAT_01022d28);
  local_2a = 0;
  local_29 = '\x01';
  uVar1 = RoutingOptions_TestMask(param_5,0x40000,0,'\0');
  if ((char)uVar1 == '\x01') {
    uVar1 = RoutingOptions_TestMask(param_5,0x8000,0,'\0');
    cVar4 = (char)uVar1;
    uVar1 = RoutingOptions_TestMask(param_5,0x10000,0,'\0');
    local_2a = (byte)uVar1;
    uVar1 = RoutingOptions_TestMask(param_5,0x20000,0,'\0');
    local_29 = (char)uVar1;
  }
  else {
    if (DAT_011ee034 != (void *)0x0) {
      iVar2 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_3 + 0x18));
      if (iVar2 != 0) {
        local_2a = (byte)(*(uint *)(iVar2 + 0xa4) >> 0xe) & 1;
      }
    }
    cVar4 = local_2a == 0;
  }
  local_18 = 0.0;
  local_14 = 0.0;
  fVar3 = 0.0;
  if (cVar4 == '\x01') {
    FUN_0082fd70(this,local_10,(int)param_2,param_3,param_4,param_5,param_6,(char)param_7,param_8,
                 param_9,1);
    if (0 < (int)local_10[0]) {
      local_18 = local_8;
      local_14 = local_4;
      fVar3 = local_10[0];
    }
  }
  if (local_2a == 1) {
    FUN_0082a8c0(local_10,param_2,param_3,param_4,param_5,param_7,(int)param_8,param_9);
    if ((int)fVar3 < (int)local_10[0]) {
      local_18 = local_8;
      local_14 = local_4;
      fVar3 = local_10[0];
    }
  }
  if ((local_29 == '\x01') && (cVar4 == '\0')) {
    FUN_0082a360((int *)local_10,(int)param_3,param_4,param_5,(char)param_7,param_8,param_9);
    if ((int)fVar3 < (int)local_10[0]) {
      local_18 = local_8;
      local_14 = local_4;
      fVar3 = local_10[0];
    }
  }
  *param_1 = fVar3;
  param_1[1] = local_1c;
  param_1[2] = local_18;
  param_1[3] = local_14;
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x918));
  return param_1;
}

