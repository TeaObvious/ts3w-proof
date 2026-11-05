/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  bool bVar2;
  int *piVar3;
  int **ppiVar4;
  void *this_00;
  byte bVar5;
  uint uVar6;
  uint uStack_34;
  int *piStack_30;
  wchar_t *pwStack_2c;
  int *piStack_28;
  undefined4 uStack_24;
  int *piStack_20;
  undefined4 uStack_1c;
  undefined1 auStack_18 [8];
  void *pvStack_10;
  uint uStack_8;
  byte bStack_4;
  
  piStack_28 = (int *)0x0;
  if (sourceArchive != 0) {
    FUN_007d7920(auStack_18,sourceArchive,resourceGroupContext);
    resourceGroupContext = 0;
    uStack_34 = 0;
    piStack_20 = (int *)0x0;
    uStack_1c = 0;
    pwStack_2c = (wchar_t *)0x0;
    bVar2 = ResourceStreamContext_OpenWrite(auStack_18,&DAT_011853c0,0);
    if (bVar2) {
      bVar2 = Stream_ReadUInt32(pvStack_10,&resourceGroupContext,uStack_8);
      StreamReader_AccumulateStatus(auStack_18,bVar2);
      if (bStack_4 != 0) {
        if (2 < resourceGroupContext) {
          StreamReader_ReleaseAuxiliary(auStack_18);
          return 0;
        }
        if (resourceGroupContext < 2) {
          piStack_30 = (int *)0x0;
          StreamReader_ReadUInt32Into(auStack_18,(uint *)&piStack_30);
        }
        StreamReader_ReadUInt32Into(auStack_18,&uStack_34);
        uVar6 = 0;
        bVar2 = uStack_34 == 0;
        if (!bVar2) {
          do {
            if (resourceGroupContext < 2) {
              piStack_30 = (int *)0x0;
              bVar2 = Stream_ReadUInt32(pvStack_10,(uint *)&piStack_30,uStack_8);
              StreamReader_AccumulateStatus(auStack_18,bVar2);
              piStack_20 = piStack_30;
              uStack_1c = 0;
            }
            else {
              bVar2 = Stream_ReadUInt64(pvStack_10,(ulonglong *)&piStack_20,uStack_8);
              StreamReader_AccumulateStatus(auStack_18,bVar2);
            }
            bVar2 = Stream_ReadUInt32(pvStack_10,(uint *)&pwStack_2c,uStack_8);
            StreamReader_AccumulateStatus(auStack_18,bVar2);
                    /* Manager-list loop: each row supplies serialized owner identity and manager
                       type to 00C64000; successful objects are added to world manager collection.
                       Construction count follows this resource's rows. Unreferenced LDES resources
                       are not scanned here. */
            piVar3 = FUN_00c64000(this,pwStack_2c);
            if (piVar3 != (int *)0x0) {
              piStack_30 = piVar3;
              (**(code **)*piVar3)();
              FUN_00b27450((void *)((int)this + 0x9c),(int *)&piStack_30);
              if (piStack_30 != (int *)0x0) {
                (**(code **)(*piStack_30 + 4))();
              }
            }
            uVar6 = uVar6 + 1;
          } while (uVar6 < uStack_34);
          bVar2 = uStack_34 == 0;
        }
        if (bVar2) {
          bVar5 = 1;
          piStack_30 = (int *)0x0;
          ppiVar4 = &piStack_30;
        }
        else {
          ppiVar4 = *(int ***)((int)this + 0x9c);
          bVar5 = (byte)piStack_28;
        }
        *(int **)((int)this + 0xac) = *ppiVar4;
        if (((bVar5 & 1) != 0) && (piStack_30 != (int *)0x0)) {
          (**(code **)(*piStack_30 + 4))();
        }
        ResourceStreamContext_Close(auStack_18);
                    /* Separate global-layer key is opened after the listed-manager loop; this
                       resource stores one UInt64 identity. It is distinct from all LDES identities
                       present in the package. */
        bVar2 = ResourceStreamContext_OpenWrite(auStack_18,&DAT_011853d0,0);
        if (bVar2) {
          bVar2 = Stream_ReadUInt64(pvStack_10,(ulonglong *)&piStack_20,uStack_8);
          StreamReader_AccumulateStatus(auStack_18,bVar2);
        }
        else {
          bStack_4 = 1;
          piStack_20 = (int *)0x0;
          uStack_1c = 0;
        }
        puVar1 = PTR_u_GlobalLayer_01185340;
        if (*(int *)((int)this + 0xb0) == 0) {
          piStack_28 = piStack_20;
          uStack_24 = uStack_1c;
          this_00 = (void *)FUN_004e4520(0xb8,8,0,"Lot/ObjMgr - Layer",0);
          if (this_00 == (void *)0x0) {
            piVar3 = (int *)0x0;
          }
          else {
            piVar3 = FUN_00aa79b0(this_00,this);
            if (piVar3 != (int *)0x0) {
              (**(code **)(*piVar3 + 0x60))(&piStack_28);
              if (puVar1 != (undefined *)0x0) {
                FUN_00c6f000(piVar3,(wchar_t *)puVar1);
              }
              FUN_00c63e10(piVar3);
            }
          }
          FUN_008c8d00((int *)((int)this + 0xb0),piVar3);
          if (*(int *)((int)this + 0xb0) == 0) {
            StreamReader_ReleaseAuxiliary(auStack_18);
            return 0;
          }
        }
        bVar5 = bStack_4;
        StreamReader_ReleaseAuxiliary(auStack_18);
        return bVar5 & 1;
      }
    }
    StreamReader_ReleaseAuxiliary(auStack_18);
  }
  return 0;
}

