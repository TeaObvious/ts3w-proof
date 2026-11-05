/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX held-tool receiver, two actual stack words and RET8. Second stack word is mutable point pointer (ESI from savedESP+5C); first reaches CFFA90 fallback. Stored single-argument C and unaff_retaddr names are misleading. Tool2F7 selects object slot5C/60;2F5 selects separate four-step/clone versus eight-offset searches. Common offset table0,1,7,2,6,3,5,4 then optional cardinal four nudges tests only original yaw. ChildCCDC20 supplies placement status and helpers mutate tool/orientation/point; full flags/caller/helper semantics remain open. Nine nonowned gapbytes excluded.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00D016D0_FUN_00d016d0.asm
 */

void __thiscall FUN_00d016d0(void *this,float *param_1)

{
  float fVar1;
  void *this_00;
  float *pfVar2;
  char cVar3;
  char cVar4;
  int *piVar5;
  undefined4 uVar6;
  void *pvVar7;
  float *pfVar8;
  float *pfVar9;
  uint uVar10;
  int iVar11;
  float10 fVar12;
  float yaw;
  float *unaff_retaddr;
  int iVar13;
  int *piStack_40;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  float fStack_10;
  float fStack_c;
  float fStack_8;
  
  pfVar2 = param_1;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar13 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar13 = *(int *)((int)this + 0x60);
  }
  if ((((iVar13 != 0) && (this_00 = *(void **)(iVar13 + 0x58), this_00 != (void *)0x0)) &&
      (piVar5 = (int *)FUN_0068f130((int)this_00), piVar5 != (int *)0x0)) &&
     (piVar5 = (int *)(**(code **)(*piVar5 + 0xc))(0x90566b0e), piVar5 != (int *)0x0)) {
    uVar6 = FUN_00b00810((int)this_00);
    cVar4 = (char)uVar6;
    pvVar7 = Object_GetComponentByMask(this_00,DAT_011edf08);
    if (pvVar7 != (void *)0x0) {
      yaw = PlacementLocation_ReadYawWithRefresh(pvVar7);
      fStack_8 = param_1[2];
      fStack_10 = *param_1;
      fStack_c = param_1[1];
      pfVar8 = (float *)Placement_QuantizeYawToOctant(yaw);
      fStack_28 = FLOAT_00fab218;
      fStack_24 = FLOAT_00fab218;
      if (*(char *)((int)this + 0x2f5) != '\0') {
        fStack_34 = FLOAT_00fab218;
        fStack_30 = FLOAT_00fab218;
        fStack_2c = 0.0;
        fStack_20 = 0.0;
        iVar13 = 0;
        param_1 = pfVar8;
        do {
          fVar12 = FUN_00afbee0((int)param_1);
          fVar1 = (float)fVar12;
          if (param_1 == pfVar8) {
            cVar3 = FUN_00ccdc20((int)this_00,(int)piVar5,pfVar2,(float)fVar12,0,0,(void *)0x0,
                                 '\x01');
            if (cVar3 != '\0') goto LAB_00d01800;
          }
          else {
            fStack_34 = *pfVar2;
            fStack_30 = pfVar2[1];
            fStack_2c = pfVar2[2];
            FUN_00cfc470(1,this_00,this_00,&fStack_10,yaw,(float)fVar12,&fStack_34,(float *)0x0);
            FUN_00cfcc60(this,&fStack_34,fVar1,&fStack_28);
            cVar3 = FUN_00ccdc20((int)this_00,(int)piVar5,&fStack_28,fVar1,0,0,(void *)0x0,'\x01');
            if (cVar3 != '\0') {
              FUN_00cfe150(this,this_00,(int)param_1);
              FUN_00cfde40((int)this);
              *pfVar2 = fStack_28;
              pfVar2[1] = fStack_24;
              pfVar2[2] = fStack_20;
              *(float *)((int)this + 0xb8) = fStack_34;
              *(float *)((int)this + 0xbc) = fStack_30;
              *(float *)((int)this + 0xc0) = fStack_2c;
              if (cVar4 == '\0') {
                FUN_00cfc550(this,1,this_00,fVar1);
                return;
              }
              return;
            }
          }
          param_1 = (float *)((int)param_1 + 2U & 0x80000007);
          if ((int)param_1 < 0) {
            param_1 = (float *)(((int)param_1 - 1U | 0xfffffff8) + 1);
          }
          iVar13 = iVar13 + 1;
        } while (iVar13 < 4);
        FUN_00cfb2b0(this,piVar5);
        if (*(char *)((int)this + 0x2f7) == '\0') {
          iVar13 = *(int *)((int)this + 0x5c);
        }
        else {
          iVar13 = *(int *)((int)this + 0x60);
        }
        if (iVar13 == 0) {
          pvVar7 = (void *)0x0;
        }
        else {
          pvVar7 = *(void **)(iVar13 + 0x58);
        }
        iVar13 = 0;
        do {
          if (pvVar7 == (void *)0x0) break;
          fVar12 = FUN_00afbee0((int)param_1);
          fVar1 = (float)fVar12;
          if (param_1 == pfVar8) {
            cVar3 = FUN_00ccdc20((int)pvVar7,(int)piVar5,pfVar2,(float)fVar12,0,0,(void *)0x0,'\x01'
                                );
            if (cVar3 != '\0') {
LAB_00d01800:
              FUN_00cfde40((int)this);
              return;
            }
          }
          else {
            fStack_34 = *pfVar2;
            fStack_30 = pfVar2[1];
            fStack_2c = pfVar2[2];
            FUN_00cfc470(1,this_00,pvVar7,&fStack_10,yaw,(float)fVar12,&fStack_34,(float *)0x0);
            FUN_00cfcc60(this,&fStack_34,fVar1,&fStack_28);
            cVar3 = FUN_00ccdc20((int)pvVar7,(int)piVar5,&fStack_28,fVar1,0,0,(void *)0x0,'\x01');
            if (cVar3 != '\0') {
              FUN_00cfe150(this,pvVar7,(int)param_1);
              FUN_00cfde40((int)this);
              *pfVar2 = fStack_28;
              pfVar2[1] = fStack_24;
              pfVar2[2] = fStack_20;
              *(float *)((int)this + 0xb8) = fStack_34;
              *(float *)((int)this + 0xbc) = fStack_30;
              *(float *)((int)this + 0xc0) = fStack_2c;
              if (cVar4 == '\0') {
                FUN_00cfc550(this,1,pvVar7,fVar1);
                return;
              }
              return;
            }
          }
          param_1 = (float *)((int)param_1 + 2U & 0x80000007);
          if ((int)param_1 < 0) {
            param_1 = (float *)(((int)param_1 - 1U | 0xfffffff8) + 1);
          }
          iVar13 = iVar13 + 1;
        } while (iVar13 < 4);
        FUN_00cfb2b0(this,piVar5);
        return;
      }
      fStack_20 = 0.0;
      fStack_1c = FLOAT_00fab218;
      fStack_18 = FLOAT_00fab218;
      fStack_14 = 0.0;
      piStack_40 = &DAT_010841fc;
      do {
        pfVar9 = (float *)((int)pfVar8 + *piStack_40 & 0x80000007);
        if ((int)pfVar9 < 0) {
          pfVar9 = (float *)(((int)pfVar9 - 1U | 0xfffffff8) + 1);
        }
        fVar12 = FUN_00afbee0((int)pfVar9);
        fVar1 = (float)fVar12;
        if (pfVar9 == pfVar8) {
          cVar3 = FUN_00ccdc20((int)this_00,(int)piVar5,param_1,(float)fVar12,0,0,(void *)0x0,'\x01'
                              );
          if (cVar3 != '\0') {
            FUN_00cfe150(this,this_00,(int)pfVar9);
            return;
          }
        }
        else {
          fStack_28 = *param_1;
          fStack_24 = param_1[1];
          fStack_20 = param_1[2];
          FUN_00cfc470(1,this_00,this_00,&fStack_10,yaw,(float)fVar12,&fStack_28,(float *)0x0);
          FUN_00cfcc60(this,&fStack_28,fVar1,&fStack_1c);
          cVar3 = FUN_00ccdc20((int)this_00,(int)piVar5,&fStack_1c,fVar1,0,0,(void *)0x0,'\x01');
          if (cVar3 != '\0') {
            FUN_00cfe150(this,this_00,(int)pfVar9);
            *param_1 = fStack_1c;
            param_1[1] = fStack_18;
            param_1[2] = fStack_14;
            *(float *)((int)this + 0xb8) = fStack_28;
            *(float *)((int)this + 0xbc) = fStack_24;
            *(float *)((int)this + 0xc0) = fStack_20;
            if (cVar4 == '\0') {
              FUN_00cfc550(this,1,this_00,fVar1);
              return;
            }
            return;
          }
        }
        piStack_40 = piStack_40 + 1;
      } while ((int)piStack_40 < 0x108421c);
      iVar13 = *(int *)((int)this + 0x1b8);
      if (((iVar13 != 0) &&
          (iVar11 = *(int *)(iVar13 + 0xd8) - *(int *)(iVar13 + 0xd4), iVar13 = iVar11 >> 0x1f,
          iVar11 / 0x28 + iVar13 != iVar13)) &&
         (uVar10 = FUN_00afc790((uint)pfVar8), (char)uVar10 == '\0')) {
        fVar12 = FUN_00afbee0((int)pfVar8);
        param_1 = (float *)0x0;
        do {
          fStack_34 = param_1[0x42107b] + *pfVar2;
          fStack_2c = pfVar2[2];
          fStack_30 = param_1[0x421077] + pfVar2[1];
          cVar4 = FUN_00ccdc20((int)this_00,(int)piVar5,&fStack_34,(float)fVar12,0,0,(void *)0x0,
                               '\x01');
          if (cVar4 != '\0') {
            *pfVar2 = fStack_34;
            pfVar2[1] = fStack_30;
            pfVar2[2] = fStack_2c;
            return;
          }
          param_1 = param_1 + 1;
        } while (param_1 <= &DAT_0000000f);
      }
      if (*(char *)((int)this + 0x2f5) == '\0') {
        FUN_00cffa90(this,unaff_retaddr,pfVar2);
      }
    }
  }
  return;
}

