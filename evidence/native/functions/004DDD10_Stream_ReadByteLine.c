/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Instruction-verified cdecl ABI:
   stream,byte buffer,capacity; all three pushed by7D9CA0 and caller cleans12. Consume bytes until
   line terminator/end/capacity boundary, terminate buffer. Do not reinterpret its stack capacity as
   an unaffiliated return address from the older incorrect two-argument prototype. */

uint __cdecl Stream_ReadByteLine(void *stream,void *buffer,uint capacity)

{
  int iVar1;
  int iVar2;
  undefined4 unaff_EBP;
  uint uVar3;
  char *pcVar4;
  char unaff_retaddr;
  undefined4 local_4;
  
  pcVar4 = buffer;
  iVar2 = 0;
  uVar3 = 0;
  local_4 = 0;
  if (buffer == (void *)0x0) {
    local_4 = (**(code **)(*(int *)stream + 0x24))(0);
  }
  iVar1 = (**(code **)(*(int *)stream + 0x30))(&buffer,1);
  if (iVar1 == 1) {
    do {
      iVar1 = 1;
      iVar2 = iVar2 + 1;
      if ((unaff_retaddr == '\r') || (unaff_retaddr == '\n')) {
        local_4 = CONCAT31(local_4._1_3_,unaff_retaddr);
        if (unaff_retaddr == '\r') {
          iVar1 = (**(code **)(*(int *)stream + 0x30))(&local_4,1);
        }
        if ((iVar1 == 1) && ((char)local_4 != '\n')) {
          (**(code **)(*(int *)stream + 0x28))(0xffffffff,1);
        }
        goto LAB_004ddd96;
      }
      if ((pcVar4 != (char *)0x0) && (uVar3 < (int)stream - 1U)) {
        *pcVar4 = unaff_retaddr;
        pcVar4 = pcVar4 + 1;
      }
      uVar3 = uVar3 + 1;
      iVar1 = (**(code **)(*(int *)stream + 0x30))(&stack0x00000000,1);
    } while (iVar1 == 1);
    if (iVar2 != 0) goto LAB_004ddd96;
  }
  uVar3 = 0xfffffffe;
LAB_004ddd96:
  if (pcVar4 == (char *)0x0) {
    (**(code **)(*(int *)stream + 0x28))(unaff_EBP,0);
    return uVar3;
  }
  *pcVar4 = '\0';
  return uVar3;
}

