/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* Verified PC 1.67 registration-path observation: Downstream of 0x00E82820, receives global
   registry 0x011F536C, transformed name result from 0x00E48380, and native function pointer. Exact
   table key representation and collision policy remain unresolved. Raw source:
   evidence/bindings/consumer-trace.md; TS3W.exe
   . */



/* Verified PC 1.67 registration-path observation: Downstream of 0x00E82820, receives global
   registry 0x011F536C, transformed name result from 0x00E48380, and native function pointer. Exact
   table key representation and collision policy remain unresolved. Raw source:
   /home/lego/WorldTool/build/ts3w-proof-20261012/registration-audit/consumer-trace.md; TS3W.exe
   SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   Static PC1.67 shared-table clarification; analyst name InsertOrUpdateHashTableEntry: Four
   physical stack words are table,key,value,replaceKey; the existing six-parameter fastcall
   decompilation remains an ABI artifact, with no signature edit here. Shared consumers include
   E82820 native-name binding and E6E020 image+298 TypeDef-token/class cache. For valid table, a
   signed count(+10)>=threshold(+14) check may run E45B80 before hashing. Hash callback+0, unsigned
   modulo bucket count+C and bucket array+8 select a node+8 chain; equality callback+4 nonzero means
   match. Miss allocates a pooled12-byte node, prepends it and increments count. Hit preserves
   count; nonzero replaceKey invokes nonnull key destructor+20 then replaces key. Value
   destructor+1C, if present, is called on old value for either mode, then value is replaced. No
   identical-pointer suppression, incoming equal-key free in zero mode, rollback or local lock
   appears. Null table tails through original IAT F965C0 to MSVCR80.dll printf with hash!=NULL
   diagnostic; this is not a switch or proven abort. Owned214B/81 instructions match original normal
   CFG; old224B window adds10 CC bytes. Hash/equality/destructor initialization, valid modulus,
   allocator/callback failures, key/value lifetime and caller synchronization remain open.
   E48380(name) is a null-preserving duplicate-byte-string path via D70C50, not a proven name
   normalization. No general EAX insertion-status contract or runtime observation. */

void __fastcall
InsertOrUpdateHashTableEntry
          (undefined4 param_1,int param_2,undefined4 *param_3,undefined4 param_4,undefined4 param_5,
          int param_6)

{
  code *pcVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  
  if (param_3 == (undefined4 *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00e45bfa. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    printf("%s:%d: assertion \'%s\' failed");
    return;
  }
  pcVar1 = (code *)param_3[1];
  if ((int)param_3[5] <= (int)param_3[4]) {
    FUN_00e45b80(param_3[4],param_2);
  }
  uVar2 = (*(code *)*param_3)(param_4);
  uVar2 = uVar2 % (uint)param_3[3];
  puVar4 = *(undefined4 **)(param_3[2] + uVar2 * 4);
  while( true ) {
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)FUN_00e459f0();
      *puVar4 = param_4;
      puVar4[1] = param_5;
      puVar4[2] = *(undefined4 *)(param_3[2] + uVar2 * 4);
      *(undefined4 **)(param_3[2] + uVar2 * 4) = puVar4;
      param_3[4] = param_3[4] + 1;
      return;
    }
    iVar3 = (*pcVar1)(*puVar4,param_4);
    if (iVar3 != 0) break;
    puVar4 = (undefined4 *)puVar4[2];
  }
  if (param_6 != 0) {
    if ((code *)param_3[8] != (code *)0x0) {
      (*(code *)param_3[8])(*puVar4);
    }
    *puVar4 = param_4;
  }
  if ((code *)param_3[7] != (code *)0x0) {
    (*(code *)param_3[7])(puVar4[1]);
  }
  puVar4[1] = param_5;
  return;
}

