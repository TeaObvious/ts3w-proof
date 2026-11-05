/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 console text/argument parser; descriptive analyst name, not an EA symbol. Stored
   char* prototype is NOT a semantic narrow-string contract: actual word loads, stride2 and nul scan
   consume UTF16. ECX is manager; two physical stack words are text and output command/frame; both
   exits RET8. No type/ABI change is made.
   
   Sets frame+4 to FFFFFFFF, calls004FFF10 with separator0x20 and three outputs, constructs bounded
   command name then looks it up through00589E50 BEFORE arguments. Unknown identity returnsFFFFFFFF
   without argument scanning.32-byte argument variants are appended; allocation/growth and flagbit4
   cleanup remain distinct helper boundaries.
   
   Argument classification receives raw token-begin into the nul-terminated REMAINDER of the
   original line, not a copied nul-terminated isolated token.004FFF10 writes no input terminator.
   Only name/fallback string construction receives token-end bounds. No quoted-type flag is tested.
   Direct literal32 windows establish UTF16 0x at00FCD030 and -0x at00FCD028;004FF7B0 result==begin
   selects unsigned64 then signed64 base16 helper paths. That helper's case/search behavior and
   numeric overflow are not established merely by these literals.
   
   Otherwise CRT iswdigit(first), or leading minus plus iswdigit(second), selects numeric handling.
   wcspbrk against .eE followed by SPACE chooses wcstol(base10) if no match/firstmatch SPACE;
   otherwise wcstod then Float32 store. No full-token/finite check is visible. CRT locale,
   suffix-sensitive conversion and overflow/ambient FPU exceptions remain unproved. Non-numeric
   _wcsicmp comparisons recognize true/on/yes/t/y and false/off/no/f/n; Boolean variant kind word1
   at+0A and payload byte+10 are actual writes. String fallback uses bounded begin/end. Do not
   substitute managed whole-token TryParse or guessed quote/numeric behavior. Original loaded
   ParseCommandAndArgument is a separate already-boxed argument helper, not this lexer. No original
   bytes changed. */

undefined4 __thiscall ConsoleCommandManager_ParseText(void *this,char *param_1,int param_2)

