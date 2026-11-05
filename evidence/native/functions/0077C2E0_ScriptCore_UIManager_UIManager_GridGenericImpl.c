/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fe0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GridGenericImpl [assembly=ScriptCore token=0x06000E37; winHandle:
   System.UInt32, funcID: System.UInt32, int1: System.Int32&, int2: System.Int32&, uint1:
   System.UInt32&, float1: System.Single&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Full actual GridGeneric binding body91Ehex bytes, six
   physical incoming stack DWORDs with aligned EBP frame and plainRET/cdecl. First word is UInt32
   native handle, not old pointer metadata. Validate kind30, resolve object and query Grid
   interfaceAF1EE902; unsigned functionId-1<=49 dispatches50actual DWORD switch targets77CC00.
   IDs12/13/15 select ClearCell198/ClearAll1A0/SetCellWindow1EC on actual constructor Grid
   tableFBE0A8. ID15 rejects supplied window handle0/wrong kind, resolves/query IWindow via513CC0,
   passes two UCOMISS-derived low-byte float!=0 controls and DWORD1; raw upper control bits remain
   unspecified. The four ref-address slots are not globally float arrays: branch instructions
   distinguish integer coordinates, handles, float parameters and write-backs. Full switch, typed
   admissions and selected actual producers/consumers are authoritative; do not fix every unrelated
   helper prototype speculatively. Preserve existing reviewed analyst/original name and prior
   annotations. Actual C can omit arguments/alias registers around unresolved virtual calls. The
   aligned EBP original loads and actual branch PUSH/RET instructions define all six bridge inputs
   and the selected Grid calls. Decompilation alone is not evidence that implicit receiver/stack
   arguments are absent. */

bool __cdecl
ScriptCore.UIManager::UIManager_GridGenericImpl
          (uint windowHandle,uint functionId,void *int1Address,void *int2Address,void *uint1Address,
          void *float1Address)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  uint3 uVar3;
  char cVar4;
  undefined1 uVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  float unaff_ESI;
  float unaff_EDI;
  float10 fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  float fVar14;
  float fVar15;
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [28];
  
  piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((windowHandle & 0xff000000) == 0x30000000) &&
      (piVar7 = (int *)(**(code **)(*piVar6 + 0xcc))(), piVar7 != (int *)0x0)) &&
     (piVar7 = (int *)(**(code **)(*piVar7 + 0xc))(), piVar7 != (int *)0x0)) {
    switch(functionId) {
    case 1:
      uVar5 = (**(code **)(*piVar7 + 0xb0))(*(undefined4 *)int1Address);
      return (bool)uVar5;
    case 2:
      uVar5 = (**(code **)(*piVar7 + 0xac))(*(undefined4 *)int1Address);
      return (bool)uVar5;
    case 3:
      uVar5 = (**(code **)(*piVar7 + 0xb8))(*(undefined4 *)int1Address);
      return (bool)uVar5;
    case 4:
      uVar5 = (**(code **)(*piVar7 + 0xb4))(*(undefined4 *)int1Address);
      return (bool)uVar5;
    case 5:
      (**(code **)(*piVar7 + 0xbc))(*(undefined4 *)int1Address);
      return true;
    case 6:
      (**(code **)(*piVar7 + 0xc0))(*(undefined4 *)int1Address);
      return true;
    case 7:
      (**(code **)(*piVar7 + 0xc4))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return true;
    case 8:
      uVar5 = (**(code **)(*piVar7 + 0xcc))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 9:
      uVar5 = (**(code **)(*piVar7 + 0xd8))(int1Address,int2Address);
      return (bool)uVar5;
    case 10:
      uVar5 = (**(code **)(*piVar7 + 0xdc))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 0xb:
      (**(code **)(*piVar7 + 0xe8))();
      return true;
    case 0xc:
      uVar5 = (**(code **)(*piVar7 + 0x198))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 0xd:
      uVar5 = (**(code **)(*piVar7 + 0x1a0))();
      return (bool)uVar5;
    case 0xe:
      uVar5 = (**(code **)(*piVar7 + 0x1e8))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,&stack0xffffffd8);
      if (windowHandle != 0) {
        (*(code *)**(undefined4 **)windowHandle)();
        uVar9 = (**(code **)(*piVar6 + 200))(windowHandle,0x30);
        *(undefined4 *)uint1Address = uVar9;
        return (bool)uVar5;
      }
      break;
    case 0xf:
      if ((*(uint *)uint1Address & 0xff000000) == 0x30000000) {
        piVar6 = (int *)(**(code **)(*piVar6 + 0xcc))(*(uint *)uint1Address);
        iVar10 = FUN_00513cc0(piVar6);
        if (iVar10 != 0) {
          fVar15 = *(float *)float1Address;
          uVar3 = CONCAT21((short)((uint)iVar10 >> 0x10),
                           (fVar15 == 0.0) << 6 | NAN(fVar15) << 2 | 2U | fVar15 < 0.0);
          if (fVar15 == 0.0) {
            iVar8 = (uint)uVar3 << 8;
          }
          else {
            iVar8 = CONCAT31(uVar3,1);
          }
          uVar5 = (**(code **)(*piVar7 + 0x1ec))
                            (*(undefined4 *)int1Address,*(undefined4 *)int2Address,iVar10,iVar8,
                             fVar15 != 0.0,1);
          return (bool)uVar5;
        }
      }
      break;
    case 0x10:
      uVar5 = (**(code **)(*piVar7 + 0x1e0))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,&stack0xffffffd8);
      if (windowHandle != 0) {
        uVar9 = (**(code **)(*piVar6 + 200))(windowHandle,0x30);
        *(undefined4 *)uint1Address = uVar9;
        return (bool)uVar5;
      }
      break;
    case 0x11:
      if ((*(uint *)uint1Address & 0xff000000) == 0x30000000) {
        piVar6 = (int *)(**(code **)(*piVar6 + 0xcc))(*(uint *)uint1Address);
        iVar10 = FUN_00505ed0(piVar6);
        if (iVar10 != 0) {
          uVar5 = (**(code **)(*piVar7 + 0x1e4))
                            (*(undefined4 *)int1Address,*(undefined4 *)int2Address,iVar10,1);
          return (bool)uVar5;
        }
      }
      break;
    case 0x12:
      fVar11 = (float10)(**(code **)(*piVar7 + 0x130))(*(undefined4 *)int1Address,1);
      *(float *)float1Address = (float)fVar11;
      return true;
    case 0x13:
      uVar5 = (**(code **)(*piVar7 + 0x11c))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,
                         *(undefined4 *)float1Address);
      return (bool)uVar5;
    case 0x14:
      fVar11 = (float10)(**(code **)(*piVar7 + 0x134))(*(undefined4 *)int1Address,1);
      *(float *)float1Address = (float)fVar11;
      return true;
    case 0x15:
      uVar5 = (**(code **)(*piVar7 + 0x124))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,
                         *(undefined4 *)float1Address);
      return (bool)uVar5;
    case 0x16:
      fVar15 = *(float *)float1Address;
      auVar16._0_4_ = FLOAT_00fab218 * fVar15;
      auVar16._4_4_ = FLOAT_00fab218 * fVar15;
      auVar16._8_4_ = FLOAT_00fab218 * fVar15;
      auVar16._12_4_ = FLOAT_00fab218 * fVar15;
      auVar17._4_4_ = fVar15;
      auVar17._0_4_ = fVar15;
      auVar17._8_4_ = fVar15;
      auVar17._12_4_ = fVar15;
      auVar17 = maxps(auVar16,auVar17);
      auVar18._4_4_ = -(uint)(auVar17._4_4_ <= DAT_0100ee94);
      auVar18._0_4_ = -(uint)(auVar17._0_4_ <= DAT_0100ee94);
      auVar18._8_4_ = -(uint)(auVar17._8_4_ <= DAT_0100ee94);
      auVar18._12_4_ = -(uint)(auVar17._12_4_ <= DAT_0100ee94);
      iVar10 = movmskps(functionId,auVar18);
      if (iVar10 == 0xf) {
        uVar9 = (**(code **)(*piVar7 + 0x214))();
        *(undefined4 *)uint1Address = uVar9;
        return true;
      }
      fVar14 = fVar15 - FLOAT_00f998f8;
      auVar19._0_4_ = FLOAT_00fab218 * fVar14;
      auVar19._4_4_ = FLOAT_00fab218 * fVar14;
      auVar19._8_4_ = FLOAT_00fab218 * fVar14;
      auVar19._12_4_ = FLOAT_00fab218 * fVar14;
      auVar1._4_4_ = fVar14;
      auVar1._0_4_ = fVar14;
      auVar1._8_4_ = fVar14;
      auVar1._12_4_ = fVar14;
      auVar17 = maxps(auVar19,auVar1);
      auVar20._4_4_ = -(uint)(auVar17._4_4_ <= DAT_0100ee94);
      auVar20._0_4_ = -(uint)(auVar17._0_4_ <= DAT_0100ee94);
      auVar20._8_4_ = -(uint)(auVar17._8_4_ <= DAT_0100ee94);
      auVar20._12_4_ = -(uint)(auVar17._12_4_ <= DAT_0100ee94);
      iVar10 = movmskps(iVar10,auVar20);
      if (iVar10 == 0xf) {
        uVar9 = (**(code **)(*piVar7 + 0x204))(*(undefined4 *)int1Address);
        *(undefined4 *)uint1Address = uVar9;
        return true;
      }
      fVar15 = fVar15 - DAT_0103fd88;
      auVar12._0_4_ = FLOAT_00fab218 * fVar15;
      auVar12._4_4_ = FLOAT_00fab218 * fVar15;
      auVar12._8_4_ = FLOAT_00fab218 * fVar15;
      auVar12._12_4_ = FLOAT_00fab218 * fVar15;
      auVar2._4_4_ = fVar15;
      auVar2._0_4_ = fVar15;
      auVar2._8_4_ = fVar15;
      auVar2._12_4_ = fVar15;
      auVar17 = maxps(auVar12,auVar2);
      auVar13._4_4_ = -(uint)(auVar17._4_4_ <= DAT_0100ee94);
      auVar13._0_4_ = -(uint)(auVar17._0_4_ <= DAT_0100ee94);
      auVar13._8_4_ = -(uint)(auVar17._8_4_ <= DAT_0100ee94);
      auVar13._12_4_ = -(uint)(auVar17._12_4_ <= DAT_0100ee94);
      iVar10 = movmskps(float1Address,auVar13);
      if (iVar10 == 0xf) {
        uVar9 = (**(code **)(*piVar7 + 0x20c))(*(undefined4 *)int2Address);
        *(undefined4 *)uint1Address = uVar9;
        return true;
      }
      uVar9 = (**(code **)(*piVar7 + 0x1fc))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      *(undefined4 *)uint1Address = uVar9;
      return true;
    case 0x17:
      fVar15 = *(float *)float1Address;
      if (fVar15 == DAT_010f4ccc) {
        uVar5 = (**(code **)(*piVar7 + 0x210))(*(undefined4 *)uint1Address);
        return (bool)uVar5;
      }
      if (fVar15 == FLOAT_00f998f8) {
        uVar5 = (**(code **)(*piVar7 + 0x200))
                          (*(undefined4 *)int1Address,*(undefined4 *)uint1Address);
        return (bool)uVar5;
      }
      if (fVar15 == DAT_0103fd88) {
        uVar5 = (**(code **)(*piVar7 + 0x208))
                          (*(undefined4 *)int2Address,*(undefined4 *)uint1Address);
        return (bool)uVar5;
      }
      uVar5 = (**(code **)(*piVar7 + 0x1f8))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,
                         *(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x18:
      uVar5 = (**(code **)(*piVar7 + 0x1bc))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 0x19:
      uVar5 = (**(code **)(*piVar7 + 0x1b8))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 0x1a:
      uVar5 = (**(code **)(*piVar7 + 0x1a8))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,2);
      return (bool)uVar5;
    case 0x1b:
      uVar5 = (**(code **)(*piVar7 + 0x1ac))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,3);
      return (bool)uVar5;
    case 0x1c:
      uVar5 = (**(code **)(*piVar7 + 0x1c4))(int1Address,int2Address);
      return (bool)uVar5;
    case 0x1d:
      uVar5 = (**(code **)(*piVar7 + 0x1c8))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 0x1e:
      cVar4 = (**(code **)(*piVar7 + 0x1d4))
                        ((float)*(int *)int1Address,(float)*(int *)int2Address,uint1Address,
                         auStack_20);
      if (cVar4 != '\0') {
        *(float *)int1Address = unaff_EDI;
        *(float *)int2Address = unaff_ESI;
        return true;
      }
      break;
    case 0x1f:
      uVar5 = (**(code **)(*piVar7 + 0xe0))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,
                         *(int *)uint1Address != 0);
      return (bool)uVar5;
    case 0x20:
      uVar5 = (**(code **)(*piVar7 + 0x1cc))(&stack0xffffffd8,auStack_24);
      *(int *)int1Address = (int)unaff_EDI;
      *(int *)int2Address = (int)unaff_ESI;
      return (bool)uVar5;
    case 0x21:
      uVar5 = (**(code **)(*piVar7 + 0x14))();
      return (bool)uVar5;
    case 0x22:
      uVar5 = (**(code **)(*piVar7 + 0x80))(*(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x23:
      uVar5 = (**(code **)(*piVar7 + 0x7c))(uint1Address);
      return (bool)uVar5;
    case 0x24:
      uVar5 = (**(code **)(*piVar7 + 0x88))(*(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x25:
      uVar5 = (**(code **)(*piVar7 + 0x84))(uint1Address);
      return (bool)uVar5;
    case 0x26:
      uVar5 = (**(code **)(*piVar7 + 0x90))(*(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x27:
      uVar5 = (**(code **)(*piVar7 + 0x8c))(uint1Address);
      return (bool)uVar5;
    case 0x28:
      uVar5 = (**(code **)(*piVar7 + 0x98))(*(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x29:
      uVar5 = (**(code **)(*piVar7 + 0x94))(uint1Address);
      return (bool)uVar5;
    case 0x2a:
      uVar5 = (**(code **)(*piVar7 + 0xe4))(*(undefined4 *)int1Address,*(undefined4 *)int2Address);
      return (bool)uVar5;
    case 0x2b:
      uVar5 = (**(code **)(*piVar7 + 0x184))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,1,
                         *(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x2c:
      uVar5 = (**(code **)(*piVar7 + 0x184))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,3,
                         *(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x2d:
      uVar5 = (**(code **)(*piVar7 + 0x184))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,5,
                         *(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x2e:
      uVar5 = (**(code **)(*piVar7 + 0x184))
                        (*(undefined4 *)int1Address,*(undefined4 *)int2Address,7,
                         *(undefined4 *)uint1Address);
      return (bool)uVar5;
    case 0x2f:
      uVar5 = (**(code **)(*piVar7 + 0xa8))(*(undefined4 *)int1Address);
      return (bool)uVar5;
    case 0x30:
      uVar5 = (**(code **)(*piVar7 + 0xa4))(*(undefined4 *)int1Address);
      return (bool)uVar5;
    case 0x31:
    case 0x32:
      uVar5 = (**(code **)(*piVar7 + 0x1d0))
                        (functionId == 0x31,auStack_24,&stack0xffffffd8,auStack_20);
      *(int *)int1Address = (int)(float)windowHandle;
      *(undefined4 *)int2Address = 0;
      *(int *)uint1Address = (int)(longlong)ROUND(unaff_EDI);
      return (bool)uVar5;
    }
  }
  return false;
}

