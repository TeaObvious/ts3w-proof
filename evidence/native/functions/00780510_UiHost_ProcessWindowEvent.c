/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete 0x20AF-byte body, ECX Host and TWO stack
   DWORDs/RET 8. Original missing second parameter caused bogus unaff_retaddr and callback offset
   expressions. Physical after SUB ESP,0xDE4 and three saves first word at ESP+DF4, after additional
   PUSH EBP second at ESP+DFC; all five direct caller sites push event pointer then IWindow. Guard
   global handle service, virtual 0x34AL false, Host callback+28 non-null. Acquire receiver virtual
   0 then translate/create kind30 handle via service 0xC8, reject zero. Acquire non-null
   source/destination from message+0/+4. Native message+8 ID selects six-target/19-byte switch plus
   higher text/custom branches, packing13 actual variants for service virtual
   0x134(callback,array,count 13). Key1-5, pointer6-9, focus11/26/27, hit15, drag19 and scroll24/25
   differ from default ID12/4097 integer payload. Pointer coordinates are FLOAT raw loads in
   specific branches, generic integer words are not floats. Mutable hit/drag/validation/query-action
   fields are written back in actual branches. Destroy 13 argument variants and return variant; only
   tag==1 returns bool lowbyte, elseAL 0. Receiver release belongs original managed
   ProcessEventCallback finally; no invented direct finally in this native body. Callback is reread
   at each actual virtual invocation. Full C may still expose indirect-call stack aliases; original
   PUSH/MOV/RET and selected switch authoritative, no speculative child prototypes. */

bool __thiscall UiHost_ProcessWindowEvent(void *this,void *windowInterface,void *eventMessage)

