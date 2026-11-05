/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_InjectTattooColors at
   0x005a57f0, bytes e9db140500. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_InjectTattooColors at
   0x005a57f0, bytes e9db140500. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   Static PC 1.67 contract: obtains a preset and host-provided color rows, for a signed-positive
   count applies each raw DWORD row through the tattoo property/format helper, serializes the preset
   and returns the host-produced EAX word. The three physical input DWORDs correspond to preset
   string, UInt32[] colors and UInt32 colorIndex. colorIndex is a formatting argument, not the row
   count. A zero host-converted preset word or zero host count returns zero; a negative nonzero
   count skips mutation but still reaches serialization. No local four/eight-row cap is present; the
   checked eight-name table prefix is not its proved full extent.
   
   Host +50h writes the returned word, retained across cleanup; it is not the generated C's
   stack-address return or a proved raw UTF16/CLR pointer. Current one-formal/pointer-return
   metadata is incomplete and remains unchanged. Variant-constructor status is ignored; host
   conversion, copy/retention, parser/property children and allocation-failure behavior remain open.
   No malformed-input or runtime marshaler guarantee is established. */

undefined2 * __cdecl DirectTargetOf_CASUtils_CASUtils_InjectTattooColors(undefined4 param_1)

{
  undefined1 *allocation;
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 uStack_a8;
  undefined1 auStack_9a [2];
  undefined **ppuStack_98;
  int iStack_94;
  undefined **appuStack_90 [2];
  undefined2 uStack_88;
  undefined2 uStack_86;
  undefined4 auStack_78 [2];
  undefined1 auStack_70 [108];
  undefined4 uStack_4;
  
  uStack_a8 = 0x5f6cdd;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_a8 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 != (LPCWSTR)0x0) {
    allocation = auStack_9a + -6;
    (**(code **)(*piVar1 + 0x6c))(param_1);
    if (allocation != (undefined1 *)0x0) {
      DesignPreset_InitializeEmpty(auStack_70);
      FUN_005c0060(auStack_70,pWVar2);
      iVar3 = 0;
      if (0 < (int)allocation) {
        do {
          FUN_005f6be0(auStack_70,(&PTR_s_Layer_dColorR_01158d40)[iVar3],uStack_4,
                       *(undefined4 *)(iStack_94 + iVar3 * 4));
          iVar3 = iVar3 + 1;
        } while (iVar3 < (int)allocation);
      }
      ppuStack_98 = (undefined **)0xfdf90c;
      FUN_005bfd20(auStack_70,(undefined4 *)(auStack_9a + -10));
      appuStack_90[0] = &PTR_FUN_0100886c;
      uStack_86 = 0x13;
      uStack_88 = 0xb;
      FUN_004f59c0(appuStack_90,0x13,9,auStack_9a + -10,0x10,1);
      (**(code **)(*piVar1 + 0x50))(appuStack_90,&uStack_a8);
      ppuStack_98 = &PTR_FUN_00fba6f4;
      if (((uint)appuStack_90[0] & 4) != 0) {
        FUN_004f5760(&ppuStack_98,'\0');
      }
      if ((2 < (int)&DAT_011c8e54 - (int)allocation) && (allocation != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(allocation);
      }
      FUN_005bfce0(auStack_78);
      return &uStack_88;
    }
  }
  return (undefined2 *)0x0;
}

