// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVpnCollection on Isar {
  IsarCollection<Vpn> get vpns => this.collection();
}

const VpnSchema = CollectionSchema(
  name: r'Vpn',
  id: 2806776190910561585,
  properties: {
    r'countryLong': PropertySchema(
      id: 0,
      name: r'countryLong',
      type: IsarType.string,
    ),
    r'countryShort': PropertySchema(
      id: 1,
      name: r'countryShort',
      type: IsarType.string,
    ),
    r'hostname': PropertySchema(
      id: 2,
      name: r'hostname',
      type: IsarType.string,
    ),
    r'ip': PropertySchema(
      id: 3,
      name: r'ip',
      type: IsarType.string,
    ),
    r'numVpnSessions': PropertySchema(
      id: 4,
      name: r'numVpnSessions',
      type: IsarType.long,
    ),
    r'openVPNConfigDataBase64': PropertySchema(
      id: 5,
      name: r'openVPNConfigDataBase64',
      type: IsarType.string,
    ),
    r'ping': PropertySchema(
      id: 6,
      name: r'ping',
      type: IsarType.string,
    ),
    r'speed': PropertySchema(
      id: 7,
      name: r'speed',
      type: IsarType.long,
    )
  },
  estimateSize: _vpnEstimateSize,
  serialize: _vpnSerialize,
  deserialize: _vpnDeserialize,
  deserializeProp: _vpnDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _vpnGetId,
  getLinks: _vpnGetLinks,
  attach: _vpnAttach,
  version: '3.1.0+1',
);

int _vpnEstimateSize(
  Vpn object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.countryLong.length * 3;
  bytesCount += 3 + object.countryShort.length * 3;
  bytesCount += 3 + object.hostname.length * 3;
  bytesCount += 3 + object.ip.length * 3;
  bytesCount += 3 + object.openVPNConfigDataBase64.length * 3;
  bytesCount += 3 + object.ping.length * 3;
  return bytesCount;
}

void _vpnSerialize(
  Vpn object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.countryLong);
  writer.writeString(offsets[1], object.countryShort);
  writer.writeString(offsets[2], object.hostname);
  writer.writeString(offsets[3], object.ip);
  writer.writeLong(offsets[4], object.numVpnSessions);
  writer.writeString(offsets[5], object.openVPNConfigDataBase64);
  writer.writeString(offsets[6], object.ping);
  writer.writeLong(offsets[7], object.speed);
}

Vpn _vpnDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Vpn(
    countryLong: reader.readString(offsets[0]),
    countryShort: reader.readString(offsets[1]),
    hostname: reader.readString(offsets[2]),
    ip: reader.readString(offsets[3]),
    isarId: id,
    numVpnSessions: reader.readLong(offsets[4]),
    openVPNConfigDataBase64: reader.readString(offsets[5]),
    ping: reader.readString(offsets[6]),
    speed: reader.readLong(offsets[7]),
  );
  return object;
}

