/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   ReceiverECX only, plainRET. Calls9A3700 and resets+98; then9A5600(owner+14,0,0). Installed table11CEDE0 count595620 and reverse index595640 produce path plus out-product loadedEDX; calls9A5600(path,1,product) at5911. Genuine C omits third argument, actual pushes at58C1/C3/C8 and590B/590C/590E govern. No directory/item order or full cleanup/lock contract from names. */
void __fastcall FUN_009a58a0(void *param_1)

{
  uint uVar1;
  undefined4 *puVar2;
  uint uVar3;
  void *local_4;
  
  local_4 = param_1;
  FUN_009a3700(*(int *)((int)param_1 + 0x90),*(uint *)((int)param_1 + 0x94));
  *(undefined4 *)((int)param_1 + 0x98) = 0;
  FUN_009a5600(param_1,(undefined4 *)((int)param_1 + 0x14),'\0');
  uVar3 = 0;
  uVar1 = FUN_00595620(0x11cede0);
  if (uVar1 != 0) {
    do {
      puVar2 = (undefined4 *)FUN_00595640(&DAT_011cede0,(uVar1 - uVar3) - 1,&local_4);
      FUN_009a5600(param_1,puVar2,'\x01');
      uVar3 = uVar3 + 1;
    } while (uVar3 < uVar1);
  }
  return;
}

