/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Sampler-specific qualification: at79E9D0 split descriptor into stage=raw>>16 andstate=raw&FFFF. Missing valuepointer orcount0 uses rawdefaultDWORD; live type1 scalar state8 preservesfloatbits, all other IDs incl9 use FNSTCW/OR0C00/FLDCW/FISTPqword thenLOWDWORD/restoredCW (79EA01..27). Wrongnonemptytype skips call. No finite/[0,16)/texturemipcount clamp. 6100C0->60F0A0 rawcache/COMsetter; laterselectedpreset1 omitsstate9 and60F120 excludes activebits. Current C ROUND/casts obscure these paths. Fresh readonly ownedranges[E7E0..E999],[E9A0..EA5C],[EA60..EB1C] total820bytes/266instr within retained829envelope: ninegapbytesnotowned, no fresh wholeenvelopeownership claim. */

/* Analyst PC1.67: Binds pixel/vertex objects, applies static8-byte render-state pairs only on pass
   identity change, dynamic12-byte triples every call, binds textures/samplers and parameters, then
   applies pending baselines. Dynamic triples=(stateId,parameterIndex,defaultDWORD). For valid float
   parameter, states36/37/38/175/195 preserve float DWORD; all other states truncate via x87 RC=11b
   FISTP. Missing parameter uses defaultDWORD unchanged. Decompiler ROUND and float/int casts do not
   establish numeric conversion in bit-preserving branches. Returns AL only. */

bool __thiscall ShaderPass_ApplyForDraw(void *this,void *renderDevice,void *renderTargetScope)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  uint *puVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  bool bVar9;
  uint uStack_10;
  uint local_c;
  float fStack_8;
  
  if ((*(int *)((int)this + 0x2c) == 0) && (*(int *)((int)this + 0x30) == 0)) {
    return false;
  }
  if (*(int *)((int)this + 4) != 0) {
    FUN_0079d4c0(this,renderDevice,renderTargetScope);
  }
  bVar9 = *(void **)((int)renderDevice + 0x54) != this;
  if (bVar9) {
    *(void **)((int)renderDevice + 0x54) = this;
  }
  piVar1 = *(int **)((int)renderDevice + 0xc);
  if (bVar9) {
    if (*(int *)((int)this + 0x2c) == 0) {
      (**(code **)(*piVar1 + 0x1ac))(piVar1,0);
    }
    else {
      (**(code **)(*piVar1 + 0x1ac))(piVar1,*(undefined4 *)(*(int *)((int)this + 0x2c) + 0x10));
    }
    if (*(int *)((int)this + 0x30) == 0) {
      (**(code **)(*piVar1 + 0x170))(piVar1,0);
      return false;
    }
    (**(code **)(*piVar1 + 0x170))(piVar1,*(undefined4 *)(*(int *)((int)this + 0x30) + 0x10));
    if (*(uint *)((int)this + 0x38) != 0) {
      RenderDevice_ApplyPassStatePairs
                (renderDevice,*(void **)((int)this + 0x34),*(uint *)((int)this + 0x38));
    }
  }
  iVar2 = DAT_011d8530;
  if (*(int *)((int)this + 0x3c) != 0) {
    local_c = 0;
    iVar7 = 0;
    do {
      puVar5 = (uint *)(*(int *)((int)this + 0x40) + iVar7);
      puVar3 = (undefined4 *)
               (*(int *)(*(int *)((int)this + 0x40) + 4 + iVar7) * 0x10 + *(int *)(iVar2 + 4));
      if ((*(short *)(puVar3 + 1) != 0) && (*(short *)(puVar3 + 1) != *(short *)(iVar2 + 0x10))) {
        puVar3 = &DAT_010168e0;
      }
      if (*(short *)((int)puVar3 + 6) == 1) {
        if (((float *)puVar3[3] == (float *)0x0) || (puVar3[2] == 0)) {
          fStack_8 = (float)puVar5[2];
          uVar8 = *puVar5;
        }
        else {
          uVar8 = *puVar5;
          fStack_8 = *(float *)puVar3[3];
          switch(uVar8) {
          case 0x24:
          case 0x25:
          case 0x26:
          case 0xaf:
          case 0xc3:
            break;
          default:
            fStack_8 = (float)(longlong)ROUND(fStack_8);
          }
        }
        RenderDevice_ApplyPassState(renderDevice,uVar8,(uint)fStack_8);
      }
      local_c = local_c + 1;
      iVar7 = iVar7 + 0xc;
    } while (local_c < *(uint *)((int)this + 0x3c));
  }
  if (*(int *)((int)this + 200) != 0) {
    uStack_10 = 0;
    iVar7 = 0;
    do {
      puVar5 = (uint *)(*(int *)((int)this + 0xcc) + iVar7);
      puVar3 = (undefined4 *)
               (*(int *)(*(int *)((int)this + 0xcc) + 4 + iVar7) * 0x10 + *(int *)(iVar2 + 4));
      if ((*(short *)(puVar3 + 1) != 0) && (*(short *)(puVar3 + 1) != *(short *)(iVar2 + 0x10))) {
        puVar3 = &DAT_010168e0;
      }
      uVar8 = *puVar5;
      uVar6 = uVar8 & 0xffff;
      if (((float *)puVar3[3] == (float *)0x0) || (puVar3[2] == 0)) {
        fStack_8 = (float)puVar5[2];
LAB_0079ea2c:
        FUN_006100c0(renderDevice,uVar8 >> 0x10,uVar6,fStack_8);
      }
      else if (*(short *)((int)puVar3 + 6) == 1) {
        fStack_8 = *(float *)puVar3[3];
        if (uVar6 != 8) {
          fStack_8 = (float)(longlong)ROUND(fStack_8);
        }
        goto LAB_0079ea2c;
      }
      uStack_10 = uStack_10 + 1;
      iVar7 = iVar7 + 0xc;
    } while (uStack_10 < *(uint *)((int)this + 200));
  }
  uVar8 = 0;
  puVar3 = (undefined4 *)((int)this + 0x48);
  do {
    if ((*(uint *)((int)this + 0x44) & 1 << ((byte)uVar8 & 0x1f)) != 0) {
      puVar4 = (undefined4 *)(puVar3[0x32] * 0x10 + *(int *)(iVar2 + 4));
      if ((*(short *)(puVar4 + 1) != 0) && (*(short *)(puVar4 + 1) != *(short *)(iVar2 + 0x10))) {
        puVar4 = &DAT_010168e0;
      }
      FUN_0060f3b0(renderDevice,uVar8,puVar4[3]);
      if ((bVar9) && ((void *)*puVar3 != (void *)0x0)) {
        FUN_0079a590((void *)*puVar3,renderDevice,uVar8);
      }
    }
    uVar8 = uVar8 + 1;
    puVar3 = puVar3 + 1;
  } while (uVar8 < 0x10);
  FUN_0060f290(renderDevice,*(undefined4 *)((int)this + 0x44));
  FUN_0060f430(renderDevice,*(uint *)((int)this + 0x44) ^ 0xffff);
  iVar2 = DAT_011d8530;
  FUN_0079e3c0(this,(int)renderDevice,DAT_011d8530,(int *)((int)this + 0x168),1,bVar9);
  FUN_0079e3c0(this,(int)renderDevice,iVar2,(int *)((int)this + 0x178),0,bVar9);
  RenderDevice_ApplyPendingBaselines(renderDevice);
  return true;
}

