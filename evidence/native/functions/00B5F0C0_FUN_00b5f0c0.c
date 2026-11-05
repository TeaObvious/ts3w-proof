/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */



void __thiscall FUN_00b5f0c0(void *this,void *param_1,float param_2,float param_3)

{
  undefined4 *puVar1;
  uint uVar2;
  float10 fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float local_1c;
  float local_18;
  
  fVar4 = param_2 + 0.5;
  fVar5 = param_2 + 0.5;
  fVar6 = param_2 + 0.5;
  fVar7 = param_2 + 0.5;
  local_30 = (float)(-(uint)(fVar4 < 0.0) & 0x4b000000 | ~-(uint)(fVar4 < 0.0) & 0xcb000000);
  fStack_2c = (float)(-(uint)(fVar5 < 0.0) & 0x4b000000 | ~-(uint)(fVar5 < 0.0) & 0xcb000000);
  fStack_28 = (float)(-(uint)(fVar6 < 0.0) & 0x4b000000 | ~-(uint)(fVar6 < 0.0) & 0xcb000000);
  fStack_24 = (float)(-(uint)(fVar7 < 0.0) & 0x4b000000 | ~-(uint)(fVar7 < 0.0) & 0xcb000000);
  local_30 = (fVar4 - local_30) + local_30;
  fStack_2c = (fVar5 - fStack_2c) + fStack_2c;
  fStack_28 = (fVar6 - fStack_28) + fStack_28;
  fStack_24 = (fVar7 - fStack_24) + fStack_24;
  local_30 = local_30 - (float)(-(uint)(fVar4 < local_30) & 0x3f800000);
  fStack_2c = fStack_2c - (float)(-(uint)(fVar5 < fStack_2c) & 0x3f800000);
  fStack_28 = fStack_28 - (float)(-(uint)(fVar6 < fStack_28) & 0x3f800000);
  fStack_24 = fStack_24 - (float)(-(uint)(fVar7 < fStack_24) & 0x3f800000);
  fVar4 = param_3 + 0.5;
  fVar5 = param_3 + 0.5;
  fVar6 = param_3 + 0.5;
  fVar7 = param_3 + 0.5;
  local_40 = (float)(-(uint)(fVar4 < 0.0) & 0x4b000000 | ~-(uint)(fVar4 < 0.0) & 0xcb000000);
  fStack_3c = (float)(-(uint)(fVar5 < 0.0) & 0x4b000000 | ~-(uint)(fVar5 < 0.0) & 0xcb000000);
  fStack_38 = (float)(-(uint)(fVar6 < 0.0) & 0x4b000000 | ~-(uint)(fVar6 < 0.0) & 0xcb000000);
  fStack_34 = (float)(-(uint)(fVar7 < 0.0) & 0x4b000000 | ~-(uint)(fVar7 < 0.0) & 0xcb000000);
  local_40 = (fVar4 - local_40) + local_40;
  fStack_3c = (fVar5 - fStack_3c) + fStack_3c;
  fStack_38 = (fVar6 - fStack_38) + fStack_38;
  fStack_34 = (fVar7 - fStack_34) + fStack_34;
  local_40 = local_40 - (float)(-(uint)(fVar4 < local_40) & 0x3f800000);
  fStack_3c = fStack_3c - (float)(-(uint)(fVar5 < fStack_3c) & 0x3f800000);
  fStack_38 = fStack_38 - (float)(-(uint)(fVar6 < fStack_38) & 0x3f800000);
  fStack_34 = fStack_34 - (float)(-(uint)(fVar7 < fStack_34) & 0x3f800000);
  local_4c = CONCAT22((short)(int)(local_40 * 4.0),(short)(int)(local_30 * 4.0));
  fVar3 = WorldSurface_QueryHeight
                    (*(void **)((int)this + 0x8c),local_30,local_40,0,'\x01','\0',(undefined1 *)0x0,
                     (undefined1 *)0x0,'\x01','\0');
  fVar4 = (*(float *)((int)this + 0x90) - (float)fVar3) * 1000.0;
  uVar2 = (int)(-32700.0 - fVar4) >> 0x1f;
  fVar4 = (float)(~uVar2 & 0xc6ff7800 | (uint)fVar4 & uVar2);
  uVar2 = (int)(32700.0 - fVar4) >> 0x1f;
  local_48 = CONCAT22(4,(short)(int)(float)(~uVar2 & (uint)fVar4 | uVar2 & 0x46ff7800));
  FUN_00c6a9d0(*(void **)((int)this + 0x8c),&local_20,local_30,local_40);
  local_30 = local_18 * 127.0 + 128.0;
  fStack_2c = local_18 * 127.0 + 128.0;
  fStack_28 = local_18 * 127.0 + 128.0;
  fStack_24 = local_18 * 127.0 + 128.0;
  puVar1 = *(undefined4 **)((int)param_1 + 4);
  local_44 = CONCAT22(CONCAT11(local_44._3_1_,(char)(int)local_30),
                      CONCAT11((char)(int)(local_1c * 127.0 + 128.0),
                               (char)(int)(local_20 * 127.0 + 128.0)));
  if (puVar1 < *(undefined4 **)((int)param_1 + 8)) {
    *(undefined4 **)((int)param_1 + 4) = puVar1 + 3;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = local_4c;
      puVar1[1] = local_48;
      puVar1[2] = local_44;
      return;
    }
  }
  else {
    FUN_00d700a0(param_1,puVar1,&local_4c);
  }
  return;
}

