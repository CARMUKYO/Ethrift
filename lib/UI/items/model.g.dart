part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValueOfTextFormAdapter extends TypeAdapter<ValueOfTextForm> {
  @override
  final int typeId = 3;

  @override
  ValueOfTextForm read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueOfTextForm(
      fields[0] as String,
      fields[1] as int,
      fields[3] as String,
      fields[2] as String,
      fields[4] as int,
      fields[5] as String,
      fields[6] as String,
      fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ValueOfTextForm obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.categoryName)
      ..writeByte(1)
      ..write(obj.expenseAmount)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.note)
      ..writeByte(4)
      ..write(obj.selectedIndexHome)
      ..writeByte(5)
      ..write(obj.categoryIcon)
      ..writeByte(6)
      ..write(obj.bgColorOfContainer)
      ..writeByte(7)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueOfTextFormAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
