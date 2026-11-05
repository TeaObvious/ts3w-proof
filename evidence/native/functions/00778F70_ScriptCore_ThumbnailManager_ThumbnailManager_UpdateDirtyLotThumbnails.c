/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x01162af0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_UpdateDirtyLotThumbnails [assembly=ScriptCore
   token=0x0600017C; callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC 1.67 contract: captures the callback token, visits the selected lot-service vector and
   attempts thumbnail requests. Distinct stack bytes track service availability and whether any
   D5DA50 admission succeeded. Any admission selects host +120h/+11Ch and notifier release;
   otherwise host +130h receives immediate availability. Thus immediate true can occur with no
   admitted request, including an empty vector; it is not rendered/published-image success. Missing
   either service supplies false.
   
   The request loop selects index 2 using mask 0x04. The optional concrete notifier has locally
   paired +4 reference counting, but nullable allocation, downstream retention/cancellation and
   eventual delivery remain open. Host access is not locally null-guarded. Original managed import
   is void(Delegate); its wrapper obtains/unboxes the callback result. Current C's unaff_EDI and
   pointer-valued cleanup-flag projection do not identify the physical notifier/stack byte. Preserve
   ABI/types and the two stored ranges; their intervening eight bytes are not owned. */

void __cdecl
ScriptCore.ThumbnailManager::ThumbnailManager_UpdateDirtyLotThumbnails(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  bool bVar3;
  void *pvVar4;
  byte bVar5;
  int *piVar6;
  void *this;
  undefined4 uVar7;
  undefined **ppuVar8;
  uint uVar9;
  uint uVar10;
  int *unaff_EDI;
  undefined8 uVar11;
  undefined1 uStack_186;
  int *piStack_184;
  undefined **ppuStack_174;
  undefined **ppuStack_170;
  int *local_16c;
  int *piStack_168;
  void *pvStack_164;
  undefined **appuStack_160 [2];
  undefined2 uStack_158;
  undefined2 uStack_156;
  undefined1 uStack_150;
  undefined4 uStack_140;
  undefined4 uStack_138;
  void *apvStack_130 [4];
  void *pvStack_120;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  void *pvStack_a0;
  void *pvStack_90;
  
  piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_16c = piVar6;
  uVar11 = (**(code **)(*piVar6 + 0x118))();
  pvVar4 = DAT_011edbc4;
  uStack_186 = 0;
  pvStack_164 = DAT_011eec30;
  if ((DAT_011edbc4 != (void *)0x0) && (DAT_011eec30 != (void *)0x0)) {
    uStack_186 = 1;
    bVar3 = false;
    this = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piStack_184 = (int *)0x0;
    }
    else {
      piStack_184 = FUN_00777c70(this,(int)uVar11,(int)((ulonglong)uVar11 >> 0x20),param_1);
      if (piStack_184 != (int *)0x0) {
        (**(code **)(*piStack_184 + 4))();
      }
    }
    piStack_168 = (int *)FUN_00c687a0(pvVar4,'\x01');
    ppuVar8 = (undefined **)(piStack_168[1] - *piStack_168 >> 2);
    ppuStack_174 = (undefined **)0x0;
    ppuStack_170 = ppuVar8;
    if (ppuVar8 != (undefined **)0x0) {
      do {
        iVar1 = *(int *)(*piStack_168 + (int)ppuStack_174 * 4);
        if (iVar1 != 0) {
          uVar7 = *(undefined4 *)(iVar1 + 0x48);
          uVar2 = *(undefined4 *)(iVar1 + 0x4c);
          FUN_005e6500((int *)apvStack_130);
          uStack_ac = 0;
          uStack_138 = 0;
          uStack_b0 = 0x436fee4c;
          uVar10 = 0;
          uVar9 = 1;
          uStack_140 = uVar7;
          uStack_b8 = uVar7;
          uStack_b4 = uVar2;
          do {
            if ((uVar9 & 4) != 0) {
              FUN_005e6cb0(apvStack_130,uVar10,0,uStack_140,uVar2,uVar10 + 0xd84e7fc4,0);
            }
            pvVar4 = pvStack_164;
            uVar10 = uVar10 + 1;
            uVar9 = uVar9 * 2;
          } while (uVar10 < 4);
          bVar5 = FUN_00d4e5d0(pvStack_164,(int *)apvStack_130);
          if ((bVar5 == 0) &&
             (uVar7 = FUN_00d5da50(pvVar4,(int *)apvStack_130,(int *)0x0,(LPCRITICAL_SECTION)0x0,
                                   (int *)0x0,piStack_184), (char)uVar7 != '\0')) {
            bVar3 = true;
          }
          if ((pvStack_a0 != (void *)0x0) && (pvStack_a0 != pvStack_90)) {
            Memory_FreeIfNonNull(pvStack_a0);
          }
          if ((apvStack_130[0] != (void *)0x0) && (apvStack_130[0] != pvStack_120)) {
            Memory_FreeIfNonNull(apvStack_130[0]);
          }
          ppuVar8 = ppuStack_170;
          piVar6 = local_16c;
        }
        ppuStack_174 = (undefined **)((int)ppuStack_174 + 1);
      } while (ppuStack_174 < ppuVar8);
      if (bVar3) {
        (**(code **)(*piVar6 + 0x120))(uVar11,0xffffffff,param_1,0);
        (**(code **)(*piVar6 + 0x11c))();
        if (unaff_EDI == (int *)0x0) {
          return;
        }
        (**(code **)(*unaff_EDI + 8))();
        return;
      }
    }
    if (piStack_184 != (int *)0x0) {
      (**(code **)(*piStack_184 + 8))();
    }
  }
  uStack_150 = uStack_186;
  appuStack_160[0] = &PTR_FUN_00fba6f4;
  uStack_156 = 1;
  uStack_158 = 0;
  (**(code **)(*piVar6 + 0x130))(param_1,uVar11,appuStack_160,0);
  ppuStack_174 = &PTR_FUN_00fba6f4;
  if (((uint)local_16c & 4) != 0) {
    FUN_004f5760(&ppuStack_174,'\0');
  }
  return;
}

