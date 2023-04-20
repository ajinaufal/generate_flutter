// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_database.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetConfigAppCollection on Isar {
  IsarCollection<ConfigApp> get configApps => this.collection();
}

const ConfigAppSchema = CollectionSchema(
  name: r'ConfigApp',
  id: 6981476877688191733,
  properties: {
    r'accessToken': PropertySchema(
      id: 0,
      name: r'accessToken',
      type: IsarType.string,
    ),
    r'notificationId': PropertySchema(
      id: 1,
      name: r'notificationId',
      type: IsarType.string,
    ),
    r'notificationName': PropertySchema(
      id: 2,
      name: r'notificationName',
      type: IsarType.string,
    ),
    r'pushToken': PropertySchema(
      id: 3,
      name: r'pushToken',
      type: IsarType.string,
    ),
    r'themeMode': PropertySchema(
      id: 4,
      name: r'themeMode',
      type: IsarType.byte,
      enumMap: _ConfigAppthemeModeEnumValueMap,
    ),
    r'urlAppStore': PropertySchema(
      id: 5,
      name: r'urlAppStore',
      type: IsarType.string,
    ),
    r'urlPlayStore': PropertySchema(
      id: 6,
      name: r'urlPlayStore',
      type: IsarType.string,
    )
  },
  estimateSize: _configAppEstimateSize,
  serialize: _configAppSerialize,
  deserialize: _configAppDeserialize,
  deserializeProp: _configAppDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _configAppGetId,
  getLinks: _configAppGetLinks,
  attach: _configAppAttach,
  version: '3.1.0',
);

int _configAppEstimateSize(
  ConfigApp object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.accessToken;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notificationId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notificationName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pushToken;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.urlAppStore;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.urlPlayStore;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _configAppSerialize(
  ConfigApp object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accessToken);
  writer.writeString(offsets[1], object.notificationId);
  writer.writeString(offsets[2], object.notificationName);
  writer.writeString(offsets[3], object.pushToken);
  writer.writeByte(offsets[4], object.themeMode.index);
  writer.writeString(offsets[5], object.urlAppStore);
  writer.writeString(offsets[6], object.urlPlayStore);
}

ConfigApp _configAppDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConfigApp();
  object.accessToken = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.notificationId = reader.readStringOrNull(offsets[1]);
  object.notificationName = reader.readStringOrNull(offsets[2]);
  object.pushToken = reader.readStringOrNull(offsets[3]);
  object.themeMode =
      _ConfigAppthemeModeValueEnumMap[reader.readByteOrNull(offsets[4])] ??
          ThemeModeEnum.dark;
  object.urlAppStore = reader.readStringOrNull(offsets[5]);
  object.urlPlayStore = reader.readStringOrNull(offsets[6]);
  return object;
}

P _configAppDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (_ConfigAppthemeModeValueEnumMap[reader.readByteOrNull(offset)] ??
          ThemeModeEnum.dark) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ConfigAppthemeModeEnumValueMap = {
  'dark': 0,
  'light': 1,
};
const _ConfigAppthemeModeValueEnumMap = {
  0: ThemeModeEnum.dark,
  1: ThemeModeEnum.light,
};

