using System;
using System.IO;
using System.Reflection;
using Sims3.SimIFace;

namespace ScriptCore;

public class PersistReader : IPersistReader, IDisposable
{
	private enum ObjectLoadMode
	{
		Precreate,
		Reference,
		Create,
		Skip
	}

	private const int kSubTableBits = 8;

	private const int kSubTableSize = 256;

	private const int kSubTableMask = 255;

	private FastStreamReader mReader;

	private int mObjectCount;

	private object[][] mObjectTables;

	private int[][] mObjectOffsetTables;

	private ResourceKey[] mResourceKeyTable;

	private PersistedClass[] mClasses;

	private int mVersion;

	private object[] mObjectArrayOneNull = new object[1];

	private object[] mObjectArrayOneObject = new object[1];

	public object this[int index]
	{
		get
		{
			return mObjectTables[index >> 8][index & 0xFF];
		}
		set
		{
			mObjectTables[index >> 8][index & 0xFF] = value;
		}
	}

	public int Count => mObjectCount;

	public void Load(FastStreamReader reader, object baseObject)
	{
		mReader = reader;
		int num = (mVersion = reader.ReadInt32());
		if (num >= 1536)
		{
			throw new NotSupportedException("The serialized data uses a format that is too new for this reader.");
		}
		if (num >= 512)
		{
			int num2 = reader.ReadInt32();
			if (num2 != 1397375567)
			{
				throw new NotSupportedException("The signature in the serialized data is invalid.");
			}
		}
		int numClasses = reader.ReadInt32();
		int num3 = reader.ReadInt32();
		int num4 = num3 + 256 - 1 >> 8;
		mObjectCount = num3;
		mObjectTables = new object[num4][];
		for (int i = 0; i < num4; i++)
		{
			mObjectTables[i] = new object[256];
		}
		if (num3 > 0)
		{
			mObjectTables[0][0] = baseObject;
		}
		if (num >= 512)
		{
			int offset = reader.ReadInt32();
			int offset2 = reader.ReadInt32();
			if (num >= 1280)
			{
				int offset3 = reader.ReadInt32();
				reader.Seek(offset3, SeekOrigin.Begin);
				int numResKeys = reader.ReadInt32();
				ReadResourceKeyTable(numResKeys);
			}
			reader.Seek(offset, SeekOrigin.Begin);
			ReadClassTable(numClasses, num);
			reader.Seek(offset2, SeekOrigin.Begin);
			ReadObjectTable(num3);
		}
		else
		{
			ReadClassTable(numClasses, num);
			ReadObjectTable(num3);
		}
		ReadObjects();
	}

	public void ExecutePostLoads()
	{
		bool shouldCallRenamePostLoad = RenameAttribute.ShouldCallRenamePostLoad;
		object[][] array = mObjectTables;
		foreach (object[] array2 in array)
		{
			object[] array3 = array2;
			foreach (object obj in array3)
			{
				if (obj is IPersistPostLoad persistPostLoad)
				{
					try
					{
						persistPostLoad.PersistPostLoad();
					}
					catch (Exception)
					{
					}
				}
				if (shouldCallRenamePostLoad && obj is IRenamePostLoad renamePostLoad)
				{
					try
					{
						renamePostLoad.RenamePostLoad();
					}
					catch (Exception)
					{
					}
				}
			}
		}
	}

	public object GetObjectByType(Type t)
	{
		object[][] array = mObjectTables;
		foreach (object[] array2 in array)
		{
			object[] array3 = array2;
			foreach (object obj in array3)
			{
				if (obj != null && obj.GetType() == t)
				{
					return obj;
				}
			}
		}
		return null;
	}

	public object ReadReference()
	{
		int num = mReader.ReadInt32();
		if (num == 0)
		{
			return null;
		}
		return LoadObject(num - 1, ObjectLoadMode.Reference);
	}

	public object ReadReferenceForceLive()
	{
		int num = mReader.ReadInt32();
		if (num == 0)
		{
			return null;
		}
		return LoadObject(num - 1, ObjectLoadMode.Create);
	}