P _vpnDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _vpnGetId(Vpn object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _vpnGetLinks(Vpn object) {
  return [];
}

void _vpnAttach(IsarCollection<dynamic> col, Id id, Vpn object) {}

extension VpnQueryWhereSort on QueryBuilder<Vpn, Vpn, QWhere> {
  QueryBuilder<Vpn, Vpn, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VpnQueryWhere on QueryBuilder<Vpn, Vpn, QWhereClause> {
  QueryBuilder<Vpn, Vpn, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VpnQueryFilter on QueryBuilder<Vpn, Vpn, QFilterCondition> {
  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryLong',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryLong',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryLong',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryLongIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryLong',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryShort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryShort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryShort',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> countryShortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryShort',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hostname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hostname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostname',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> hostnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hostname',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ip',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ip',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> ipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ip',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> numVpnSessionsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numVpnSessions',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> numVpnSessionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numVpnSessions',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> numVpnSessionsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numVpnSessions',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> numVpnSessionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numVpnSessions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> openVPNConfigDataBase64EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openVPNConfigDataBase64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition>
      openVPNConfigDataBase64GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openVPNConfigDataBase64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> openVPNConfigDataBase64LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openVPNConfigDataBase64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> openVPNConfigDataBase64Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openVPNConfigDataBase64',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition>
      openVPNConfigDataBase64StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'openVPNConfigDataBase64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> openVPNConfigDataBase64EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'openVPNConfigDataBase64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> openVPNConfigDataBase64Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'openVPNConfigDataBase64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> openVPNConfigDataBase64Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'openVPNConfigDataBase64',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition>
      openVPNConfigDataBase64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openVPNConfigDataBase64',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition>
      openVPNConfigDataBase64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'openVPNConfigDataBase64',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ping',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ping',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ping',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ping',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ping',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ping',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ping',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ping',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ping',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> pingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ping',
        value: '',
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> speedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> speedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> speedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterFilterCondition> speedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VpnQueryObject on QueryBuilder<Vpn, Vpn, QFilterCondition> {}

extension VpnQueryLinks on QueryBuilder<Vpn, Vpn, QFilterCondition> {}

extension VpnQuerySortBy on QueryBuilder<Vpn, Vpn, QSortBy> {
  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByCountryLong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryLong', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByCountryLongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryLong', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByCountryShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryShort', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByCountryShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryShort', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByHostnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByIp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByIpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByNumVpnSessions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numVpnSessions', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByNumVpnSessionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numVpnSessions', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByOpenVPNConfigDataBase64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openVPNConfigDataBase64', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByOpenVPNConfigDataBase64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openVPNConfigDataBase64', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByPing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ping', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortByPingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ping', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> sortBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }
}

extension VpnQuerySortThenBy on QueryBuilder<Vpn, Vpn, QSortThenBy> {
  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByCountryLong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryLong', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByCountryLongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryLong', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByCountryShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryShort', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByCountryShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryShort', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByHostnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByIp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByIpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByNumVpnSessions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numVpnSessions', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByNumVpnSessionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numVpnSessions', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByOpenVPNConfigDataBase64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openVPNConfigDataBase64', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByOpenVPNConfigDataBase64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openVPNConfigDataBase64', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByPing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ping', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenByPingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ping', Sort.desc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<Vpn, Vpn, QAfterSortBy> thenBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }
}

extension VpnQueryWhereDistinct on QueryBuilder<Vpn, Vpn, QDistinct> {
  QueryBuilder<Vpn, Vpn, QDistinct> distinctByCountryLong(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countryLong', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctByCountryShort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countryShort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctByHostname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hostname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctByIp({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ip', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctByNumVpnSessions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numVpnSessions');
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctByOpenVPNConfigDataBase64(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'openVPNConfigDataBase64',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctByPing(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ping', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vpn, Vpn, QDistinct> distinctBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speed');
    });
  }
}

extension VpnQueryProperty on QueryBuilder<Vpn, Vpn, QQueryProperty> {
  QueryBuilder<Vpn, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Vpn, String, QQueryOperations> countryLongProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countryLong');
    });
  }

  QueryBuilder<Vpn, String, QQueryOperations> countryShortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countryShort');
    });
  }

  QueryBuilder<Vpn, String, QQueryOperations> hostnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hostname');
    });
  }

  QueryBuilder<Vpn, String, QQueryOperations> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ip');
    });
  }

  QueryBuilder<Vpn, int, QQueryOperations> numVpnSessionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numVpnSessions');
    });
  }

  QueryBuilder<Vpn, String, QQueryOperations>
      openVPNConfigDataBase64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openVPNConfigDataBase64');
    });
  }

  QueryBuilder<Vpn, String, QQueryOperations> pingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ping');
    });
  }

  QueryBuilder<Vpn, int, QQueryOperations> speedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speed');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vpn _$VpnFromJson(Map<String, dynamic> json) => Vpn(
      isarId: (json['isarId'] as num?)?.toInt() ?? Isar.autoIncrement,
      hostname: json['hostname'] as String,
      ip: json['ip'] as String,
      ping: json['ping'] as String,
      speed: (json['speed'] as num).toInt(),
      countryLong: json['countryLong'] as String,
      countryShort: json['countryShort'] as String,
      numVpnSessions: (json['numVpnSessions'] as num).toInt(),
      openVPNConfigDataBase64: json['openVPNConfigDataBase64'] as String,
    );

Map<String, dynamic> _$VpnToJson(Vpn instance) => <String, dynamic>{
      'isarId': instance.isarId,
      'hostname': instance.hostname,
      'ip': instance.ip,
      'ping': instance.ping,
      'speed': instance.speed,
      'countryLong': instance.countryLong,
      'countryShort': instance.countryShort,
      'numVpnSessions': instance.numVpnSessions,
      'openVPNConfigDataBase64': instance.openVPNConfigDataBase64,
    };
