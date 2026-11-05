/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_CreateHouseboatLotImpl. Export ordinal(s):
   1273. Entry VA: 0x10586080. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000D03. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 __cdecl World_CreateHouseboatLotImpl(int *param_1,int param_2,int param_3,int param_4)

{
  void *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  int *this;
  int *piVar4;
  void *this_00;
  uint uVar5;
  uint uVar6;
  void *pvStack_88;
  int iStack_84;
  float afStack_80 [4];
  undefined4 auStack_70 [8];
  undefined1 auStack_50 [32];
  undefined1 auStack_30 [44];
  
  pvVar1 = DAT_10c700c4;
  pvStack_88 = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
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
    uVar2 = FUN_1023f390(DAT_10c700c4,param_1,param_2,afStack_80);
    if ((char)uVar2 != '\0') {
      *(undefined1 *)((int)pvVar1 + 0x40) = 1;
      pvVar3 = (void *)FUN_10918ed0(0x4c0,0x10,0,"World/New Lot",0);
      if (pvVar3 != (void *)0x0) {
        this = FUN_10086700(pvVar3,pvVar1);
        if (this != (int *)0x0) {
          uVar2 = FUN_100940f0(this,param_1,param_2,afStack_80,0.0,param_3,param_4,'\0',1,'\0',0.0,
                               1.4013e-45);
          if ((char)uVar2 != '\0') {
            FUN_100d13b0(this);
            FUN_10076540((int)this);
            pvVar1 = pvStack_88;
            piVar4 = FUN_100c4650(pvStack_88,'\x01');
            if (piVar4 != (int *)0x0) {
              *(undefined1 *)((int)piVar4 + 0x76) = 1;
              (**(code **)(*piVar4 + 0x44))(this);
            }
            pvStack_88 = (void *)this[0x12];
            iStack_84 = this[0x13];
            FUN_100795a0(auStack_50,&pvStack_88);
            pvStack_88 = (void *)this[0x102];
            FUN_100795d0(auStack_30,&pvStack_88);
            FUN_10582330(auStack_70,0x10,auStack_50,2);
            FUN_10074c30(auStack_70);
            FUN_10001000(auStack_50,0x20,2,FUN_10074c30);
            FUN_105851c0();
            pvVar3 = (void *)thunk_FUN_10627370();
            uVar6 = this[0x13];
            uVar5 = this[0x12];
            this_00 = (void *)FUN_1061ae10((int)pvVar3);
            uVar2 = FUN_10421110(this_00,uVar5,uVar6);
            if ((char)uVar2 == '\0') {
              FUN_10626280(pvVar3,this,'\x01');
            }
            FUN_10075c10(this,'\x01','\0');
            FUN_10238900(pvVar1,'\x01',this + 0x55);
            return *(undefined8 *)(this + 0x12);
          }
          (**(code **)(*this + 8))(1);
        }
      }
    }
  }
  return 0;
}

