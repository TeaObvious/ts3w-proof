/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163520 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetAllPondIds [assembly=ScriptCore token=0x060007A7; lotId:
   System.UInt64, idArray: System.UInt32[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered
   all-pond-IDs wrapper. Stored metadata one address byte, ZERO actual Listing. Separate bounded
   original PE establishes world/lot admission, temporary UInt32 vector and existing typed
   array-interface calls. Managed wrappers do not clear caller output on false. No full stored body
   or decompiler indirect-stack type claim. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

undefined4 ScriptCore_World__World_GetAllPondIds(int param_1,int param_2,int param_3)

{
  uint in_EAX;
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 extraout_EAX;
  int *piVar4;
  undefined4 extraout_EAX_00;
  uint extraout_EAX_01;
  int unaff_EBX;
  int iVar5;
  void *pvVar6;
  int iStack_14;
  void *pvStack_10;
  int *piStack_c;
  int *piStack_8;
  char *pcStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    if (param_1 == 0 && param_2 == 0) {
      iVar1 = FUN_00c60950((int)DAT_011edbc4);
      pvStack_10 = (void *)0x0;
      piStack_8 = (int *)0x0;
      pcStack_4 = "Scratch/WorldHost/sGetAllPondInfo";
      piStack_c = (int *)0x0;
      if (0 < iVar1) {
        iVar5 = 1;
        do {
          iStack_14 = iVar5;
          if (piStack_c < piStack_8) {
            piVar4 = piStack_c + 1;
            if (piStack_c != (int *)0x0) {
              *piStack_c = iVar5;
            }
          }
          else {
            FUN_00982420(&pvStack_10,piStack_c,&iStack_14);
            piVar4 = piStack_c;
          }
          piStack_c = piVar4;
          iVar5 = iVar5 + 1;
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
      piVar4 = piStack_c;
      pvVar6 = pvStack_10;
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar1 = (int)piVar4 - (int)pvVar6 >> 2;
      (**(code **)(*piVar2 + 0x84))(param_3,iVar1);
      uVar3 = (**(code **)(*piVar2 + 0x9c))(param_3,pvVar6,0,iVar1);
      if (pvVar6 != (void *)0x0) {
        Memory_FreeIfNonNull(pvVar6);
        uVar3 = extraout_EAX;
      }
LAB_00797dc7:
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
    piVar4 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar4 != (int *)0x0) {
      in_EAX = 0;
      if ((void *)piVar4[0xb2] != (void *)0x0) {
        pvStack_10 = (void *)0x0;
        piStack_c = (int *)0x0;
        piStack_8 = (int *)0x0;
        pcStack_4 = "Scratch/WorldHost/sGetAllPondInfo";
        uVar3 = FUN_00b64330((void *)piVar4[0xb2],&pvStack_10);
        if ((char)uVar3 != '\0') {
          piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
          pvVar6 = (void *)param_3;
          (**(code **)(*piVar4 + 0x84))(param_3,(int)piStack_c - (int)pvStack_10 >> 2);
          (**(code **)(*piVar4 + 0x9c))(param_3,unaff_EBX,0,iStack_14 - unaff_EBX >> 2);
          uVar3 = 0;
          if (pvVar6 != (void *)0x0) {
            Memory_FreeIfNonNull(pvVar6);
            return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
          }
          goto LAB_00797dc7;
        }
        in_EAX = 0;
        if (pvStack_10 != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_10);
          in_EAX = extraout_EAX_01;
        }
      }
    }
  }
  return in_EAX & 0xffffff00;
}

