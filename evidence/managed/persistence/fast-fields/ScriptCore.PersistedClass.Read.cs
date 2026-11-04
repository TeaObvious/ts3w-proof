/* Original ScriptCore PC1.67; identity: ../../reference-inputs.json.
   Fresh ILSpy decompilation; full selected methods or full selected type.
   Analyst: Overloads06000CD6/06000CDE. Original06000CD6 constructs a compatible leading field prefix, calls LookupFieldOffsets, truncates before first negative offset, and separates the remaining ordinary fields. */

using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;
using Sims3.SimIFace;

public void Read(FastStreamReader reader, int version)
{
	//IL_00de: Unknown result type (might be due to invalid IL or missing references)
	//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
	//IL_00ea: Unknown result type (might be due to invalid IL or missing references)
	//IL_00ef: Unknown result type (might be due to invalid IL or missing references)
	//IL_00f6: Unknown result type (might be due to invalid IL or missing references)
	//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
	//IL_0100: Unknown result type (might be due to invalid IL or missing references)
	//IL_014c: Unknown result type (might be due to invalid IL or missing references)
	//IL_0152: Unknown result type (might be due to invalid IL or missing references)
	//IL_0154: Invalid comparison between Unknown and I4
	//IL_018b: Unknown result type (might be due to invalid IL or missing references)
	//IL_0192: Expected Obj, but got Unknown
	//IL_0241: Unknown result type (might be due to invalid IL or missing references)
	//IL_024b: Unknown result type (might be due to invalid IL or missing references)
	//IL_024d: Invalid comparison between Unknown and I4
	//IL_0276: Unknown result type (might be due to invalid IL or missing references)
	//IL_0280: Unknown result type (might be due to invalid IL or missing references)
	//IL_0282: Invalid comparison between Unknown and I4
	//IL_02ca: Unknown result type (might be due to invalid IL or missing references)
	//IL_02d1: Unknown result type (might be due to invalid IL or missing references)
	//IL_01f1: Unknown result type (might be due to invalid IL or missing references)
	//IL_01fb: Expected Obj, but got Unknown
	//IL_0349: Unknown result type (might be due to invalid IL or missing references)
	//IL_0380: Unknown result type (might be due to invalid IL or missing references)
	//IL_0383: Unknown result type (might be due to invalid IL or missing references)
	//IL_0388: Unknown result type (might be due to invalid IL or missing references)
	if (version >= 768)
	{
		StringBuilder stringBuilder = new StringBuilder();
		mType = ReadEncodedType(reader, stringBuilder);
		mFullName = stringBuilder.ToString();
	}
	else
	{
		mFullName = reader.ReadString();
		mType = Persist.GetTypeByUnqualifiedName(mFullName);
	}
	mPersistable = false;
	int num = ((version >= 512) ? Persist.ReadCompressedInt(reader) : reader.ReadInt32());
	if (num >= 0)
	{
		mFields = new PersistedFieldInfo[num];
		for (int i = 0; i < mFields.Length; i++)
		{
			mFields[i].mFullName = reader.ReadString();
			mFields[i].mCode = (PersistedTypeCode)reader.ReadByte();
		}
	}
	if (num < 0)
	{
		CheckGroupAffinity();
		if ((object)mType != null)
		{
		}
	}
	else
	{
		if ((object)mType == null)
		{
			return;
		}
		mTypeFlags = (ReflectionTypeFlags)Reflection.Reflection_GetTypeClassification(mType);
		if ((mTypeFlags & 8) != 0 || ((mTypeFlags & 0x10) == 0 && (mTypeFlags & 4) == 0))
		{
			return;
		}
		mCtor = mType.GetConstructor(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, Type.EmptyTypes, null);
		CheckGroupAffinity();
		if (Reflection.Reflection_IsTypeAssignableFrom(typeof(IPersistable), mType))
		{
			mCustomFormatter = (IPersistFormatter)(object)this;
			mPersistable = true;
			return;
		}
		mPersistable = (mTypeFlags & 4) != 0;
		Type baseType = mType;
		while ((object)baseType != null)
		{
			object[] customAttributes = baseType.GetCustomAttributes(typeof(PersistableAttribute), inherit: false);
			if (customAttributes.Length > 0)
			{
				PersistableAttribute val = (PersistableAttribute)customAttributes[0];
				if (!val.Persistable)
				{
					mCtor = null;
					mPersistable = false;
					return;
				}
				if ((object)val.FormatterType != null)
				{
					object obj = val.FormatterType.GetConstructor(Type.EmptyTypes).Invoke(null);
					IGenericPersistFormatter val2 = (IGenericPersistFormatter)((obj is IGenericPersistFormatter) ? obj : null);
					if (val2 != null)
					{
						mCustomFormatter = val2.CreatePersistFormatter(mType);
					}
					else
					{
						mCustomFormatter = (IPersistFormatter)obj;
					}
					mFields = sEmptyFields;
					mPersistable = true;
					return;
				}
				mPersistable = true;
			}
			baseType = baseType.BaseType;
		}
		if (Reflection.Reflection_IsTypeAssignableFrom(typeof(Delegate), mType))
		{
			mCustomFormatter = BCLDefaultFormatter.CreatePersistFormatter(mType, (mTypeFlags & 0x200) != 0, null);
			mPersistable = true;
		}
		else if (!mPersistable)
		{
			mCustomFormatter = BCLDefaultFormatter.CreatePersistFormatter(mType, (mTypeFlags & 0x200) != 0, null);
			if (mCustomFormatter != null)
			{
				mPersistable = true;
			}
			else if (mType.Name.StartsWith("<"))
			{
				mPersistable = true;
			}
		}
		if (mCustomFormatter == null && (mTypeFlags & 0x20) != 0)
		{
			return;
		}
		List<PersistFastField> list = new List<PersistFastField>();
		bool flag = true;
		for (int j = 0; j < mFields.Length; j++)
		{
			string fieldName = mFields[j].mFullName;
			FieldInfo fieldInfo = Persist.LookupField(mType, fieldName);
			if ((object)fieldInfo == null)
			{
				flag = false;
				continue;
			}
			EventInfo eventForField = GetEventForField(fieldInfo);
			FieldPersistability fieldPersistability = IsFieldPersistable(((object)eventForField != null) ? ((MemberInfo)eventForField) : ((MemberInfo)fieldInfo));
			if (fieldPersistability == FieldPersistability.No)
			{
				flag = false;
				continue;
			}
			Type fieldType = fieldInfo.FieldType;
			ReflectionTypeFlags typeFlags = (ReflectionTypeFlags)0;
			PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(fieldType, ref typeFlags, null);
			if (persistedTypeCode == PersistedTypeCode.Null)
			{
				_ = 2;
				flag = false;
				continue;
			}
			if (version < 1280 && persistedTypeCode == PersistedTypeCode.ResourceKeyInst)
			{
				persistedTypeCode = PersistedTypeCode.ObjectInst;
			}
			if ((persistedTypeCode == PersistedTypeCode.ObjectInst && ((typeFlags & 4) == 0 || Persist.IsNullableType(fieldType, typeFlags))) || persistedTypeCode == PersistedTypeCode.ArrayInst)
			{
				persistedTypeCode = PersistedTypeCode.ObjectRef;
			}
			PersistedTypeCode mCode = mFields[j].mCode;
			switch (persistedTypeCode)
			{
			case PersistedTypeCode.ObjectInst:
				switch (mCode)
				{
				case PersistedTypeCode.ProtectedObjectInst:
					persistedTypeCode = PersistedTypeCode.ProtectedObjectInst;
					break;
				case PersistedTypeCode.BrokenProtectedObjectInst:
					persistedTypeCode = PersistedTypeCode.BrokenProtectedObjectInst;
					break;
				}
				break;
			case PersistedTypeCode.ProtectedObjectInst:
				if (mCode == PersistedTypeCode.BrokenProtectedObjectInst)
				{
					persistedTypeCode = mCode;
				}
				break;
			case PersistedTypeCode.EnumInst:
				if (mCode == PersistedTypeCode.BrokenEnumInst)
				{
					persistedTypeCode = mCode;
				}
				break;
			}
			if (persistedTypeCode == mCode)
			{
				mFields[j].mFieldInfo = fieldInfo;
				if (flag)
				{
					list.Add(new PersistFastField
					{
						mPersistedTypeCode = (uint)persistedTypeCode,
						mRuntimeFieldHandleOrOffset = fieldInfo.FieldHandle.Value
					});
				}
			}
			else
			{
				flag = false;
			}
		}
		PersistFastField[] array = list.ToArray();
		PersistImports.Serializer_LookupFieldOffsets(array);
		for (int k = 0; k < array.Length; k++)
		{
			if ((int)array[k].mRuntimeFieldHandleOrOffset < 0)
			{
				PersistFastField[] array2 = new PersistFastField[k];
				Array.Copy(array, array2, k);
				array = array2;
				break;
			}
		}
		int num2 = array.Length;
		if (num2 > 0)
		{
			mFastFields = array;
			int num3 = mFields.Length - num2;
			PersistedFieldInfo[] destinationArray = new PersistedFieldInfo[num3];
			Array.Copy(mFields, num2, destinationArray, 0, num3);
			mFields = destinationArray;
		}
	}
}
public void Read(ref object obj, FastStreamReader reader, IPersistReader persistReader, Type type)
{
	//IL_0006: Unknown result type (might be due to invalid IL or missing references)
	if (obj != null)
	{
		((IPersistable)obj).Read(reader, persistReader);
	}
}