	public bool TryReadReference(out object obj, bool forceLiveNow)
	{
		int num = mReader.ReadInt32();
		if (num == 0)
		{
			obj = null;
			return true;
		}
		obj = LoadObject(num - 1, (!forceLiveNow) ? ObjectLoadMode.Reference : ObjectLoadMode.Create);
		return obj != null;
	}

	public object ReadField(Type type)
	{
		object obj = null;
		PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(type, null);
		if (persistedTypeCode == PersistedTypeCode.ObjectInst || persistedTypeCode == PersistedTypeCode.ArrayInst)
		{
			persistedTypeCode = PersistedTypeCode.ObjectRef;
		}
		LoadObject(persistedTypeCode, ref obj, ObjectLoadMode.Create);
		return obj;
	}

	public bool TryReadTypedField(out object obj, bool forceLiveNow)
	{
		PersistedTypeCode persistedTypeCode = (PersistedTypeCode)mReader.ReadByte();
		obj = null;
		if (persistedTypeCode == PersistedTypeCode.Null)
		{
			return true;
		}
		LoadObject(persistedTypeCode, ref obj, (!forceLiveNow) ? ObjectLoadMode.Reference : ObjectLoadMode.Create);
		return obj != null;
	}

	private void ReadClassTable(int numClasses, int version)
	{
		mClasses = new PersistedClass[numClasses];
		for (int i = 0; i < numClasses; i++)
		{
			PersistedClass persistedClass = new PersistedClass();
			persistedClass.Read(mReader, version);
			mClasses[i] = persistedClass;
		}
	}

	private void ReadObjectTable(int numObjects)
	{
		int num = numObjects + 256 - 1 >> 8;
		mObjectOffsetTables = new int[num][];
		for (int i = 0; i < num; i++)
		{
			int[] array = new int[256];
			mObjectOffsetTables[i] = array;
			int num2 = Math.Min(256, numObjects);
			for (int j = 0; j < num2; j++)
			{
				array[j] = mReader.ReadInt32();
			}
			numObjects -= num2;
		}
	}

	private void ReadResourceKeyTable(int numResKeys)
	{
		mResourceKeyTable = new ResourceKey[numResKeys];
		for (int i = 0; i < numResKeys; i++)
		{
			mResourceKeyTable[i].TypeId = mReader.ReadUInt32();
			mResourceKeyTable[i].GroupId = mReader.ReadUInt32();
			mResourceKeyTable[i].InstanceId = mReader.ReadUInt64();
		}
	}

	private void ReadObjects()
	{
		for (int num = mObjectCount - 1; num >= 0; num--)
		{
			try
			{
				LoadObject(num, ObjectLoadMode.Precreate);
			}
			catch (Exception)
			{
			}
		}
		for (int num2 = mObjectCount - 1; num2 >= 0; num2--)
		{
			try
			{
				LoadObject(num2, ObjectLoadMode.Create);
			}
			catch (Exception)
			{
			}
		}
	}

	private object LoadObject(int i, ObjectLoadMode loadMode)
	{
		int num = i >> 8;
		int num2 = i & 0xFF;
		object[] array = mObjectTables[num];
		if (loadMode != ObjectLoadMode.Create)
		{
			object obj = array[num2];
			if (obj != null)
			{
				return obj;
			}
		}
		int[] array2 = mObjectOffsetTables[num];
		if (array2[num2] < 0)
		{
			return array[num2];
		}
		int position = mReader.Position;
		mReader.Seek(array2[num2], SeekOrigin.Begin);
		if (loadMode == ObjectLoadMode.Reference)
		{
			loadMode = ObjectLoadMode.Precreate;
		}
		if (loadMode != ObjectLoadMode.Precreate)
		{
			array2[num2] = -1;
		}
		PersistedTypeCode saveType = (PersistedTypeCode)mReader.ReadByte();
		LoadObject(saveType, ref array[num2], loadMode);
		mReader.Seek(position, SeekOrigin.Begin);
		return array[num2];
	}

