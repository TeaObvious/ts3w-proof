/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635b0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetObjectsImpl [assembly=ScriptCore token=0x060007BA; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_World__World_GetObjectsImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  int iVar1;
  int *piVar2;
  int *this;
  undefined4 unaff_EBX;
  int iVar3;
  int iVar4;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  int iStack_18;
  int iStack_10;
  int iStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((DAT_011edbc4 != (void *)0x0) &&
     (this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0), this != (int *)0x0)) {
    uStack_20._0_3_ = CONCAT12(param_5,CONCAT11(param_4,param_3));
    iStack_10 = 0;
    iStack_c = 0;
    uStack_8 = 0;
    pcStack_4 = "World/UserMayPlaceFloorPattern";
    FUN_00ac7480(this,(char *)&uStack_20,&iStack_10,'\0','\0','\x01',&DAT_0000000f,0,5);
    iVar3 = iStack_c - iStack_10 >> 2;
    (**(code **)(*piVar2 + 0x88))(&uStack_1c,iVar3);
    iVar4 = 0;
    if (0 < iVar3) {
      do {
        iVar1 = *(int *)(iStack_18 + iVar4 * 4);
        if (iVar1 == 0) {
          uStack_20 = 0;
          uStack_1c = 0;
        }
        else {
          uStack_20 = *(undefined4 *)(iVar1 + 8);
          uStack_1c = *(undefined4 *)(iVar1 + 0xc);
        }
        (**(code **)(*piVar2 + 0xa0))(&stack0xffffffdc,&uStack_20,iVar4,1);
        iVar4 = iVar4 + 1;
      } while (iVar4 < iVar3);
    }
    if (iStack_18 != 0) {
      FUN_004e44e0(iStack_18);
    }
    return unaff_EBX;
  }
  return 0;
}