Id _configAppGetId(ConfigApp object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _configAppGetLinks(ConfigApp object) {
  return [];
}

void _configAppAttach(IsarCollection<dynamic> col, Id id, ConfigApp object) {
  object.id = id;
}

extension ConfigAppQueryWhereSort
    on QueryBuilder<ConfigApp, ConfigApp, QWhere> {
  QueryBuilder<ConfigApp, ConfigApp, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConfigAppQueryWhere
    on QueryBuilder<ConfigApp, ConfigApp, QWhereClause> {
  QueryBuilder<ConfigApp, ConfigApp, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ConfigAppQueryFilter
    on QueryBuilder<ConfigApp, ConfigApp, QFilterCondition> {
  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      accessTokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accessToken',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      accessTokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accessToken',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> accessTokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      accessTokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> accessTokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> accessTokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accessToken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      accessTokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> accessTokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> accessTokenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accessToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> accessTokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accessToken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      accessTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accessToken',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      accessTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accessToken',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notificationId',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notificationId',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notificationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notificationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notificationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notificationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notificationId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notificationName',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notificationName',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notificationName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationName',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      notificationNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notificationName',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pushToken',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      pushTokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pushToken',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pushToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      pushTokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pushToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pushToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pushToken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pushToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pushToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pushToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pushToken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> pushTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pushToken',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      pushTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pushToken',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> themeModeEqualTo(
      ThemeModeEnum value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeModeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> themeModeLessThan(
    ThemeModeEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> themeModeBetween(
    ThemeModeEnum lower,
    ThemeModeEnum upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlAppStoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urlAppStore',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlAppStoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urlAppStore',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlAppStoreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlAppStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlAppStoreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urlAppStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlAppStoreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urlAppStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlAppStoreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urlAppStore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlAppStoreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urlAppStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlAppStoreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urlAppStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlAppStoreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urlAppStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlAppStoreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urlAppStore',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlAppStoreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlAppStore',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlAppStoreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urlAppStore',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urlPlayStore',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urlPlayStore',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlPlayStoreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlPlayStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urlPlayStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urlPlayStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlPlayStoreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urlPlayStore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urlPlayStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urlPlayStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urlPlayStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition> urlPlayStoreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urlPlayStore',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlPlayStore',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterFilterCondition>
      urlPlayStoreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urlPlayStore',
        value: '',
      ));
    });
  }
}

extension ConfigAppQueryObject
    on QueryBuilder<ConfigApp, ConfigApp, QFilterCondition> {}

extension ConfigAppQueryLinks
    on QueryBuilder<ConfigApp, ConfigApp, QFilterCondition> {}

extension ConfigAppQuerySortBy on QueryBuilder<ConfigApp, ConfigApp, QSortBy> {
  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByAccessToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByAccessTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByNotificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByNotificationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationName', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy>
      sortByNotificationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationName', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByPushToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushToken', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByPushTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushToken', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByUrlAppStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlAppStore', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByUrlAppStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlAppStore', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByUrlPlayStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlPlayStore', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> sortByUrlPlayStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlPlayStore', Sort.desc);
    });
  }
}

extension ConfigAppQuerySortThenBy
    on QueryBuilder<ConfigApp, ConfigApp, QSortThenBy> {
  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByAccessToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByAccessTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accessToken', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByNotificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationId', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByNotificationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationName', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy>
      thenByNotificationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationName', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByPushToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushToken', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByPushTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushToken', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByUrlAppStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlAppStore', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByUrlAppStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlAppStore', Sort.desc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByUrlPlayStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlPlayStore', Sort.asc);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QAfterSortBy> thenByUrlPlayStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlPlayStore', Sort.desc);
    });
  }
}

extension ConfigAppQueryWhereDistinct
    on QueryBuilder<ConfigApp, ConfigApp, QDistinct> {
  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByAccessToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accessToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByNotificationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByNotificationName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByPushToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pushToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeMode');
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByUrlAppStore(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urlAppStore', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConfigApp, ConfigApp, QDistinct> distinctByUrlPlayStore(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urlPlayStore', caseSensitive: caseSensitive);
    });
  }
}

extension ConfigAppQueryProperty
    on QueryBuilder<ConfigApp, ConfigApp, QQueryProperty> {
  QueryBuilder<ConfigApp, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ConfigApp, String?, QQueryOperations> accessTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accessToken');
    });
  }

  QueryBuilder<ConfigApp, String?, QQueryOperations> notificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationId');
    });
  }

  QueryBuilder<ConfigApp, String?, QQueryOperations>
      notificationNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationName');
    });
  }

  QueryBuilder<ConfigApp, String?, QQueryOperations> pushTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pushToken');
    });
  }

  QueryBuilder<ConfigApp, ThemeModeEnum, QQueryOperations> themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeMode');
    });
  }

  QueryBuilder<ConfigApp, String?, QQueryOperations> urlAppStoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urlAppStore');
    });
  }

  QueryBuilder<ConfigApp, String?, QQueryOperations> urlPlayStoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urlPlayStore');
    });
  }
}