{
  char *pcVar1;
  undefined1 uVar2;
  char cVar3;
  int *piVar4;
  void *pvVar5;
  undefined *puVar6;
  int iVar7;
  undefined4 *puVar8;
  uint unaff_ESI;
  int *unaff_retaddr;
  uint uVar9;
  char *pcStack_de0;
  void *local_ddc;
  undefined **appuStack_dd8 [2];
  undefined2 uStack_dd0;
  undefined2 uStack_dce;
  undefined **appuStack_db8 [2];
  undefined2 uStack_db0;
  undefined2 uStack_dae;
  undefined **appuStack_d98 [2];
  undefined2 uStack_d90;
  undefined2 uStack_d8e;
  undefined **appuStack_d78 [2];
  undefined2 uStack_d70;
  undefined2 uStack_d6e;
  undefined **appuStack_d58 [2];
  undefined2 uStack_d50;
  undefined2 uStack_d4e;
  undefined **appuStack_d38 [2];
  undefined2 uStack_d30;
  undefined2 uStack_d2e;
  undefined **appuStack_d18 [2];
  undefined2 uStack_d10;
  undefined2 uStack_d0e;
  undefined **appuStack_cf8 [2];
  undefined2 uStack_cf0;
  undefined2 uStack_cee;
  undefined **appuStack_cd8 [2];
  undefined2 uStack_cd0;
  undefined2 uStack_cce;
  undefined **appuStack_cb8 [2];
  undefined2 uStack_cb0;
  undefined2 uStack_cae;
  undefined **appuStack_c98 [2];
  undefined2 uStack_c90;
  undefined2 uStack_c8e;
  undefined **appuStack_c78 [2];
  undefined2 uStack_c70;
  undefined2 uStack_c6e;
  undefined **appuStack_c58 [2];
  undefined2 uStack_c50;
  undefined2 uStack_c4e;
  undefined4 auStack_c48 [2];
  short sStack_c3e;
  undefined **ppuStack_c38;
  undefined2 uStack_c30;
  undefined2 uStack_c2e;
  int iStack_c18;
  uint uStack_c14;
  uint uStack_c10;
  undefined4 uStack_c0c;
  uint uStack_c08;
  float fStack_c04;
  int iStack_c00;
  float fStack_bfc;
  uint uStack_bf8;
  uint uStack_bf4;
  uint uStack_bf0;
  uint uStack_bec;
  uint uStack_be8;
  uint uStack_be4;
  uint uStack_be0;
  uint uStack_bdc;
  uint uStack_bd8;
  undefined4 uStack_bd4;
  uint uStack_bd0;
  uint uStack_bcc;
  uint uStack_bc8;
  uint uStack_bc4;
  uint uStack_bc0;
  int iStack_bbc;
  uint uStack_bb8;
  int iStack_bb4;
  int iStack_bb0;
  uint uStack_bac;
  int aiStack_ba8 [4];
  int aiStack_b98 [4];
  undefined4 auStack_b88 [4];
  undefined4 auStack_b78 [4];
  undefined1 auStack_b68 [32];
  undefined4 auStack_b48 [8];
  undefined4 auStack_b28 [8];
  undefined4 auStack_b08 [8];
  undefined4 auStack_ae8 [8];
  undefined4 auStack_ac8 [8];
  undefined4 auStack_aa8 [8];
  undefined4 auStack_a88 [8];
  undefined4 auStack_a68 [8];
  undefined4 auStack_a48 [8];
  undefined4 auStack_a28 [8];
  undefined4 auStack_a08 [8];
  undefined4 auStack_9e8 [8];
  undefined4 auStack_9c8 [4];
  undefined4 auStack_9b8 [4];
  undefined1 auStack_9a8 [32];
  undefined4 auStack_988 [8];
  undefined4 auStack_968 [8];
  undefined4 auStack_948 [8];
  undefined4 auStack_928 [8];
  undefined4 auStack_908 [8];
  undefined4 auStack_8e8 [8];
  undefined4 auStack_8c8 [8];
  undefined4 auStack_8a8 [8];
  undefined4 auStack_888 [8];
  undefined4 auStack_868 [4];
  undefined4 auStack_858 [4];
  undefined1 auStack_848 [32];
  undefined4 auStack_828 [8];
  undefined4 auStack_808 [8];
  undefined4 auStack_7e8 [8];
  undefined4 auStack_7c8 [8];
  undefined4 auStack_7a8 [8];
  undefined4 auStack_788 [8];
  undefined4 auStack_768 [8];
  undefined4 auStack_748 [8];
  undefined4 auStack_728 [8];
  undefined4 auStack_708 [4];
  undefined4 auStack_6f8 [4];
  undefined1 auStack_6e8 [32];
  undefined4 auStack_6c8 [8];
  undefined4 auStack_6a8 [8];
  undefined4 auStack_688 [8];
  undefined4 auStack_668 [8];
  undefined4 auStack_648 [8];
  undefined4 auStack_628 [8];
  undefined4 auStack_608 [8];
  undefined4 auStack_5e8 [8];
  undefined4 auStack_5c8 [8];
  undefined4 auStack_5a8 [8];
  undefined4 auStack_588 [8];
  undefined4 auStack_568 [4];
  undefined4 auStack_558 [4];
  undefined1 auStack_548 [32];
  undefined4 auStack_528 [8];
  undefined4 auStack_508 [8];
  undefined4 auStack_4e8 [4];
  undefined4 auStack_4d8 [4];
  undefined1 auStack_4c8 [16];
  undefined4 auStack_4b8 [4];
  undefined1 auStack_4a8 [32];
  undefined4 auStack_488 [8];
  undefined4 auStack_468 [8];
  undefined4 auStack_448 [8];
  undefined4 auStack_428 [8];
  undefined4 auStack_408 [8];
  undefined4 auStack_3e8 [8];
  undefined4 auStack_3c8 [8];
  undefined4 auStack_3a8 [4];
  undefined4 auStack_398 [4];
  undefined1 auStack_388 [32];
  undefined4 auStack_368 [8];
  undefined4 auStack_348 [8];
  undefined4 auStack_328 [8];
  undefined4 auStack_308 [8];
  undefined4 auStack_2e8 [8];
  undefined4 auStack_2c8 [4];
  undefined4 auStack_2b8 [4];
  undefined1 auStack_2a8 [32];
  undefined4 auStack_288 [8];
  undefined4 auStack_268 [8];
  undefined4 auStack_248 [8];
  undefined4 auStack_228 [8];
  undefined4 auStack_208 [8];
  undefined4 auStack_1e8 [8];
  undefined4 auStack_1c8 [8];
  undefined4 auStack_1a8 [8];
  undefined4 auStack_188 [8];
  undefined4 auStack_168 [8];
  undefined4 auStack_148 [8];
  undefined4 auStack_128 [8];
  undefined4 auStack_108 [8];
  undefined4 auStack_e8 [8];
  undefined4 auStack_c8 [8];
  undefined4 auStack_a8 [8];
  undefined4 auStack_88 [4];
  undefined4 auStack_78 [4];
  undefined1 auStack_68 [32];
  undefined4 auStack_48 [8];
  undefined4 auStack_28 [10];
  
  local_ddc = this;
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar4 == (int *)0x0) {
    return false;
  }
  cVar3 = (**(code **)(*piVar4 + 0x34))();
  if (cVar3 != '\0') {
    return false;
  }
  if (*(int *)((int)this + 0x28) == 0) {
    return false;
  }
  (*(code *)**(undefined4 **)windowInterface)();
  local_ddc = (void *)(**(code **)(*piVar4 + 200))(windowInterface,0x30);
  if (local_ddc == (void *)0x0) {
    return false;
  }
  if ((undefined4 *)*unaff_retaddr != (undefined4 *)0x0) {
    (*(code *)**(undefined4 **)*unaff_retaddr)();
  }
  if (unaff_retaddr[1] != 0) {
    (*(code *)**(undefined4 **)unaff_retaddr[1])();
  }
  uVar9 = unaff_retaddr[2];
  ppuStack_c38 = &PTR_FUN_00fba6f4;
  uStack_c30 = 0;
  uStack_c2e = 0;
  if (0x19 < uVar9) {
    if (uVar9 < 0x9a1552d7) {
      if (uVar9 == 0x9a1552d6) {
LAB_00781932:
        puVar8 = (undefined4 *)unaff_retaddr[6];
        uVar9 = 0;
        pvVar5 = Variant_ConstructUInt32(auStack_968,(uint *)&local_ddc);
        FUN_0050ea80(appuStack_dd8,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_968);
        uVar9 = 0;
        pvVar5 = Variant_ConstructUInt32(auStack_928,(uint *)(unaff_retaddr + 2));
        FUN_0050ea80(appuStack_db8,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_928);
        if (*unaff_retaddr == 0) {
          puVar6 = &DAT_011d79b0;
        }
        else {
          uStack_bc0 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
          unaff_ESI = 0x8000;
          puVar6 = Variant_ConstructUInt32(auStack_8e8,&uStack_bc0);
        }
        FUN_0050ea80(appuStack_d98,(int)puVar6,0);
        if ((unaff_ESI & 0x8000) != 0) {
          unaff_ESI = unaff_ESI & 0xffff7fff;
          FUN_004f5820(auStack_8e8);
        }
        if (unaff_retaddr[1] == 0) {
          puVar6 = &DAT_011d79b0;
        }
        else {
          uStack_c14 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
          unaff_ESI = unaff_ESI | 0x10000;
          puVar6 = Variant_ConstructUInt32(auStack_8a8,&uStack_c14);
        }
        FUN_0050ea80(appuStack_d78,(int)puVar6,0);
        if ((unaff_ESI & 0x10000) != 0) {
          FUN_004f5820(auStack_8a8);
        }
        uVar9 = 0;
        pvVar5 = FUN_004f6340(auStack_868,puVar8 + 1);
        FUN_0050ea80(appuStack_d58,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_868);
        uVar9 = 0;
        pvVar5 = FUN_004f6340(auStack_828,puVar8 + 2);
        FUN_0050ea80(appuStack_d38,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_828);
        uStack_c0c = *puVar8;
        uVar9 = 0;
        pvVar5 = FUN_004f6340(auStack_7e8,&uStack_c0c);
        FUN_0050ea80(appuStack_d18,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_7e8);
        fStack_c04 = (float)unaff_retaddr[4];
        uVar9 = 0;
        pvVar5 = FUN_004f6400(auStack_7a8,&fStack_c04);
        FUN_0050ea80(appuStack_cf8,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_7a8);
        fStack_bfc = (float)unaff_retaddr[5];
        uVar9 = 0;
        pvVar5 = FUN_004f6400(auStack_768,&fStack_bfc);
        FUN_0050ea80(appuStack_cd8,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_768);
        FUN_0050ea80(appuStack_cb8,0x11d79f0,0);
        FUN_0050ea80(appuStack_c98,0x11d79f0,0);
        uVar9 = 0;
        pvVar5 = FUN_004f6220(auStack_728,&stack0xfffff21b);
        FUN_0050ea80(appuStack_c78,(int)pvVar5,uVar9);
        FUN_004f5820(auStack_728);
        FUN_0050ea80(appuStack_c58,0x11d7a10,0);
        iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_6e8,uRam00000028,appuStack_dd8,0xd);
        FUN_004f64b0(auStack_c48,iVar7);
        puVar8 = auStack_6f8;
        goto LAB_00781334;
      }
      if (uVar9 < 0x9a1552d5) {
        if (0x9a1552d2 < uVar9) goto LAB_00781932;
        if (uVar9 - 0x1a < 2) goto switchD_007805e3_caseD_b;
      }
switchD_007805e3_caseD_a:
      uVar9 = 0;
      pvVar5 = Variant_ConstructUInt32(auStack_6a8,(uint *)&local_ddc);
      FUN_0050ea80(appuStack_dd8,(int)pvVar5,uVar9);
      FUN_004f5820(auStack_6a8);
      uVar9 = 0;
      pvVar5 = Variant_ConstructUInt32(auStack_668,(uint *)(unaff_retaddr + 2));
      FUN_0050ea80(appuStack_db8,(int)pvVar5,uVar9);
      FUN_004f5820(auStack_668);
      if (*unaff_retaddr == 0) {
        puVar6 = &DAT_011d79b0;
      }
      else {
        uStack_bf4 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
        unaff_ESI = 0x20000;
        puVar6 = Variant_ConstructUInt32(auStack_628,&uStack_bf4);
      }
      FUN_0050ea80(appuStack_d98,(int)puVar6,0);
      if ((unaff_ESI & 0x20000) != 0) {
        unaff_ESI = unaff_ESI & 0xfffdffff;
        FUN_004f5820(auStack_628);
      }
      if (unaff_retaddr[1] == 0) {
        puVar6 = &DAT_011d79b0;
      }
      else {
        uStack_bec = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
        unaff_ESI = unaff_ESI | 0x40000;
        puVar6 = Variant_ConstructUInt32(auStack_5e8,&uStack_bec);
      }
      FUN_0050ea80(appuStack_d78,(int)puVar6,0);
      if ((unaff_ESI & 0x40000) != 0) {
        FUN_004f5820(auStack_5e8);
      }
      uVar9 = 0;
      pvVar5 = FUN_004f6340(auStack_5a8,unaff_retaddr + 3);
      FUN_0050ea80(appuStack_d58,(int)pvVar5,uVar9);
      FUN_004f5820(auStack_5a8);
      uVar9 = 0;
      pvVar5 = FUN_004f6340(auStack_568,unaff_retaddr + 4);
      FUN_0050ea80(appuStack_d38,(int)pvVar5,uVar9);
      FUN_004f5820(auStack_568);
      uVar9 = 0;
      pvVar5 = FUN_004f6340(auStack_528,unaff_retaddr + 5);
      FUN_0050ea80(appuStack_d18,(int)pvVar5,uVar9);
      FUN_004f5820(auStack_528);
      FUN_0050ea80(appuStack_cf8,0x11d79f0,0);
      FUN_0050ea80(appuStack_cd8,0x11d79f0,0);
      FUN_0050ea80(appuStack_cb8,0x11d79f0,0);
      FUN_0050ea80(appuStack_c98,0x11d79f0,0);
      uVar9 = 0;
      pvVar5 = FUN_004f6220(auStack_4e8,&stack0xfffff21b);
      FUN_0050ea80(appuStack_c78,(int)pvVar5,uVar9);
      FUN_004f5820(auStack_4e8);
      FUN_0050ea80(appuStack_c58,0x11d7a10,0);
      iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_4a8,uRam00000028,appuStack_dd8,0xd);
      FUN_004f64b0(auStack_c48,iVar7);
      puVar8 = auStack_4b8;
    }
    else {
      if (uVar9 != 0x9b1552d8) {
        if (uVar9 == 0x9b1552da) {
          pcStack_de0 = (char *)unaff_retaddr[6];
          pvVar5 = Variant_ConstructUInt32(auStack_468,(uint *)&local_ddc);
          appuStack_dd8[0] = &PTR_FUN_00fba6f4;
          uStack_dd0 = 0;
          uStack_dce = 0;
          FUN_004f64b0(appuStack_dd8,(int)pvVar5);
          FUN_004f5820(auStack_468);
          pvVar5 = Variant_ConstructUInt32(auStack_428,(uint *)(unaff_retaddr + 2));
          appuStack_db8[0] = &PTR_FUN_00fba6f4;
          uStack_db0 = 0;
          uStack_dae = 0;
          FUN_004f64b0(appuStack_db8,(int)pvVar5);
          FUN_004f5820(auStack_428);
          if (*unaff_retaddr == 0) {
            puVar6 = &DAT_011d79b0;
          }
          else {
            uStack_be4 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
            unaff_ESI = 0x10;
            puVar6 = Variant_ConstructUInt32(auStack_3e8,&uStack_be4);
          }
          appuStack_d98[0] = &PTR_FUN_00fba6f4;
          uStack_d90 = 0;
          uStack_d8e = 0;
          FUN_004f64b0(appuStack_d98,(int)puVar6);
          if ((unaff_ESI & 0x10) != 0) {
            unaff_ESI = unaff_ESI & 0xffffffef;
            FUN_004f5820(auStack_3e8);
          }
          if (unaff_retaddr[1] == 0) {
            puVar6 = &DAT_011d79b0;
          }
          else {
            uStack_bdc = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
            unaff_ESI = unaff_ESI | 0x20;
            puVar6 = Variant_ConstructUInt32(auStack_3a8,&uStack_bdc);
          }
          appuStack_d78[0] = &PTR_FUN_00fba6f4;
          uStack_d70 = 0;
          uStack_d6e = 0;
          FUN_004f64b0(appuStack_d78,(int)puVar6);
          if ((unaff_ESI & 0x20) != 0) {
            FUN_004f5820(auStack_3a8);
          }
          pcVar1 = pcStack_de0;
          uStack_bd4 = *(undefined4 *)(pcStack_de0 + 4);
          pvVar5 = FUN_004f6340(auStack_368,&uStack_bd4);
          appuStack_d58[0] = &PTR_FUN_00fba6f4;
          uStack_d50 = 0;
          uStack_d4e = 0;
          FUN_004f64b0(appuStack_d58,(int)pvVar5);
          FUN_004f5820(auStack_368);
          appuStack_d38[0] = &PTR_FUN_00fba6f4;
          uStack_d30 = 0;
          uStack_d2e = 0;
          FUN_004f64b0(appuStack_d38,0x11d79d0);
          appuStack_d18[0] = &PTR_FUN_00fba6f4;
          uStack_d10 = 0;
          uStack_d0e = 0;
          FUN_004f64b0(appuStack_d18,0x11d79d0);
          appuStack_cf8[0] = &PTR_FUN_00fba6f4;
          uStack_cf0 = 0;
          uStack_cee = 0;
          FUN_004f64b0(appuStack_cf8,0x11d79f0);
          appuStack_cd8[0] = &PTR_FUN_00fba6f4;
          uStack_cd0 = 0;
          uStack_cce = 0;
          FUN_004f64b0(appuStack_cd8,0x11d79f0);
          appuStack_cb8[0] = &PTR_FUN_00fba6f4;
          uStack_cb0 = 0;
          uStack_cae = 0;
          FUN_004f64b0(appuStack_cb8,0x11d79f0);
          appuStack_c98[0] = &PTR_FUN_00fba6f4;
          uStack_c90 = 0;
          uStack_c8e = 0;
          FUN_004f64b0(appuStack_c98,0x11d79f0);
          pvVar5 = FUN_004f6220(auStack_328,pcVar1 + 8);
          appuStack_c78[0] = &PTR_FUN_00fba6f4;
          uStack_c70 = 0;
          uStack_c6e = 0;
          FUN_004f64b0(appuStack_c78,(int)pvVar5);
          FUN_004f5820(auStack_328);
          pvVar5 = FUN_0040b880(aiStack_ba8,*(short **)pcStack_de0,(undefined4 *)&stack0xfffff214);
          pvVar5 = FUN_004f6630(auStack_2e8,pvVar5);
          appuStack_c58[0] = &PTR_FUN_00fba6f4;
          uStack_c50 = 0;
          uStack_c4e = 0;
          FUN_004f64b0(appuStack_c58,(int)pvVar5);
          FUN_004f5820(auStack_2e8);
          FUN_004ef8f0(aiStack_ba8);
          iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_2a8,uRam00000028,appuStack_dd8,0xd);
          FUN_004f64b0(auStack_c48,iVar7);
          FUN_004f5820(auStack_2b8);
          pcVar1[8] = (char)appuStack_c78[0];
          goto LAB_0078257a;
        }
        goto switchD_007805e3_caseD_a;
      }
      pvVar5 = Variant_ConstructUInt32(auStack_268,(uint *)&local_ddc);
      appuStack_dd8[0] = &PTR_FUN_00fba6f4;
      uStack_dd0 = 0;
      uStack_dce = 0;
      FUN_004f64b0(appuStack_dd8,(int)pvVar5);
      FUN_004f5820(auStack_268);
      pvVar5 = Variant_ConstructUInt32(auStack_228,(uint *)(unaff_retaddr + 2));
      appuStack_db8[0] = &PTR_FUN_00fba6f4;
      uStack_db0 = 0;
      uStack_dae = 0;
      FUN_004f64b0(appuStack_db8,(int)pvVar5);
      FUN_004f5820(auStack_228);
      if (*unaff_retaddr == 0) {
        puVar6 = &DAT_011d79b0;
      }
      else {
        uStack_bcc = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
        unaff_ESI = 1;
        puVar6 = Variant_ConstructUInt32(auStack_1e8,&uStack_bcc);
      }
      appuStack_d98[0] = &PTR_FUN_00fba6f4;
      uStack_d90 = 0;
      uStack_d8e = 0;
      FUN_004f64b0(appuStack_d98,(int)puVar6);
      if ((unaff_ESI & 1) != 0) {
        unaff_ESI = unaff_ESI & 0xfffffffe;
        FUN_004f5820(auStack_1e8);
      }
      if (unaff_retaddr[1] == 0) {
        puVar6 = &DAT_011d79b0;
      }
      else {
        uStack_bc4 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
        unaff_ESI = unaff_ESI | 2;
        puVar6 = Variant_ConstructUInt32(auStack_1a8,&uStack_bc4);
      }
      appuStack_d78[0] = &PTR_FUN_00fba6f4;
      uStack_d70 = 0;
      uStack_d6e = 0;
      FUN_004f64b0(appuStack_d78,(int)puVar6);
      if ((unaff_ESI & 2) != 0) {
        FUN_004f5820(auStack_1a8);
      }
      pvVar5 = FUN_004f6340(auStack_168,unaff_retaddr + 3);
      appuStack_d58[0] = &PTR_FUN_00fba6f4;
      uStack_d50 = 0;
      uStack_d4e = 0;
      FUN_004f64b0(appuStack_d58,(int)pvVar5);
      FUN_004f5820(auStack_168);
      pvVar5 = FUN_004f6340(auStack_128,unaff_retaddr + 5);
      appuStack_d38[0] = &PTR_FUN_00fba6f4;
      uStack_d30 = 0;
      uStack_d2e = 0;
      FUN_004f64b0(appuStack_d38,(int)pvVar5);
      FUN_004f5820(auStack_128);
      appuStack_d18[0] = &PTR_FUN_00fba6f4;
      uStack_d10 = 0;
      uStack_d0e = 0;
      FUN_004f64b0(appuStack_d18,0x11d79d0);
      appuStack_cf8[0] = &PTR_FUN_00fba6f4;
      uStack_cf0 = 0;
      uStack_cee = 0;
      FUN_004f64b0(appuStack_cf8,0x11d79f0);
      appuStack_cd8[0] = &PTR_FUN_00fba6f4;
      uStack_cd0 = 0;
      uStack_cce = 0;
      FUN_004f64b0(appuStack_cd8,0x11d79f0);
      appuStack_cb8[0] = &PTR_FUN_00fba6f4;
      uStack_cb0 = 0;
      uStack_cae = 0;
      FUN_004f64b0(appuStack_cb8,0x11d79f0);
      appuStack_c98[0] = &PTR_FUN_00fba6f4;
      uStack_c90 = 0;
      uStack_c8e = 0;
      FUN_004f64b0(appuStack_c98,0x11d79f0);
      pvVar5 = FUN_004f6220(auStack_e8,&stack0xfffff21b);
      appuStack_c78[0] = &PTR_FUN_00fba6f4;
      uStack_c70 = 0;
      uStack_c6e = 0;
      FUN_004f64b0(appuStack_c78,(int)pvVar5);
      FUN_004f5820(auStack_e8);
      pcStack_de0 = "UI/UIHost/kEditMessageTextChanged";
      pvVar5 = FUN_0040b880(aiStack_b98,(short *)unaff_retaddr[6],&pcStack_de0);
      pvVar5 = FUN_004f6630(auStack_a8,pvVar5);
      appuStack_c58[0] = &PTR_FUN_00fba6f4;
      uStack_c50 = 0;
      uStack_c4e = 0;
      FUN_004f64b0(appuStack_c58,(int)pvVar5);
      FUN_004f5820(auStack_a8);
      FUN_004ef8f0(aiStack_b98);
      iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_68,uRam00000028,appuStack_dd8,0xd);
      FUN_004f64b0(auStack_c48,iVar7);
      puVar8 = auStack_78;
    }
    goto LAB_00782567;
  }
  if (0x17 < uVar9) {
    uVar9 = 0;
    pvVar5 = Variant_ConstructUInt32(auStack_6c8,(uint *)&local_ddc);
    FUN_0050ea80(appuStack_dd8,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_6c8);
    uVar9 = 0;
    pvVar5 = Variant_ConstructUInt32(auStack_1c8,(uint *)(unaff_retaddr + 2));
    FUN_0050ea80(appuStack_db8,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_1c8);
    if (*unaff_retaddr == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bf0 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
      unaff_ESI = 0x2000;
      puVar6 = Variant_ConstructUInt32(auStack_688,&uStack_bf0);
    }
    FUN_0050ea80(appuStack_d98,(int)puVar6,0);
    if ((unaff_ESI & 0x2000) != 0) {
      unaff_ESI = unaff_ESI & 0xffffdfff;
      FUN_004f5820(auStack_688);
    }
    if (unaff_retaddr[1] == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bc8 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
      unaff_ESI = unaff_ESI | 0x4000;
      puVar6 = Variant_ConstructUInt32(auStack_348,&uStack_bc8);
    }
    FUN_0050ea80(appuStack_d78,(int)puVar6,0);
    if ((unaff_ESI & 0x4000) != 0) {
      FUN_004f5820(auStack_348);
    }
    uVar9 = 0;
    pvVar5 = FUN_004f6340(auStack_648,unaff_retaddr + 3);
    FUN_0050ea80(appuStack_d58,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_648);
    iStack_c18 = unaff_retaddr[4];
    uVar9 = 0;
    pvVar5 = FUN_004f6340(auStack_88,&iStack_c18);
    FUN_0050ea80(appuStack_d38,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_88);
    iStack_bb0 = unaff_retaddr[5];
    uVar9 = 0;
    pvVar5 = FUN_004f6340(auStack_608,&iStack_bb0);
    FUN_0050ea80(appuStack_d18,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_608);
    uVar9 = 0;
    pvVar5 = FUN_004f6400(auStack_308,unaff_retaddr + 6);
    FUN_0050ea80(appuStack_cf8,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_308);
    FUN_0050ea80(appuStack_cd8,0x11d79f0,0);
    FUN_0050ea80(appuStack_cb8,0x11d79f0,0);
    FUN_0050ea80(appuStack_c98,0x11d79f0,0);
    uVar9 = 0;
    pvVar5 = FUN_004f6220(auStack_5c8,&stack0xfffff21b);
    FUN_0050ea80(appuStack_c78,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_5c8);
    FUN_0050ea80(appuStack_c58,0x11d7a10,0);
    iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_b68,uRam00000028,appuStack_dd8,0xd);
    FUN_004f64b0(auStack_c48,iVar7);
    puVar8 = auStack_b78;
    goto LAB_00782567;
  }
  switch(uVar9) {
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
    pvVar5 = Variant_ConstructUInt32(auStack_948,(uint *)&local_ddc);
    appuStack_dd8[0] = &PTR_FUN_00fba6f4;
    uStack_dd0 = 0;
    uStack_dce = 0;
    FUN_004f64b0(appuStack_dd8,(int)pvVar5);
    FUN_004f5820(auStack_948);
    pvVar5 = Variant_ConstructUInt32(auStack_148,(uint *)(unaff_retaddr + 2));
    appuStack_db8[0] = &PTR_FUN_00fba6f4;
    uStack_db0 = 0;
    uStack_dae = 0;
    FUN_004f64b0(appuStack_db8,(int)pvVar5);
    FUN_004f5820(auStack_148);
    if (*unaff_retaddr == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bd8 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
      unaff_ESI = 0x200;
      puVar6 = Variant_ConstructUInt32(auStack_908,&uStack_bd8);
    }
    appuStack_d98[0] = &PTR_FUN_00fba6f4;
    uStack_d90 = 0;
    uStack_d8e = 0;
    FUN_004f64b0(appuStack_d98,(int)puVar6);
    if ((unaff_ESI & 0x200) != 0) {
      unaff_ESI = unaff_ESI & 0xfffffdff;
      FUN_004f5820(auStack_908);
    }
    if (unaff_retaddr[1] == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_c08 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
      unaff_ESI = unaff_ESI | 0x400;
      puVar6 = Variant_ConstructUInt32(auStack_488,&uStack_c08);
    }
    appuStack_d78[0] = &PTR_FUN_00fba6f4;
    uStack_d70 = 0;
    uStack_d6e = 0;
    FUN_004f64b0(appuStack_d78,(int)puVar6);
    if ((unaff_ESI & 0x400) != 0) {
      FUN_004f5820(auStack_488);
    }
    pvVar5 = FUN_004f6340(auStack_8c8,unaff_retaddr + 3);
    appuStack_d58[0] = &PTR_FUN_00fba6f4;
    uStack_d50 = 0;
    uStack_d4e = 0;
    FUN_004f64b0(appuStack_d58,(int)pvVar5);
    FUN_004f5820(auStack_8c8);
    iStack_bbc = unaff_retaddr[4];
    pvVar5 = FUN_004f6340(auStack_248,&iStack_bbc);
    appuStack_d38[0] = &PTR_FUN_00fba6f4;
    uStack_d30 = 0;
    uStack_d2e = 0;
    FUN_004f64b0(appuStack_d38,(int)pvVar5);
    FUN_004f5820(auStack_248);
    iStack_c00 = unaff_retaddr[5];
    pvVar5 = FUN_004f6340(auStack_888,&iStack_c00);
    appuStack_d18[0] = &PTR_FUN_00fba6f4;
    uStack_d10 = 0;
    uStack_d0e = 0;
    FUN_004f64b0(appuStack_d18,(int)pvVar5);
    FUN_004f5820(auStack_888);
    appuStack_cf8[0] = &PTR_FUN_00fba6f4;
    uStack_cf0 = 0;
    uStack_cee = 0;
    FUN_004f64b0(appuStack_cf8,0x11d79f0);
    appuStack_cd8[0] = &PTR_FUN_00fba6f4;
    uStack_cd0 = 0;
    uStack_cce = 0;
    FUN_004f64b0(appuStack_cd8,0x11d79f0);
    appuStack_cb8[0] = &PTR_FUN_00fba6f4;
    uStack_cb0 = 0;
    uStack_cae = 0;
    FUN_004f64b0(appuStack_cb8,0x11d79f0);
    appuStack_c98[0] = &PTR_FUN_00fba6f4;
    uStack_c90 = 0;
    uStack_c8e = 0;
    FUN_004f64b0(appuStack_c98,0x11d79f0);
    pvVar5 = FUN_004f6220(auStack_448,&stack0xfffff21b);
    appuStack_c78[0] = &PTR_FUN_00fba6f4;
    uStack_c70 = 0;
    uStack_c6e = 0;
    FUN_004f64b0(appuStack_c78,(int)pvVar5);
    FUN_004f5820(auStack_448);
    appuStack_c58[0] = &PTR_FUN_00fba6f4;
    uStack_c50 = 0;
    uStack_c4e = 0;
    FUN_004f64b0(appuStack_c58,0x11d7a10);
    iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_848,uRam00000028,appuStack_dd8,0xd);
    FUN_004f64b0(auStack_c48,iVar7);
    puVar8 = auStack_858;
    break;
  case 6:
  case 7:
  case 8:
  case 9:
    pvVar5 = Variant_ConstructUInt32(auStack_48,(uint *)&local_ddc);
    appuStack_dd8[0] = &PTR_FUN_00fba6f4;
    uStack_dd0 = 0;
    uStack_dce = 0;
    FUN_004f64b0(appuStack_dd8,(int)pvVar5);
    FUN_004f5820(auStack_48);
    pvVar5 = Variant_ConstructUInt32(auStack_b88,(uint *)(unaff_retaddr + 2));
    appuStack_db8[0] = &PTR_FUN_00fba6f4;
    uStack_db0 = 0;
    uStack_dae = 0;
    FUN_004f64b0(appuStack_db8,(int)pvVar5);
    FUN_004f5820(auStack_b88);
    if (*unaff_retaddr == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bd0 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
      unaff_ESI = 0x800;
      puVar6 = Variant_ConstructUInt32(auStack_408,&uStack_bd0);
    }
    appuStack_d98[0] = &PTR_FUN_00fba6f4;
    uStack_d90 = 0;
    uStack_d8e = 0;
    FUN_004f64b0(appuStack_d98,(int)puVar6);
    if ((unaff_ESI & 0x800) != 0) {
      unaff_ESI = unaff_ESI & 0xfffff7ff;
      FUN_004f5820(auStack_408);
    }
    if (unaff_retaddr[1] == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bf8 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
      unaff_ESI = unaff_ESI | 0x1000;
      puVar6 = Variant_ConstructUInt32(auStack_7c8,&uStack_bf8);
    }
    appuStack_d78[0] = &PTR_FUN_00fba6f4;
    uStack_d70 = 0;
    uStack_d6e = 0;
    FUN_004f64b0(appuStack_d78,(int)puVar6);
    if ((unaff_ESI & 0x1000) != 0) {
      FUN_004f5820(auStack_7c8);
    }
    pvVar5 = FUN_004f6340(auStack_208,unaff_retaddr + 6);
    appuStack_d58[0] = &PTR_FUN_00fba6f4;
    uStack_d50 = 0;
    uStack_d4e = 0;
    FUN_004f64b0(appuStack_d58,(int)pvVar5);
    FUN_004f5820(auStack_208);
    pvVar5 = FUN_004f6340(auStack_788,unaff_retaddr + 6);
    appuStack_d38[0] = &PTR_FUN_00fba6f4;
    uStack_d30 = 0;
    uStack_d2e = 0;
    FUN_004f64b0(appuStack_d38,(int)pvVar5);
    FUN_004f5820(auStack_788);
    iStack_bb4 = unaff_retaddr[5];
    uVar9 = 0;
    pvVar5 = FUN_004f6340(auStack_3c8,&iStack_bb4);
    FUN_0050ea80(appuStack_d18,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_3c8);
    uVar9 = 0;
    pvVar5 = FUN_004f6400(auStack_748,unaff_retaddr + 3);
    FUN_0050ea80(appuStack_cf8,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_748);
    uVar9 = 0;
    pvVar5 = FUN_004f6400(auStack_108,unaff_retaddr + 4);
    FUN_0050ea80(appuStack_cd8,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_108);
    FUN_0050ea80(appuStack_cb8,0x11d79f0,0);
    FUN_0050ea80(appuStack_c98,0x11d79f0,0);
    uVar9 = 0;
    pvVar5 = FUN_004f6220(auStack_708,&stack0xfffff21b);
    FUN_0050ea80(appuStack_c78,(int)pvVar5,uVar9);
    FUN_004f5820(auStack_708);
    FUN_0050ea80(appuStack_c58,0x11d7a10,0);
    iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_388,uRam00000028,appuStack_dd8,0xd);
    FUN_004f64b0(auStack_c48,iVar7);
    puVar8 = auStack_398;
    goto LAB_00781334;
  default:
    goto switchD_007805e3_caseD_a;
  case 0xb:
switchD_007805e3_caseD_b:
    pcStack_de0 = (char *)0x0;
    if (*unaff_retaddr == 0) {
      if (unaff_retaddr[6] != 0) {
        (*(code *)**(undefined4 **)unaff_retaddr[6])();
        pcStack_de0 = (char *)(**(code **)(*piVar4 + 200))(unaff_retaddr[6],0x30);
      }
    }
    else {
      pcStack_de0 = (char *)(**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
    }
    pvVar5 = Variant_ConstructUInt32(auStack_b28,(uint *)&local_ddc);
    appuStack_dd8[0] = &PTR_FUN_00fba6f4;
    uStack_dd0 = 0;
    uStack_dce = 0;
    FUN_004f64b0(appuStack_dd8,(int)pvVar5);
    FUN_004f5820(auStack_b28);
    pvVar5 = Variant_ConstructUInt32(auStack_ae8,(uint *)(unaff_retaddr + 2));
    appuStack_db8[0] = &PTR_FUN_00fba6f4;
    uStack_db0 = 0;
    uStack_dae = 0;
    FUN_004f64b0(appuStack_db8,(int)pvVar5);
    FUN_004f5820(auStack_ae8);
    pvVar5 = Variant_ConstructUInt32(auStack_aa8,(uint *)&pcStack_de0);
    appuStack_d98[0] = &PTR_FUN_00fba6f4;
    uStack_d90 = 0;
    uStack_d8e = 0;
    FUN_004f64b0(appuStack_d98,(int)pvVar5);
    FUN_004f5820(auStack_aa8);
    if (unaff_retaddr[1] == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_be0 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
      unaff_ESI = 0x40;
      puVar6 = Variant_ConstructUInt32(auStack_a68,&uStack_be0);
    }
    appuStack_d78[0] = &PTR_FUN_00fba6f4;
    uStack_d70 = 0;
    uStack_d6e = 0;
    FUN_004f64b0(appuStack_d78,(int)puVar6);
    if ((unaff_ESI & 0x40) != 0) {
      FUN_004f5820(auStack_a68);
    }
    pvVar5 = FUN_004f6340(auStack_a28,unaff_retaddr + 3);
    appuStack_d58[0] = &PTR_FUN_00fba6f4;
    uStack_d50 = 0;
    uStack_d4e = 0;
    FUN_004f64b0(appuStack_d58,(int)pvVar5);
    FUN_004f5820(auStack_a28);
    appuStack_d38[0] = &PTR_FUN_00fba6f4;
    uStack_d30 = 0;
    uStack_d2e = 0;
    FUN_004f64b0(appuStack_d38,0x11d79d0);
    appuStack_d18[0] = &PTR_FUN_00fba6f4;
    uStack_d10 = 0;
    uStack_d0e = 0;
    FUN_004f64b0(appuStack_d18,0x11d79d0);
    appuStack_cf8[0] = &PTR_FUN_00fba6f4;
    uStack_cf0 = 0;
    uStack_cee = 0;
    FUN_004f64b0(appuStack_cf8,0x11d79f0);
    appuStack_cd8[0] = &PTR_FUN_00fba6f4;
    uStack_cd0 = 0;
    uStack_cce = 0;
    FUN_004f64b0(appuStack_cd8,0x11d79f0);
    appuStack_cb8[0] = &PTR_FUN_00fba6f4;
    uStack_cb0 = 0;
    uStack_cae = 0;
    FUN_004f64b0(appuStack_cb8,0x11d79f0);
    appuStack_c98[0] = &PTR_FUN_00fba6f4;
    uStack_c90 = 0;
    uStack_c8e = 0;
    FUN_004f64b0(appuStack_c98,0x11d79f0);
    pvVar5 = FUN_004f6220(auStack_9e8,&stack0xfffff21b);
    appuStack_c78[0] = &PTR_FUN_00fba6f4;
    uStack_c70 = 0;
    uStack_c6e = 0;
    FUN_004f64b0(appuStack_c78,(int)pvVar5);
    FUN_004f5820(auStack_9e8);
    appuStack_c58[0] = &PTR_FUN_00fba6f4;
    uStack_c50 = 0;
    uStack_c4e = 0;
    FUN_004f64b0(appuStack_c58,0x11d7a10);
    iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_9a8,uRam00000028,appuStack_dd8,0xd);
    FUN_004f64b0(auStack_c48,iVar7);
    puVar8 = auStack_9b8;