	private void LoadObject(PersistedTypeCode saveType, ref object obj, ObjectLoadMode loadMode)
	{
		int num2;
		int num12;
		long num3;
		PersistedClass persistedClass4;
		PersistedTypeCode persistedTypeCode;
		switch (saveType)
		{
		case PersistedTypeCode.Null:
			obj = null;
			break;
		case PersistedTypeCode.Boolean:
			obj = mReader.ReadBoolean();
			break;
		case PersistedTypeCode.Byte:
			obj = mReader.ReadByte();
			break;
		case PersistedTypeCode.Char:
			obj = mReader.ReadChar();
			break;
		case PersistedTypeCode.DateTime:
			obj = new DateTime(mReader.ReadInt64());
			break;
		case PersistedTypeCode.Decimal:
			obj = mReader.ReadDecimal();
			break;
		case PersistedTypeCode.Double:
			obj = mReader.ReadDouble();
			break;
		case PersistedTypeCode.Int16:
			obj = mReader.ReadInt16();
			break;
		case PersistedTypeCode.Int32:
			obj = mReader.ReadInt32();
			break;
		case PersistedTypeCode.Int64:
			obj = mReader.ReadInt64();
			break;
		case PersistedTypeCode.SByte:
			obj = mReader.ReadSByte();
			break;
		case PersistedTypeCode.Single:
			obj = mReader.ReadSingle();
			break;
		case PersistedTypeCode.UInt16:
			obj = mReader.ReadUInt16();
			break;
		case PersistedTypeCode.UInt32:
			obj = mReader.ReadUInt32();
			break;
		case PersistedTypeCode.UInt64:
			obj = mReader.ReadUInt64();
			break;
		case PersistedTypeCode.ObjectRef:
		{
			int num5 = mReader.ReadInt32();
			if (num5 == 0)
			{
				obj = null;
				break;
			}
			int num6 = num5 - 1;
			obj = mObjectTables[num6 >> 8][num6 & 0xFF];
			if (obj == null && loadMode != ObjectLoadMode.Skip)
			{
				obj = LoadObject(num6, ObjectLoadMode.Reference);
			}
			break;
		}
		case PersistedTypeCode.ObjectInst:
		{
			int num8 = mReader.ReadInt32();
			PersistedClass persistedClass2 = mClasses[num8];
			if (persistedClass2.mCustomFormatter != null)
			{
				if (loadMode == ObjectLoadMode.Precreate)
				{
					obj = persistedClass2.mCustomFormatter.Precreate(mReader, this, persistedClass2.mType);
				}
				else
				{
					persistedClass2.mCustomFormatter.Read(ref obj, mReader, this, persistedClass2.mType);
				}
				break;
			}
			if (obj == null)
			{
				try
				{
					if (persistedClass2.mPersistable)
					{
						if ((persistedClass2.mTypeFlags & ReflectionTypeFlags.IsValueType) != 0)
						{
							obj = Array.CreateInstance(persistedClass2.mType, 1).GetValue(0);
						}
						else if (persistedClass2.mCtor != null)
						{
							obj = persistedClass2.mCtor.Invoke(null);
						}
					}
				}
				catch (Exception)
				{
				}
			}
			if (loadMode == ObjectLoadMode.Precreate)
			{
				break;
			}
			_ = obj;
			if (persistedClass2.mFastFields != null)
			{
				int num9 = PersistImports.Serializer_ReadFastFields(obj, persistedClass2.mFastFields, mReader.Handle);
				if (num9 < 0)
				{
					break;
				}
			}
			PersistedFieldInfo[] mFields = persistedClass2.mFields;
			for (int j = 0; j < mFields.Length; j++)
			{
				PersistedFieldInfo persistedFieldInfo = mFields[j];
				FieldInfo mFieldInfo = persistedFieldInfo.mFieldInfo;
				LoadFieldAttribute.Info info = null;
				if (obj != null && mFieldInfo == null)
				{
					info = LoadFieldAttribute.FindLoadMethod(persistedClass2.mType, persistedFieldInfo.mFullName);
				}
				if (obj == null || (mFieldInfo == null && info == null))
				{
					object obj2 = null;
					LoadObject(persistedFieldInfo.mCode, ref obj2, ObjectLoadMode.Skip);
					continue;
				}
				Type type2 = ((mFieldInfo == null) ? info.FieldType : mFieldInfo.FieldType);
				object obj3 = null;
				if (mFieldInfo != null)
				{
					obj3 = mFieldInfo.GetValue(obj);
				}
				try
				{
					LoadObject(persistedFieldInfo.mCode, ref obj3, ObjectLoadMode.Reference);
					if (obj3 == null)
					{
						if (mFieldInfo != null)
						{
							mFieldInfo.SetValue(obj, null);
						}
						else
						{
							info.MethodInfo.Invoke(obj, mObjectArrayOneNull);
						}
						continue;
					}
					ReflectionTypeFlags typeFlags = (ReflectionTypeFlags)Reflection.Reflection_GetTypeClassification(type2);
					Type unnullifiedType = Persist.GetUnnullifiedType(type2, typeFlags);
					if (Reflection.Reflection_IsTypeAssignableFrom(unnullifiedType, obj3.GetType()) || (unnullifiedType.IsEnum && Persist.CoerceToEnum(unnullifiedType, ref obj3)))
					{
						if (mFieldInfo != null)
						{
							mFieldInfo.SetValue(obj, obj3);
							continue;
						}
						mObjectArrayOneObject[0] = obj3;
						info.MethodInfo.Invoke(obj, mObjectArrayOneObject);
						mObjectArrayOneObject[0] = null;
					}
				}
				catch (Exception)
				{
				}
			}
			if (obj != null && persistedClass2.mGroupMarshaler != null)
			{
				persistedClass2.mGroupMarshaler.Register(obj);
			}
			break;
		}
		case PersistedTypeCode.ArrayInst:
		{
			int num10 = mReader.ReadInt32();
			Type type3 = ReadElementType(out var ptc);
			if (ptc == PersistedTypeCode.ArrayInst || ptc == PersistedTypeCode.ObjectInst)
			{
				ptc = PersistedTypeCode.ObjectRef;
			}
			if (type3 != null)
			{
				Array array3 = null;
				if (obj != null)
				{
					Type type4 = obj.GetType();
					if (type4.IsArray && type4.GetElementType() == type3)
					{
						Array array4 = (Array)obj;
						if (array4.Length == num10)
						{
							array3 = array4;
						}
					}
				}
				if (array3 == null)
				{
					array3 = Array.CreateInstance(type3, num10);
				}
				obj = array3;
				if (loadMode == ObjectLoadMode.Precreate)
				{
					break;
				}
				switch (ptc)
				{
				case PersistedTypeCode.Byte:
				case PersistedTypeCode.Double:
				case PersistedTypeCode.Int16:
				case PersistedTypeCode.Int32:
				case PersistedTypeCode.Int64:
				case PersistedTypeCode.SByte:
				case PersistedTypeCode.Single:
				case PersistedTypeCode.UInt16:
				case PersistedTypeCode.UInt32:
				case PersistedTypeCode.UInt64:
					if (PersistImports.Serializer_ReadPrimitiveArray(array3, mReader.Handle, (byte)ptc))
					{
						return;
					}
					break;
				}
				for (int k = 0; k < num10; k++)
				{
					object obj4 = null;
					LoadObject(ptc, ref obj4, ObjectLoadMode.Reference);
					try
					{
						if (obj4 == null || Reflection.Reflection_IsTypeAssignableFrom(type3, obj4.GetType()))
						{
							array3.SetValue(obj4, k);
						}
					}
					catch (Exception)
					{
					}
				}
			}
			else
			{
				for (int l = 0; l < num10; l++)
				{
					object obj5 = null;
					LoadObject(ptc, ref obj5, ObjectLoadMode.Skip);
				}
			}
			break;
		}
		case PersistedTypeCode.TypeInstZeroBased:
		{
			int num11 = (int)Persist.ReadCompressedUint(mReader);
			PersistedClass persistedClass3 = mClasses[num11];
			obj = persistedClass3.mType;
			break;
		}
		case PersistedTypeCode.TypeInstOneBased:
		{
			int num7 = (int)Persist.ReadCompressedUint(mReader);
			if (num7 == 0)
			{
				obj = null;
				break;
			}
			PersistedClass persistedClass = mClasses[num7 - 1];
			obj = persistedClass.mType;
			break;
		}
		case PersistedTypeCode.ProtectedObjectInst:
			num2 = (int)Persist.ReadCompressedUint(mReader);
			goto IL_05c3;
		case PersistedTypeCode.BrokenProtectedObjectInst:
			num2 = Persist.ReadBrokenCompressedInt(mReader);
			goto IL_05c3;
		case PersistedTypeCode.ExternalObject:
		{
			int num13 = Persist.ReadCompressedInt(mReader);
			PersistedClass persistedClass5 = mClasses[num13];
			if (persistedClass5.mGroupMarshaler == null)
			{
				obj = null;
			}
			else
			{
				obj = persistedClass5.mGroupMarshaler.Read(mReader, this);
			}
			break;
		}
		case PersistedTypeCode.EnumInst:
			num12 = Persist.ReadCompressedInt(mReader);
			goto IL_066d;
		case PersistedTypeCode.BrokenEnumInst:
			num12 = Persist.ReadBrokenCompressedInt(mReader);
			goto IL_066d;
		case PersistedTypeCode.MethodInst:
		{
			if (obj != null || loadMode == ObjectLoadMode.Skip)
			{
				break;
			}
			Type type = (Type)ReadReference();
			if (type == null)
			{
				obj = null;
				break;
			}
			string text = (string)ReadReference();
			Type[] types = (Type[])ReadReferenceForceLive();
			Type[] array = (Type[])ReadReferenceForceLive();
			MethodInfo methodInfo = null;
			if (type != null && text != null)
			{
				try
				{
					if (text.StartsWith("<"))
					{
						MethodInfo[] methods = type.GetMethods(BindingFlags.DeclaredOnly | BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic);
						MethodInfo[] array2 = methods;
						foreach (MethodInfo methodInfo2 in array2)
						{
							if (methodInfo2.Name.StartsWith(text))
							{
								if (methodInfo != null)
								{
									methodInfo = null;
									break;
								}
								methodInfo = methodInfo2;
							}
						}
					}
					else
					{
						methodInfo = type.GetMethod(text, BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.FlattenHierarchy | BindingFlags.ExactBinding, null, types, null);
					}
				}
				catch (Exception)
				{
					break;
				}
			}
			if (methodInfo == null)
			{
				break;
			}
			if (array == null)
			{
				if (!methodInfo.IsGenericMethod)
				{
					obj = methodInfo;
				}
			}
			else if (methodInfo.IsGenericMethod)
			{
				MethodInfo methodInfo3 = methodInfo.MakeGenericMethod(array);
				if (methodInfo3 != null)
				{
					obj = methodInfo3;
				}
			}
			break;
		}
		case PersistedTypeCode.ResourceKeyInst:
			{
				if (obj == null)
				{
					obj = default(ResourceKey);
				}
				if (loadMode != ObjectLoadMode.Precreate)
				{
					int num = mReader.ReadInt32();
					if (num >= 0 && num < mResourceKeyTable.Length)
					{
						obj = mResourceKeyTable[num];
					}
				}
				break;
			}
			IL_05c3:
			num3 = mReader.Position;
			if (loadMode != ObjectLoadMode.Skip && num2 >= 0)
			{
				LoadObject(PersistedTypeCode.ObjectInst, ref obj, loadMode);
				long num4 = mReader.Position;
				if (num4 == num3 + num2)
				{
					break;
				}
			}
			mReader.Seek((int)(num3 + num2), SeekOrigin.Begin);
			break;
			IL_066d:
			persistedClass4 = mClasses[num12];
			persistedTypeCode = (PersistedTypeCode)mReader.ReadByte();
			if (persistedClass4.mType == null || loadMode == ObjectLoadMode.Skip)
			{
				LoadObject(persistedTypeCode, ref obj, loadMode);
				break;
			}
			switch (persistedTypeCode)
			{
			case PersistedTypeCode.SByte:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadSByte());
				break;
			case PersistedTypeCode.Byte:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadByte());
				break;
			case PersistedTypeCode.Int16:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadInt16());
				break;
			case PersistedTypeCode.UInt16:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadUInt16());
				break;
			case PersistedTypeCode.Int32:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadInt32());
				break;
			case PersistedTypeCode.UInt32:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadUInt32());
				break;
			case PersistedTypeCode.Int64:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadInt64());
				break;
			case PersistedTypeCode.UInt64:
				obj = Enum.ToObject(persistedClass4.mType, mReader.ReadUInt64());
				break;
			case PersistedTypeCode.Char:
			case PersistedTypeCode.DateTime:
			case PersistedTypeCode.Decimal:
			case PersistedTypeCode.Double:
			case PersistedTypeCode.Single:
				break;
			}
			break;
		}
	}

	private Type ReadElementType(out PersistedTypeCode ptc)
	{
		ptc = (PersistedTypeCode)mReader.ReadByte();
		switch (ptc)
		{
		default:
			return null;
		case PersistedTypeCode.Boolean:
			return typeof(bool);
		case PersistedTypeCode.Byte:
			return typeof(byte);
		case PersistedTypeCode.Char:
			return typeof(char);
		case PersistedTypeCode.DateTime:
			return typeof(DateTime);
		case PersistedTypeCode.Decimal:
			return typeof(decimal);
		case PersistedTypeCode.Double:
			return typeof(double);
		case PersistedTypeCode.Int16:
			return typeof(short);
		case PersistedTypeCode.Int32:
			return typeof(int);
		case PersistedTypeCode.Int64:
			return typeof(long);
		case PersistedTypeCode.SByte:
			return typeof(sbyte);
		case PersistedTypeCode.Single:
			return typeof(float);
		case PersistedTypeCode.UInt16:
			return typeof(ushort);
		case PersistedTypeCode.UInt32:
			return typeof(uint);
		case PersistedTypeCode.UInt64:
			return typeof(ulong);
		case PersistedTypeCode.ObjectInst:
		{
			int num3 = mReader.ReadInt32();
			return mClasses[num3].mType;
		}
		case PersistedTypeCode.ArrayInst:
		{
			Type type = ReadElementType(out var _);
			if (type == null)
			{
				return null;
			}
			return Persist.MakeArrayType(type);
		}
		case PersistedTypeCode.TypeInstZeroBased:
			return typeof(Type);
		case PersistedTypeCode.TypeInstOneBased:
			return typeof(Type);
		case PersistedTypeCode.BrokenEnumInst:
		{
			int num2 = Persist.ReadBrokenCompressedInt(mReader);
			return mClasses[num2].mType;
		}
		case PersistedTypeCode.EnumInst:
		{
			int num = Persist.ReadCompressedInt(mReader);
			return mClasses[num].mType;
		}
		case PersistedTypeCode.ResourceKeyInst:
			return typeof(ResourceKey);
		}
	}

	public void Dispose()
	{
		for (int i = 0; i < mObjectTables.Length; i++)
		{
			object[] array = mObjectTables[i];
			Array.Clear(array, 0, array.Length);
		}
		Array.Clear(mObjectTables, 0, mObjectTables.Length);
		mObjectTables = null;
		for (int j = 0; j < mObjectOffsetTables.Length; j++)
		{
			int[] array2 = mObjectOffsetTables[j];
			Array.Clear(array2, 0, array2.Length);
		}
		Array.Clear(mObjectOffsetTables, 0, mObjectOffsetTables.Length);
		mObjectOffsetTables = null;
	}
}
