/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX node,two stack dwords RET8,EAX output
   key pointer. Copies16-byte resource identity; if parameter definition+54 resolves text, hashes
   UTF16 name into instance, writes OBJK type02DC343F and group0, then frees the returned text.
   Always normalizes legacy139F7591 type to02DC343F. Current C# normalization agrees but rejects
   parameterized path and extra resource admission. */

undefined8 * __thiscall
SacsCreatePropNode_ResolveResourceKey(void *this,undefined8 *param_1,void *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  ushort *wideName;
  ulonglong uVar4;
  
  uVar1 = *(undefined4 *)((int)this + 0x5c);
  *(undefined4 *)param_1 = *(undefined4 *)((int)this + 0x58);
  uVar2 = *(undefined4 *)((int)this + 0x60);
  *(undefined4 *)((int)param_1 + 4) = uVar1;
  uVar1 = *(undefined4 *)((int)this + 100);
  iVar3 = *(int *)((int)this + 0x54);
  *(undefined4 *)(param_1 + 1) = uVar2;
  *(undefined4 *)((int)param_1 + 0xc) = uVar1;
  if ((iVar3 != 0) &&
     (wideName = (ushort *)SacsContext_ReadParameterText(param_2,*(int *)(iVar3 + 0x2c)),
     wideName != (ushort *)0x0)) {
    uVar4 = NameHash64_Utf16Z(wideName);
    *param_1 = uVar4;
    *(undefined4 *)(param_1 + 1) = 0x2dc343f;
    *(undefined4 *)((int)param_1 + 0xc) = 0;
    Memory_FreeIfNonNull(wideName);
  }
  if (*(int *)(param_1 + 1) == 0x139f7591) {
    *(undefined4 *)(param_1 + 1) = 0x2dc343f;
  }
  return param_1;
}