LAB_00781334:
    FUN_004f5820(puVar8);
    goto LAB_0078257a;
  case 0xf:
    pcStack_de0 = (char *)unaff_retaddr[6];
    pvVar5 = Variant_ConstructUInt32(auStack_808,(uint *)&local_ddc);
    appuStack_dd8[0] = &PTR_FUN_00fba6f4;
    uStack_dd0 = 0;
    uStack_dce = 0;
    FUN_004f64b0(appuStack_dd8,(int)pvVar5);
    FUN_004f5820(auStack_808);
    pvVar5 = Variant_ConstructUInt32(auStack_28,(uint *)(unaff_retaddr + 2));
    appuStack_db8[0] = &PTR_FUN_00fba6f4;
    uStack_db0 = 0;
    uStack_dae = 0;
    FUN_004f64b0(appuStack_db8,(int)pvVar5);
    FUN_004f5820(auStack_28);
    if (*unaff_retaddr == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_be8 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
      unaff_ESI = 4;
      puVar6 = Variant_ConstructUInt32(auStack_b48,&uStack_be8);
    }
    appuStack_d98[0] = &PTR_FUN_00fba6f4;
    uStack_d90 = 0;
    uStack_d8e = 0;
    FUN_004f64b0(appuStack_d98,(int)puVar6);
    if ((unaff_ESI & 4) != 0) {
      unaff_ESI = unaff_ESI & 0xfffffffb;
      FUN_004f5820(auStack_b48);
    }
    if (unaff_retaddr[1] == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bac = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
      unaff_ESI = unaff_ESI | 8;
      puVar6 = Variant_ConstructUInt32(auStack_188,&uStack_bac);
    }
    appuStack_d78[0] = &PTR_FUN_00fba6f4;
    uStack_d70 = 0;
    uStack_d6e = 0;
    FUN_004f64b0(appuStack_d78,(int)puVar6);
    if ((unaff_ESI & 8) != 0) {
      FUN_004f5820(auStack_188);
    }
    appuStack_d58[0] = &PTR_FUN_00fba6f4;
    uStack_d50 = 0;
    uStack_d4e = 0;
    FUN_004f64b0(appuStack_d58,0x11d79d0);
    appuStack_d38[0] = &PTR_FUN_00fba6f4;
    uStack_d30 = 0;
    uStack_d2e = 0;
    FUN_004f64b0(appuStack_d38,0x11d79d0);
    appuStack_d18[0] = &PTR_FUN_00fba6f4;
    uStack_d10 = 0;
    uStack_d0e = 0;
    FUN_004f64b0(appuStack_d18,0x11d79d0);
    pcVar1 = pcStack_de0;
    pvVar5 = FUN_004f6400(auStack_b08,(undefined4 *)pcStack_de0);
    appuStack_cf8[0] = &PTR_FUN_00fba6f4;
    uStack_cf0 = 0;
    uStack_cee = 0;
    FUN_004f64b0(appuStack_cf8,(int)pvVar5);
    FUN_004f5820(auStack_b08);
    pvVar5 = FUN_004f6400(auStack_588,(undefined4 *)(pcVar1 + 4));
    appuStack_cd8[0] = &PTR_FUN_00fba6f4;
    uStack_cd0 = 0;
    uStack_cce = 0;
    FUN_004f64b0(appuStack_cd8,(int)pvVar5);
    FUN_004f5820(auStack_588);
    pvVar5 = FUN_004f6400(auStack_ac8,(undefined4 *)(pcVar1 + 8));
    appuStack_cb8[0] = &PTR_FUN_00fba6f4;
    uStack_cb0 = 0;
    uStack_cae = 0;
    FUN_004f64b0(appuStack_cb8,(int)pvVar5);
    FUN_004f5820(auStack_ac8);
    pvVar5 = FUN_004f6400(auStack_2c8,(undefined4 *)(pcVar1 + 0xc));
    appuStack_c98[0] = &PTR_FUN_00fba6f4;
    uStack_c90 = 0;
    uStack_c8e = 0;
    FUN_004f64b0(appuStack_c98,(int)pvVar5);
    FUN_004f5820(auStack_2c8);
    pvVar5 = FUN_004f6220(auStack_a88,&stack0xfffff21b);
    appuStack_c78[0] = &PTR_FUN_00fba6f4;
    uStack_c70 = 0;
    uStack_c6e = 0;
    FUN_004f64b0(appuStack_c78,(int)pvVar5);
    FUN_004f5820(auStack_a88);
    appuStack_c58[0] = &PTR_FUN_00fba6f4;
    uStack_c50 = 0;
    uStack_c4e = 0;
    FUN_004f64b0(appuStack_c58,0x11d7a10);
    iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_548,uRam00000028,appuStack_dd8,0xd);
    FUN_004f64b0(auStack_c48,iVar7);
    puVar8 = auStack_558;
    break;
  case 0x13:
    pvVar5 = Variant_ConstructUInt32(auStack_a48,(uint *)&local_ddc);
    appuStack_dd8[0] = &PTR_FUN_00fba6f4;
    uStack_dd0 = 0;
    uStack_dce = 0;
    FUN_004f64b0(appuStack_dd8,(int)pvVar5);
    FUN_004f5820(auStack_a48);
    pvVar5 = Variant_ConstructUInt32(auStack_c8,(uint *)(unaff_retaddr + 2));
    appuStack_db8[0] = &PTR_FUN_00fba6f4;
    uStack_db0 = 0;
    uStack_dae = 0;
    FUN_004f64b0(appuStack_db8,(int)pvVar5);
    FUN_004f5820(auStack_c8);
    if (*unaff_retaddr == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_bb8 = (**(code **)(*piVar4 + 200))(*unaff_retaddr,0x30);
      unaff_ESI = 0x80;
      puVar6 = Variant_ConstructUInt32(auStack_a08,&uStack_bb8);
    }
    appuStack_d98[0] = &PTR_FUN_00fba6f4;
    uStack_d90 = 0;
    uStack_d8e = 0;
    FUN_004f64b0(appuStack_d98,(int)puVar6);
    if ((unaff_ESI & 0x80) != 0) {
      unaff_ESI = unaff_ESI & 0xffffff7f;
      FUN_004f5820(auStack_a08);
    }
    if (unaff_retaddr[1] == 0) {
      puVar6 = &DAT_011d79b0;
    }
    else {
      uStack_c10 = (**(code **)(*piVar4 + 200))(unaff_retaddr[1],0x30);
      unaff_ESI = unaff_ESI | 0x100;
      puVar6 = Variant_ConstructUInt32(auStack_508,&uStack_c10);
    }
    appuStack_d78[0] = &PTR_FUN_00fba6f4;
    uStack_d70 = 0;
    uStack_d6e = 0;
    FUN_004f64b0(appuStack_d78,(int)puVar6);
    if ((unaff_ESI & 0x100) != 0) {
      FUN_004f5820(auStack_508);
    }
    appuStack_d58[0] = &PTR_FUN_00fba6f4;
    uStack_d50 = 0;
    uStack_d4e = 0;
    FUN_004f64b0(appuStack_d58,0x11d79d0);
    appuStack_d38[0] = &PTR_FUN_00fba6f4;
    uStack_d30 = 0;
    uStack_d2e = 0;
    FUN_004f64b0(appuStack_d38,0x11d79d0);
    appuStack_d18[0] = &PTR_FUN_00fba6f4;
    uStack_d10 = 0;
    uStack_d0e = 0;
    FUN_004f64b0(appuStack_d18,0x11d79d0);
    pvVar5 = FUN_004f6400(auStack_9c8,unaff_retaddr + 3);
    appuStack_cf8[0] = &PTR_FUN_00fba6f4;
    uStack_cf0 = 0;
    uStack_cee = 0;
    FUN_004f64b0(appuStack_cf8,(int)pvVar5);
    FUN_004f5820(auStack_9c8);
    pvVar5 = FUN_004f6400(auStack_288,unaff_retaddr + 4);
    appuStack_cd8[0] = &PTR_FUN_00fba6f4;
    uStack_cd0 = 0;
    uStack_cce = 0;
    FUN_004f64b0(appuStack_cd8,(int)pvVar5);
    FUN_004f5820(auStack_288);
    appuStack_cb8[0] = &PTR_FUN_00fba6f4;
    uStack_cb0 = 0;
    uStack_cae = 0;
    FUN_004f64b0(appuStack_cb8,0x11d79f0);
    appuStack_c98[0] = &PTR_FUN_00fba6f4;
    uStack_c90 = 0;
    uStack_c8e = 0;
    FUN_004f64b0(appuStack_c98,0x11d79f0);
    pvVar5 = FUN_004f6220(auStack_988,(undefined1 *)unaff_retaddr[6]);
    appuStack_c78[0] = &PTR_FUN_00fba6f4;
    uStack_c70 = 0;
    uStack_c6e = 0;
    FUN_004f64b0(appuStack_c78,(int)pvVar5);
    FUN_004f5820(auStack_988);
    appuStack_c58[0] = &PTR_FUN_00fba6f4;
    uStack_c50 = 0;
    uStack_c4e = 0;
    FUN_004f64b0(appuStack_c58,0x11d7a10);
    iVar7 = (**(code **)(*piVar4 + 0x134))(auStack_4c8,uRam00000028,appuStack_dd8,0xd);
    FUN_004f64b0(auStack_c48,iVar7);
    FUN_004f5820(auStack_4d8);
    *(char *)unaff_retaddr[6] = (char)appuStack_c78[0];
    goto LAB_0078257a;
  }
LAB_00782567:
  FUN_004f5820(puVar8);
LAB_0078257a:
  FUN_004466e0(&stack0xfffff218,0x20,0xd,FUN_004f5820);
  if (sStack_c3e != 1) {
    FUN_004f5820(auStack_c48);
    return false;
  }
  uVar2 = ppuStack_c38._0_1_;
  FUN_004f5820(auStack_c48);
  return (bool)uVar2;
}

