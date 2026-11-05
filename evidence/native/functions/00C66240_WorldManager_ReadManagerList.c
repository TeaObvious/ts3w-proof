/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Reads manager-list key at 011853C0
   (90620000:1:1), then global-layer identity at 011853D0 (0498DA7E:1:1). UInt32 list version >2
   fails; versions <2 consume a legacy word and UInt32 IDs, version 2 uses UInt64 IDs. Iterates
   serialized count and creates only each listed ID/type, with separate global layer. This does not
   enumerate every LDES entry or require its IDs equal the admitted manager set. Complete boundary
   00C66240..00C6652F is established by ordinary fall-through at 00C6624A and RET 8 at 00C6652D.
   Hidden arguments to constructor 00C64000 and inferred local types remain ABI recovery
   limitations. */

byte __thiscall WorldManager_ReadManagerList(void *this,int sourceArchive,uint resourceGroupContext)

{
  undefined *puVar1;
  byte bVar2;
  char cVar3;
  uint uVar4;
  uint uVar5;
  int *piVar6;
  int **ppiVar7;
  void *this_00;
  byte bVar8;
  uint uStack_34;
  int *piStack_30;
  wchar_t *pwStack_2c;
  int *piStack_28;
  undefined4 uStack_24;
  int *piStack_20;
  undefined4 uStack_1c;
  undefined1 auStack_18 [8];
  int *piStack_10;
  byte bStack_4;

  piStack_28 = (int *)0x0;
  if (sourceArchive != 0) {
    FUN_007d7920(auStack_18,sourceArchive,resourceGroupContext);
    resourceGroupContext = 0;
    uStack_34 = 0;
    piStack_20 = (int *)0x0;
    uStack_1c = 0;
    pwStack_2c = (wchar_t *)0x0;
    bVar2 = FUN_007d84c0(auStack_18,&DAT_011853c0,'\0');
    if (bVar2 != 0) {
      uVar4 = FUN_004dd980(piStack_10,&resourceGroupContext);
      FUN_007d79f0(auStack_18,(byte)uVar4);
      if (bStack_4 != 0) {
        if (2 < resourceGroupContext) {
          FUN_007d7990((int)auStack_18);
          return 0;
        }
        if (resourceGroupContext < 2) {
          piStack_30 = (int *)0x0;
          FUN_005684b0(auStack_18,(uint *)&piStack_30);
        }
        FUN_005684b0(auStack_18,&uStack_34);
        uVar4 = 0;
        if (uStack_34 != 0) {
          do {
            if (resourceGroupContext < 2) {
              piStack_30 = (int *)0x0;
              uVar5 = FUN_004dd980(piStack_10,(uint *)&piStack_30);
              FUN_007d79f0(auStack_18,(byte)uVar5);
              piStack_20 = piStack_30;
              uStack_1c = 0;
            }
            else {
              uVar5 = FUN_004ddab0(piStack_10,(uint *)&piStack_20);
              FUN_007d79f0(auStack_18,(byte)uVar5);
            }
            uVar5 = FUN_004dd980(piStack_10,(uint *)&pwStack_2c);
            FUN_007d79f0(auStack_18,(byte)uVar5);
                    /* Manager-list loop: each row supplies serialized owner identity and manager
                       type to 00C64000; successful objects are added to world manager collection.
                       Construction count follows this resource's rows. Unreferenced LDES resources
                       are not scanned here. */
            piVar6 = FUN_00c64000(this,pwStack_2c);
            if (piVar6 != (int *)0x0) {
              piStack_30 = piVar6;
              (**(code **)*piVar6)();
              FUN_00b27450((void *)((int)this + 0x9c),(int *)&piStack_30);
              if (piStack_30 != (int *)0x0) {
                (**(code **)(*piStack_30 + 4))();
              }
            }
            uVar4 = uVar4 + 1;
          } while (uVar4 < uStack_34);
        }
        if (uStack_34 == 0) {
          bVar8 = 1;
          piStack_30 = (int *)0x0;
          ppiVar7 = &piStack_30;
        }
        else {
          ppiVar7 = *(int ***)((int)this + 0x9c);
          bVar8 = (byte)piStack_28;
        }
        *(int **)((int)this + 0xac) = *ppiVar7;
        if (((bVar8 & 1) != 0) && (piStack_30 != (int *)0x0)) {
          (**(code **)(*piStack_30 + 4))();
        }
        FUN_007d7a70((int)auStack_18);
                    /* Separate global-layer key is opened after the listed-manager loop; this
                       resource stores one UInt64 identity. It is distinct from all LDES identities
                       present in the package. */
        cVar3 = FUN_007d84c0(auStack_18,&DAT_011853d0,'\0');
        if (cVar3 == '\0') {
          bStack_4 = 1;
          piStack_20 = (int *)0x0;
          uStack_1c = 0;
        }
        else {
          uVar4 = FUN_004ddab0(piStack_10,(uint *)&piStack_20);
          FUN_007d79f0(auStack_18,(byte)uVar4);
        }
        puVar1 = PTR_u_GlobalLayer_01185340;
        if (*(int *)((int)this + 0xb0) == 0) {
          piStack_28 = piStack_20;
          uStack_24 = uStack_1c;
          this_00 = (void *)FUN_004e4520(0xb8,8,0,"Lot/ObjMgr - Layer",0);
          if (this_00 == (void *)0x0) {
            piVar6 = (int *)0x0;
          }
          else {
            piVar6 = FUN_00aa79b0(this_00,this);
            if (piVar6 != (int *)0x0) {
              (**(code **)(*piVar6 + 0x60))(&piStack_28);
              if (puVar1 != (undefined *)0x0) {
                FUN_00c6f000(piVar6,(wchar_t *)puVar1);
              }
              FUN_00c63e10(piVar6);
            }
          }
          FUN_008c8d00((int *)((int)this + 0xb0),piVar6);
          if (*(int *)((int)this + 0xb0) == 0) {
            FUN_007d7990((int)auStack_18);
            return 0;
          }
        }
        bVar8 = bStack_4;
        FUN_007d7990((int)auStack_18);
        return bVar8 & bVar2;
      }
    }
    FUN_007d7990((int)auStack_18);
  }
  return 0;
}

