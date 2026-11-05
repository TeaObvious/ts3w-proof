/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163d60 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_CreateHouseboatLotImpl [assembly=ScriptCore token=0x060008AB; width:
   System.UInt32, height: System.UInt32, lotType: System.UInt32, lotSubtype: System.UInt32;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 __cdecl
ScriptCore.World::World_CreateHouseboatLotImpl
          (int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  int *this;
  int *piVar4;
  void *this_00;
  uint uVar5;
  uint uVar6;
  void *local_88;
  int local_84;
  float local_80 [4];
  undefined4 auStack_70 [8];
  undefined1 local_50 [32];
  undefined1 auStack_30 [44];
  
  pvVar1 = DAT_011edbc4;
  local_88 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    if ((int)param_1 < 4) {
      param_1 = (int *)&DAT_00000004;
    }
    else if (0x40 < (int)param_1) {
      param_1 = (int *)0x40;
    }
    if (param_2 < 0x41) {
      if (param_2 < 4) {
        param_2 = 4;
      }
    }
    else {
      param_2 = 0x40;
    }
    uVar2 = FUN_00c6aaf0(DAT_011edbc4,param_1,param_2,local_80);
    if ((char)uVar2 != '\0') {
      *(undefined1 *)((int)pvVar1 + 0x40) = 1;
      pvVar3 = (void *)FUN_004e4520(0x4c0,0x10,0,"World/New Lot",0);
      if (pvVar3 != (void *)0x0) {
        this = FUN_00ac0b60(pvVar3,pvVar1);
        if (this != (int *)0x0) {
          uVar2 = FUN_00acdc90(this,param_1,param_2,local_80,0.0,param_3,param_4,'\0',1,'\0',0.0,
                               1.4013e-45);
          if ((char)uVar2 != '\0') {
            FUN_00b0a170(this);
            FUN_00ab11a0((int)this);
            pvVar1 = local_88;
            piVar4 = FUN_00afd6b0(local_88,'\x01');
            if (piVar4 != (int *)0x0) {
              *(undefined1 *)((int)piVar4 + 0x76) = 1;
              (**(code **)(*piVar4 + 0x44))(this);
            }
            local_88 = (void *)this[0x12];
            local_84 = this[0x13];
            FUN_004f63d0(local_50,&local_88);
            local_88 = (void *)this[0x102];
            FUN_004f6340(auStack_30,&local_88);
            FUN_0078f670(auStack_70,0x10,local_50,2);
            FUN_004f5820(auStack_70);
            FUN_004466e0(local_50,0x20,2,FUN_004f5820);
            FUN_00792500();
            pvVar3 = (void *)thunk_FUN_00835d40();
            uVar6 = this[0x13];
            uVar5 = this[0x12];
            this_00 = (void *)FUN_008295c0((int)pvVar3);
            uVar2 = FUN_00629360(this_00,uVar5,uVar6);
            if ((char)uVar2 == '\0') {
              FUN_00834c50(pvVar3,this,'\x01');
            }
            FUN_00ab0940(this,'\x01','\0');
            FUN_00c641d0(pvVar1,'\x01',this + 0x55);
            return *(undefined8 *)(this + 0x12);
          }
          (**(code **)(*this + 8))(1);
        }
      }
    }
  }
  return 0;
}

