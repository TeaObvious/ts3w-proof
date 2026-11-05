/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162910 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadStringUTF8 [assembly=ScriptCore token=0x06001034; handle:
   System.UInt32, value: System.String&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: existing body owns only00776440, one address byte; actual Ghidra Listing
   has ZERO instructions. Retained672-byte pristine PE window is BOUNDED evidence, not a complete
   defined function. No body/instruction/prototype/storage/flow repair. Bounded original path
   resolves stream(-2) BEFORE zeroing output string slot. Prefix helper004DD890 failure returns null
   success0; seven-bit groups accumulate with ADD and x86 variable-shift masking, without the
   current prefix-length/overflow guard. Final unsigned length>10000 hex-4. Payload read via+0x30
   must equal length: FFFFFFFF-3, other short count-1. Converter004F40F0 receives encoding8 to16;
   not all source consumed-4. Interface+0x60 publishes converted output/count; null result-5,
   nonnull0, with visible buffer cleanup. Preserve incomplete stored stdcall/stack projections;
   concrete allocation/unwind behavior and current strict UTF8/BSTR policy differ. */

int ScriptCore_StreamHost__StreamHost_ReadStringUTF8(uint param_1,int *param_2)

{
  byte bVar1;
  bool bVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  undefined1 *unaff_ESI;
  uint uVar6;
  byte bVar7;
  undefined4 uStack_330;
  undefined1 *puStack_328;
  undefined1 *puStack_324;
  undefined1 **ppuStack_320;
  char *pcStack_31c;
  undefined1 *puStack_318;
  undefined1 auStack_314 [240];
  undefined1 *puStack_224;
  LPWSTR pWStack_21c;
  undefined1 *puStack_214;
  undefined1 *puStack_210;
  undefined1 auStack_200 [512];
  
  piVar4 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(param_1);
      if (piVar4 != (int *)0x0) {
        DAT_011d7838 = param_1;
        DAT_011d783c = piVar4;
      }
    }
    else {
      piVar4 = (int *)0x0;
    }
  }
  if (piVar4 == (int *)0x0) {
    return -2;
  }
  uVar6 = 0;
  *param_2 = 0;
  bVar7 = 0;
  do {
    bVar2 = Stream_ReadByte(piVar4,(byte *)((int)&uStack_330 + 3));
    if (!bVar2) {
      return 0;
    }
    bVar1 = bVar7 & 0x1f;
    bVar7 = bVar7 + 7;
    uVar6 = uVar6 + (((uint)uStack_330 >> 0x18 & 0x7f) << bVar1);
  } while ((int)uStack_330 < 0);
  if (uVar6 < 0x10001) {
    puStack_328 = auStack_314;
    ppuStack_320 = &puStack_214;
    pcStack_31c = "Scripting/ReadStringSrc";
    puStack_324 = puStack_328;
    puStack_318 = puStack_328;
    FUN_00776390(&puStack_328,uVar6);
    puStack_214 = auStack_200;
    puStack_210 = puStack_214;
    FUN_007763e0(&puStack_214,uVar6);
    uVar3 = (**(code **)(*piVar4 + 0x30))(puStack_328,uVar6);
    if (uVar3 != uVar6) {
      if ((pWStack_21c != (LPWSTR)0x0) && (pWStack_21c != (LPWSTR)&stack0x00000000)) {
        Memory_FreeIfNonNull(pWStack_21c);
      }
      if ((uStack_330 != (undefined1 **)0x0) && (uStack_330 != ppuStack_320)) {
        Memory_FreeIfNonNull(uStack_330);
      }
      return (uint)(uVar3 != 0xffffffff) * 2 + -3;
    }
    uVar3 = Utf_ConvertEncodingUnits
                      ((LPCWSTR)uStack_330,uVar6,8,pWStack_21c,(uint *)&stack0xfffffccc,0x10);
    if (uVar3 == uVar6) {
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar5 = (**(code **)(*piVar4 + 0x60))(pWStack_21c,uVar6);
      *param_2 = iVar5;
      if (iVar5 != 0) {
        if ((puStack_224 != (undefined1 *)0x0) && (puStack_224 != puStack_214)) {
          Memory_FreeIfNonNull(puStack_224);
        }
        if ((unaff_ESI != (undefined1 *)0x0) && (unaff_ESI != puStack_328)) {
          Memory_FreeIfNonNull(unaff_ESI);
        }
        return 0;
      }
      if ((puStack_224 != (undefined1 *)0x0) && (puStack_224 != puStack_214)) {
        Memory_FreeIfNonNull(puStack_224);
      }
      if ((unaff_ESI != (undefined1 *)0x0) && (unaff_ESI != puStack_328)) {
        Memory_FreeIfNonNull(unaff_ESI);
      }
      return -5;
    }
    if ((pWStack_21c != (LPWSTR)0x0) && (pWStack_21c != (LPWSTR)&stack0x00000000)) {
      Memory_FreeIfNonNull(pWStack_21c);
    }
    if ((uStack_330 != (undefined1 **)0x0) && (uStack_330 != ppuStack_320)) {
      Memory_FreeIfNonNull(uStack_330);
    }
  }
  return -4;
}

