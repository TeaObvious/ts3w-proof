/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189df8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_FeaturedItemGenericImpl [assembly=ScriptCore
   token=0x06000BE8; productHandle: System.UInt64, funcID: System.UInt32, arg0: System.UInt32,
   retUint32: System.UInt32&, instance: System.UInt64&, group: System.UInt32&, type: System.UInt32&,
   retFloat: System.Single&, retUint64: System.UInt64&; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_FeaturedItemGenericImpl
          (uint param_1,uint param_2,undefined4 param_3,uint param_4,uint *param_5,uint *param_6,
          undefined4 *param_7,undefined4 *param_8,undefined4 param_9,undefined4 *param_10)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  void *unaff_EBX;
  undefined4 unaff_ESI;
  bool bVar5;
  undefined1 local_44 [4];
  int local_40 [3];
  char *local_34;
  void *local_30;
  undefined2 *local_2c;
  undefined **local_28;
  undefined4 local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_40[0] = 0;
  local_40[1] = 0;
  local_40[2] = 0;
  local_34 = "UserTool/Host";
  FUN_0040b590(local_40,(short *)&DAT_01044eb0);
  this = (void *)FUN_00c8f000(DAT_011ee034,param_1,param_2);
  if (this == (void *)0x0) goto switchD_00ce956d_default;
  switch(param_3) {
  case 0:
    FUN_00408d60(local_40,*(void **)((int)this + 8),*(undefined2 **)((int)this + 0xc));
    break;
  case 1:
    FUN_00408d60(local_40,*(void **)((int)this + 0x18),*(undefined2 **)((int)this + 0x1c));
    break;
  case 2:
    *param_5 = *(uint *)((int)this + 0x48);
    break;
  case 3:
    uVar3 = *(uint *)((int)this + 0x4c);
    goto LAB_00ce97ae;
  case 4:
    uVar3 = FUN_00ce5f60((int)this);
    *param_5 = uVar3;
    break;
  case 5:
    FUN_00c9b6f0(this,&local_30,param_4);
    *param_6 = (uint)local_30;
    param_6[1] = (uint)local_2c;
    *param_7 = local_24;
    *param_8 = local_28;
    break;
  case 6:
    FUN_00408d60(local_40,*(void **)((int)this + 0x28),*(undefined2 **)((int)this + 0x2c));
    break;
  case 7:
    FUN_00c9b5c0(this,param_5,param_8);
    break;
  case 8:
    FUN_00c9b7a0(this,param_4,param_5,param_8);
    break;
  case 9:
    *param_5 = *(int *)((int)this + 0xd0) - *(int *)((int)this + 0xcc) >> 3;
    break;
  case 10:
    uVar3 = (uint)(*(char *)((int)this + 0x8c) != '\0');
    goto LAB_00ce97ae;
  case 0xb:
    uVar2 = FUN_009cfbf0((int)this);
    *param_5 = (uint)((char)uVar2 != '\0');
    break;
  case 0xc:
    uVar2 = FUN_00c8b2f0((int)this);
    *param_5 = (uint)((char)uVar2 != '\0');
    break;
  case 0xd:
    uVar3 = FUN_00c9b7d0((int)this);
    *param_5 = uVar3;
    break;
  case 0xe:
    iVar4 = FUN_00c9b7e0(this,param_4);
    if (iVar4 == 0) {
      *param_10 = 0;
      param_10[1] = 0;
    }
    else {
      *param_10 = *(undefined4 *)(iVar4 + 0x68);
      param_10[1] = *(undefined4 *)(iVar4 + 0x6c);
    }
    break;
  case 0xf:
    FUN_004f3c90(&local_30,(undefined4 *)((int)this + 0x58));
    FUN_00408d60(local_40,local_30,local_2c);
    FUN_004ef8f0((int *)&local_30);
    break;
  case 0x10:
    FUN_00408d60(local_40,*(void **)((int)this + 0xe8),*(undefined2 **)((int)this + 0xec));
    break;
  case 0x11:
    *param_5 = *(uint *)((int)this + 0xf8);
    *param_8 = *(undefined4 *)((int)this + 0xfc);
    *param_7 = *(undefined4 *)((int)this + 0x108);
    uVar3 = *(uint *)((int)this + 0x100);
    param_6[1] = *(uint *)((int)this + 0x104);
    param_5 = param_6;
    goto LAB_00ce97ae;
  case 0x12:
    bVar5 = *(int *)((int)this + 0x10c) == 5;
    goto LAB_00ce97a7;
  case 0x13:
    FUN_00408d60(local_40,*(void **)((int)this + 0x90),*(undefined2 **)((int)this + 0x94));
    break;
  case 0x14:
    bVar5 = *(int *)((int)this + 0x10c) == 6;
LAB_00ce97a7:
    uVar3 = (uint)bVar5;
LAB_00ce97ae:
    *param_5 = uVar3;
    break;
  case 0x15:
    FUN_00408d60(local_40,*(void **)((int)this + 0x38),*(undefined2 **)((int)this + 0x3c));
  }
switchD_00ce956d_default:
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  FUN_004f59c0(local_20,0x13,9,local_40,0x10,1);
  (**(code **)(*piVar1 + 0x50))(local_20,local_44);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
  }
  if ((2 < (int)(local_40[0] - (int)unaff_EBX & 0xfffffffeU)) && (unaff_EBX != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EBX);
  }
  return unaff_ESI;
}