{
  short sVar1;
  short *psVar2;
  undefined4 uVar3;
  int *piVar4;
  wchar_t *pwVar5;
  int iVar6;
  void *pvVar7;
  undefined4 *this_00;
  void *this_01;
  int iVar8;
  ulonglong uVar9;
  double dVar10;
  wchar_t *local_58;
  undefined2 *local_54;
  short *local_50;
  float local_4c;
  long local_48;
  short *local_44;
  undefined8 local_40;
  longlong local_38;
  wchar_t *local_30 [2];
  int local_28;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  undefined1 local_10;
  
  iVar8 = param_2;
  psVar2 = (short *)param_1;
  do {
    sVar1 = *psVar2;
    psVar2 = psVar2 + 1;
  } while (sVar1 != 0);
  psVar2 = (short *)(param_1 + ((int)psVar2 - (int)(param_1 + 2) >> 1) * 2);
  *(undefined4 *)(param_2 + 4) = 0xffffffff;
  local_44 = psVar2;
  uVar3 = ConsoleCommandText_ReadTokenBounds
                    ((short *)param_1,psVar2,0x20,(int *)&local_58,(int *)&local_54,(int *)&local_50
                    );
  if ((char)uVar3 != '\0') {
    param_1 = "Services";
    FUN_004f3af0(local_30,local_58,(int)local_54,&param_1);
    piVar4 = (int *)FUN_00589e50(this,local_30[0]);
    if (piVar4 == (int *)0x0) {
      iVar6 = -1;
    }
    else {
      iVar6 = *piVar4;
    }
    *(int *)(iVar8 + 4) = iVar6;
    if (iVar6 == -1) {
      if ((2 < (int)(local_28 - (int)local_30[0] & 0xfffffffeU)) && (local_30[0] != (wchar_t *)0x0))
      {
        Memory_FreeIfNonNull(local_30[0]);
      }
      return 0xffffffff;
    }
    uVar3 = ConsoleCommandText_ReadTokenBounds
                      (local_50,psVar2,0x20,(int *)&local_58,(int *)&local_54,(int *)&local_50);
    if ((char)uVar3 != '\0') {
      this_01 = (void *)(iVar8 + 8);
      do {
        pwVar5 = FUN_004ff7b0(local_58,(ushort *)&PTR_DAT_00fcd030);
        if (pwVar5 == local_58) {
          uVar9 = NumericText_ParseUnsigned64((ushort *)local_58,(ushort **)0x0,0x10);
          local_20[0] = &PTR_FUN_00fba6f4;
          local_18 = 0;
          local_16 = 0;
          local_40 = uVar9;
          Variant_AssignUInt64(local_20,&local_40);
          this_00 = *(undefined4 **)(iVar8 + 0xc);
          if (this_00 < *(undefined4 **)(iVar8 + 0x10)) {
            *(undefined4 **)(iVar8 + 0xc) = this_00 + 8;
            if (this_00 != (undefined4 *)0x0) {
              *this_00 = &PTR_FUN_00fba6f4;
              *(undefined2 *)(this_00 + 2) = 0;
              *(undefined2 *)((int)this_00 + 10) = 0;
              FUN_004f64b0(this_00,(int)local_20);
            }
            goto LAB_0058ab07;
          }
LAB_0058aaff:
          FUN_0073f5d0(this_01,this_00,local_20);
LAB_0058ab07:
          local_20[0] = &PTR_FUN_00fba6f4;
          if ((local_18 & 4) != 0) {
            FUN_004f5760(local_20,'\0');
          }
        }
        else {
          pwVar5 = FUN_004ff7b0(local_58,(ushort *)&DAT_00fcd028);
          if (pwVar5 == local_58) {
            local_38 = FUN_004fef20((ushort *)local_58,(int *)0x0,0x10);
            local_20[0] = &PTR_FUN_00fba6f4;
            local_18 = 0;
            local_16 = 0;
            FUN_004f5fa0(local_20,(undefined4 *)&local_38);
            this_00 = *(undefined4 **)(iVar8 + 0xc);
            if (*(undefined4 **)(iVar8 + 0x10) <= this_00) goto LAB_0058aaff;
            *(undefined4 **)(iVar8 + 0xc) = this_00 + 8;
            if (this_00 != (undefined4 *)0x0) {
              *this_00 = &PTR_FUN_00fba6f4;
              *(undefined2 *)(this_00 + 2) = 0;
              *(undefined2 *)((int)this_00 + 10) = 0;
              FUN_004f64b0(this_00,(int)local_20);
            }
            goto LAB_0058ab07;
          }
          iVar6 = iswdigit(*local_58);
          if (iVar6 != 0) {
LAB_0058aa47:
            pwVar5 = wcspbrk(local_58,L".eE ");
            if ((pwVar5 == (wchar_t *)0x0) || (*pwVar5 == L' ')) {
              local_48 = wcstol(local_58,(wchar_t **)0x0,10);
              local_20[0] = &PTR_FUN_00fba6f4;
              local_18 = 0;
              local_16 = 0;
              FUN_004f5ea0(local_20,&local_48);
              this_00 = *(undefined4 **)(iVar8 + 0xc);
              if (*(undefined4 **)(iVar8 + 0x10) <= this_00) goto LAB_0058aaff;
              *(undefined4 **)(iVar8 + 0xc) = this_00 + 8;
              if (this_00 != (undefined4 *)0x0) {
                *this_00 = &PTR_FUN_00fba6f4;
                *(undefined2 *)(this_00 + 2) = 0;
                *(undefined2 *)((int)this_00 + 10) = 0;
                FUN_004f64b0(this_00,(int)local_20);
              }
            }
            else {
              dVar10 = wcstod(local_58,(wchar_t **)0x0);
              local_4c = (float)dVar10;
              local_20[0] = &PTR_FUN_00fba6f4;
              local_18 = 0;
              local_16 = 0;
              FUN_004f60a0(local_20,&local_4c);
              FUN_0058a650(this_01,local_20);
            }
            goto LAB_0058ab07;
          }
          if (*local_58 == L'-') {
            iVar6 = iswdigit(local_58[1]);
            if (iVar6 != 0) goto LAB_0058aa47;
          }
          iVar6 = _wcsicmp(local_58,L"true");
          if (iVar6 == 0) {
LAB_0058a9fa:
            this_00 = *(undefined4 **)(iVar8 + 0xc);
            param_1 = (char *)CONCAT31(param_1._1_3_,1);
            local_20[0] = &PTR_FUN_00fba6f4;
            local_10 = 1;
            local_16 = 1;
            local_18 = 0;
            if (*(undefined4 **)(iVar8 + 0x10) <= this_00) goto LAB_0058aaff;
            *(undefined4 **)(iVar8 + 0xc) = this_00 + 8;
            if (this_00 != (undefined4 *)0x0) {
              *this_00 = &PTR_FUN_00fba6f4;
              *(undefined2 *)(this_00 + 2) = 0;
              *(undefined2 *)((int)this_00 + 10) = 0;
              FUN_004f64b0(this_00,(int)local_20);
            }
            goto LAB_0058ab07;
          }
          iVar6 = _wcsicmp(local_58,L"on");
          if (iVar6 == 0) goto LAB_0058a9fa;
          iVar6 = _wcsicmp(local_58,L"yes");
          if (iVar6 == 0) goto LAB_0058a9fa;
          iVar6 = _wcsicmp(local_58,L"t");
          if (iVar6 == 0) goto LAB_0058a9fa;
          iVar6 = _wcsicmp(local_58,L"y");
          if (iVar6 == 0) goto LAB_0058a9fa;
          iVar6 = _wcsicmp(local_58,L"false");
          if (iVar6 == 0) {
LAB_0058a9ce:
            param_1 = (char *)((uint)param_1 & 0xffffff00);
            FUN_004f6220(local_20,(undefined1 *)&param_1);
            FUN_0058a650(this_01,local_20);
            FUN_004f5820(local_20);
          }
          else {
            iVar6 = _wcsicmp(local_58,L"off");
            if (iVar6 == 0) goto LAB_0058a9ce;
            iVar6 = _wcsicmp(local_58,L"no");
            if (iVar6 == 0) goto LAB_0058a9ce;
            iVar6 = _wcsicmp(local_58,L"f");
            if (iVar6 == 0) goto LAB_0058a9ce;
            iVar6 = _wcsicmp(local_58,L"n");
            if (iVar6 == 0) goto LAB_0058a9ce;
            pvVar7 = FUN_00408d60(local_30,local_58,local_54);
            FUN_004f6630(local_20,pvVar7);
            FUN_0058a650(this_01,local_20);
            FUN_004f5820(local_20);
          }
        }
        uVar3 = ConsoleCommandText_ReadTokenBounds
                          (local_50,local_44,0x20,(int *)&local_58,(int *)&local_54,(int *)&local_50
                          );
      } while ((char)uVar3 != '\0');
      iVar8 = param_2;
    }
    if ((2 < (int)(local_28 - (int)local_30[0] & 0xfffffffeU)) && (local_30[0] != (wchar_t *)0x0)) {
      Memory_FreeIfNonNull(local_30[0]);
    }
  }
  return *(undefined4 *)(iVar8 + 4);
}

