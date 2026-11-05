/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Analyst note (PC1.67 construction persistence contract): Open supplied path, read at most4095
   bytes plus NUL into4096-byte first-line buffer via4DDD10. Require positive line length below4096,
   find exact-case substring Version:, then skip to native ctype digit and consume until ctype
   whitespace bits6. Native ctype114DA30 marks ASCII digits10hex and TAB..CR/space as whitespace.
   Embedded NUL terminates C-string search. UTF16 conversion/truncation belongs to metadata writer.
    */

undefined4 __cdecl
Version_ReadFirstLineToken(wchar_t *param_1,char *param_2,void *param_3,char param_4)

{
  char cVar1;
  bool bVar2;
  uint uVar3;
  char *pcVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_1260 [14];
  int local_1228 [138];
  char local_1000 [4092];
  undefined4 uStack_4;
  
  uStack_4 = 0x7d9caa;
  FileReadStream_Construct(local_1228,param_1);
  FUN_004db550((int)local_1228);
  bVar2 = FUN_004db690(local_1228,1,3,1,0);
  if (bVar2) {
    FUN_004deb20(local_1260,0x1000,0xfffffffe,local_1228,0);
    local_1000[0] = '\0';
    uVar3 = Stream_ReadByteLine(local_1260,local_1000,0x1000);
    if ((((uVar3 != 0xffffffff) && (uVar3 < 0x1000)) && (uVar3 != 0)) &&
       (((pcVar4 = local_1000, param_2 == (char *)0x0 || (*param_2 == '\0')) ||
        (pcVar4 = FUN_004fe440(pcVar4,param_2), pcVar4 != (char *)0x0)))) {
      if (param_4 != '\0') {
        cVar1 = *pcVar4;
        while ((cVar1 != '\0' &&
               ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                          (int)cVar1) & 0x10) == 0))) {
          cVar1 = pcVar4[1];
          pcVar4 = pcVar4 + 1;
        }
      }
      cVar1 = *pcVar4;
      pcVar6 = pcVar4;
      while ((cVar1 != '\0' &&
             ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                        (int)cVar1) & 6) == 0))) {
        cVar1 = pcVar6[1];
        pcVar6 = pcVar6 + 1;
      }
      FUN_00405910(param_3,pcVar4,pcVar6);
      FUN_004deb90(local_1260);
      uVar5 = FUN_004dbba0(local_1228);
      return CONCAT31((int3)((uint)uVar5 >> 8),1);
    }
    FUN_004deb90(local_1260);
  }
  uVar3 = FUN_004dbba0(local_1228);
  return uVar3 & 0xffffff00;
}

