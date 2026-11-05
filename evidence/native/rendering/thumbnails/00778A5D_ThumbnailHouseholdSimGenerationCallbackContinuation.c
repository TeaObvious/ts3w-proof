/* Actual Ghidra decompilation for DB entry 00778A5D.
   Owned body inclusive: 00778A5D..00778B97.
   Branch continuation with inherited frontend stack and EDI; inferred
   standalone parameters/calling convention are not an independent ABI.
   EOL comments are reinserted from verified DB comment readbacks at matching
   decompiled operations: the C tool transports function comments but omits EOLs.
   Reference and contract: ../../../../guides/rendering/thumbnail-generation-callbacks.md
*/

/* Analyst-assigned continuation role; static PC 1.67. Conditional branch 00778A13 from registered
   frontend 00778A00 enters with prebuilt frontend stack and live EDI manager (captured from
   011EEC30). This is not an independently callable API: inferred standalone C parameters/calling
   convention are artifacts. 00769390 supplies scripting interface; slot +118 returns the two-word
   EDX:EAX token. With nonnull manager allocate 0x38 notifier, construct 00777C70(token,delegate),
   optionally call notifier +4, and forward nullable notifier to 00D61620; only AL at 00778AF7
   controls the branch. Nonzero AL: host +120(token,-1,delegate,0), then +11C, then optional
   notifier +8. Zero AL: optional notifier +8 then immediate host +130(delegate,token,temporary,0).
   Missing manager skips allocation/request and reaches the same immediate callback. Temporary has
   vtable 00FBA6F4, UInt16 fields 0/1 and zero payload byte; actual stack-byte mask 0x04 gates
   004F5760 cleanup (unaff_EBX in decompiled C is not the physical flag source). Host
   token/scheduler/thread contract and notifier retain/release/final callback lifetime are not
   established here. Shared epilogue is also reached directly by the null-callback/null-manager
   frontend path. Original bytes and function boundaries unchanged. */

void __cdecl
ThumbnailHouseholdSimGenerationCallbackContinuation
          (undefined **param_1,undefined4 param_2,byte param_3,undefined4 param_4,undefined4 param_5
          ,undefined **param_6,undefined4 param_7,undefined2 param_8,undefined4 param_9,
          undefined1 param_10)

{
  int *piVar1;
  void *this;
  int *piVar2;
  uint *puVar3;
  uint uVar4;
  int unaff_EDI;
  undefined8 uVar5;
  undefined2 uStack00000022;
  undefined1 uStack0000003c;
  undefined4 in_stack_0000004c;
  undefined4 in_stack_00000050;
  uint in_stack_00000054;
  uint in_stack_00000058;
  undefined4 in_stack_0000005c;
  char in_stack_00000060;
  undefined4 in_stack_00000064;
  undefined4 in_stack_00000068;
  int *piVar6;

  /* DB EOL 00778A5D: Branch continuation from 00778A00: inherits its existing stack and EDI manager; standalone decompiler arguments are artifacts. */
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar5 = (**(code **)(*piVar1 + 0x118))();
  /* DB EOL 00778A79: Captured manager absent: skip allocation/request and issue immediate host +130 callback below. */
  if (unaff_EDI != 0) {
    this = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = FUN_00777c70(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),in_stack_00000068);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    piVar6 = piVar2;
    puVar3 = UIResourceKey_CopyManagedToNative(&uStack0000003c,&param_2);
    uVar4 = FUN_00d61620(param_1,puVar3,in_stack_0000004c,in_stack_00000050,in_stack_00000054,
                         in_stack_00000058,in_stack_0000005c,in_stack_00000060,in_stack_00000064,
                         piVar6);
    /* DB EOL 00778AF7: Only AL selects admission branch; zero reaches immediate callback, nonzero reaches host +120 then +11C. No image-completion proof. */
    if ((char)uVar4 != '\0') {
      /* DB EOL 00778B10: Host +120(token low/high, -1, delegate, 0), only after nonzero request AL; host scheduling semantics unresolved. */
      (**(code **)(*piVar1 + 0x120))(uVar5,0xffffffff,in_stack_00000068,0);
      /* DB EOL 00778B1C: Host +11C follows +120 before optional notifier +8; ownership/thread semantics require host proof. */
      (**(code **)(*piVar1 + 0x11c))();
      if (piVar2 == (int *)0x0) {
        return;
      }
      (**(code **)(*piVar2 + 8))();
      return;
    }
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
  }
  param_6 = &PTR_FUN_00fba6f4;
  param_10 = 0;
  /* DB EOL 00778B5E: First UInt16 temporary store: higher-address word = 1; separate zero payload byte was stored earlier. */
  uStack00000022 = 1;
  /* DB EOL 00778B65: Second UInt16 temporary store: lower-address word = 0 (physical order is 1 then 0). Variant semantics remain qualified. */
  param_8 = 0;
  /* DB EOL 00778B78: Immediate host +130(delegate, token low/high, typed zero temporary, 0), reached on absent manager or zero request AL. */
  (**(code **)(*piVar1 + 0x130))(in_stack_00000068,uVar5,&param_6,0);
  param_1 = &PTR_FUN_00fba6f4;
  /* DB EOL 00778B7A: Physical source is temporary stack flag BYTE & 0x04; conditionally call 4F5760 cleanup. Decompiler unaff_EBX is not the source. */
  if ((param_3 & 4) != 0) {
    FUN_004f5760(&param_1,'\0');
  }
  return;
}
