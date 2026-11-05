/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation.
   Source-path comments use canonical published references; executable projection unchanged. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* PC 1.67 instruction-level observation: Receives an event only after native registered-filter
   matching in 0x008018E0. Destination ownership and delivery failure handling require further
   tracing. Local source: 00742900_SACS_DeliverAdmittedEvent.asm.
   original PC 1.67 TS3W.exe. */



/* PC 1.67 instruction-level observation: Receives an event only after native registered-filter
   matching in 0x008018E0. Destination ownership and delivery failure handling require further
   tracing. Local source: /home/lego/WorldTool/build/sacs-contract-20261011/native/findings.md.
   TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __thiscall SACS_DeliverAdmittedEvent(void *this,int *param_1)

{
  int *piVar1;
  uint uStack_c8;
  undefined **appuStack_c4 [2];
  ushort uStack_bc;
  undefined2 uStack_ba;
  void *local_a4;
  undefined **appuStack_a0 [2];
  ushort uStack_98;
  undefined2 uStack_96;
  undefined **appuStack_80 [2];
  undefined2 uStack_78;
  undefined2 uStack_76;
  undefined **appuStack_60 [2];
  undefined2 uStack_58;
  undefined2 uStack_56;
  undefined **appuStack_40 [2];
  undefined2 uStack_38;
  undefined2 uStack_36;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  if (param_1 != (int *)0x0) {
    local_a4 = this;
    (**(code **)*param_1)();
    if (*(int *)((int)this + 8) != 0) {
      uStack_c8 = param_1[2];
      appuStack_a0[0] = &PTR_FUN_00fba6f4;
      uStack_98 = 0;
      uStack_96 = 0;
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      uStack_bc = 0;
      uStack_ba = 0;
      Variant_AssignUInt32(appuStack_c4,&uStack_c8);
      appuStack_80[0] = &PTR_FUN_00fba6f4;
      uStack_78 = 0;
      uStack_76 = 0;
      FUN_004f64b0(appuStack_80,(int)appuStack_c4);
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      if ((uStack_bc & 4) != 0) {
        FUN_004f5760(appuStack_c4,'\0');
      }
      uStack_c8 = param_1[3];
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      uStack_bc = 0;
      uStack_ba = 0;
      Variant_AssignUInt32(appuStack_c4,&uStack_c8);
      appuStack_60[0] = &PTR_FUN_00fba6f4;
      uStack_58 = 0;
      uStack_56 = 0;
      FUN_004f64b0(appuStack_60,(int)appuStack_c4);
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      if ((uStack_bc & 4) != 0) {
        FUN_004f5760(appuStack_c4,'\0');
      }
      uStack_c8 = param_1[4];
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      uStack_bc = 0;
      uStack_ba = 0;
      Variant_AssignUInt32(appuStack_c4,&uStack_c8);
      appuStack_40[0] = &PTR_FUN_00fba6f4;
      uStack_38 = 0;
      uStack_36 = 0;
      FUN_004f64b0(appuStack_40,(int)appuStack_c4);
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      if ((uStack_bc & 4) != 0) {
        FUN_004f5760(appuStack_c4,'\0');
      }
      appuStack_20[0] = &PTR_FUN_00fba6f4;
      uStack_18 = 0;
      uStack_16 = 0;
      FUN_004f64b0(appuStack_20,(int)appuStack_a0);
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar1 + 0x134))(appuStack_c4,*(undefined4 *)((int)local_a4 + 8),appuStack_80,4)
      ;
      appuStack_c4[0] = &PTR_FUN_00fba6f4;
      if ((uStack_bc & 4) != 0) {
        FUN_004f5760(appuStack_c4,'\0');
      }
      FUN_004466e0(appuStack_80,0x20,4,FUN_004f5820);
      appuStack_a0[0] = &PTR_FUN_00fba6f4;
      if ((uStack_98 & 4) != 0) {
        FUN_004f5760(appuStack_a0,'\0');
      }
    }
    (**(code **)(*param_1 + 4))();
  }
  return;
}

