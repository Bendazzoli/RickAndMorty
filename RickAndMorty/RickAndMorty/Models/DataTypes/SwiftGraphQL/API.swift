//
//  API.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 27/10/23.
//

// This file was auto-generated using maticzav/swift-graphql. DO NOT EDIT MANUALLY!
import Foundation
import GraphQL
import SwiftGraphQL

// MARK: - Operations
public enum Operations {}
extension Objects.Query: GraphQLHttpOperation {
  public static var operation: GraphQLOperationKind { .query }
}

// MARK: - Objects
public enum Objects {}
extension Objects {
  public struct Query {}
}

extension Fields where TypeLock == Objects.Query {
  /// Get a specific character by ID

  public func character<T>(id: String, selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "character",
      parent: "Query",
      type: "Character",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get the list of all characters

  public func characters<T>(
    page: OptionalArgument<Int> = .init(),
    filter: OptionalArgument<InputObjects.FilterCharacter> = .init(),
    selection: Selection<T, Objects.Characters?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "Query",
      type: "Characters",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "filter", type: "FilterCharacter", value: filter),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get a list of characters selected by ids

  public func charactersByIds<T>(ids: [String], selection: Selection<T, [Objects.Character?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "charactersByIds",
      parent: "Query",
      type: "Character",
      arguments: [Argument(name: "ids", type: "[ID!]!", value: ids)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get a specific locations by ID

  public func location<T>(id: String, selection: Selection<T, Objects.Location?>) throws -> T {
    let field = GraphQLField.composite(
      field: "location",
      parent: "Query",
      type: "Location",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get the list of all locations

  public func locations<T>(
    page: OptionalArgument<Int> = .init(),
    filter: OptionalArgument<InputObjects.FilterLocation> = .init(),
    selection: Selection<T, Objects.Locations?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "locations",
      parent: "Query",
      type: "Locations",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "filter", type: "FilterLocation", value: filter),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get a list of locations selected by ids

  public func locationsByIds<T>(ids: [String], selection: Selection<T, [Objects.Location?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "locationsByIds",
      parent: "Query",
      type: "Location",
      arguments: [Argument(name: "ids", type: "[ID!]!", value: ids)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get a specific episode by ID

  public func episode<T>(id: String, selection: Selection<T, Objects.Episode?>) throws -> T {
    let field = GraphQLField.composite(
      field: "episode",
      parent: "Query",
      type: "Episode",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get the list of all episodes

  public func episodes<T>(
    page: OptionalArgument<Int> = .init(),
    filter: OptionalArgument<InputObjects.FilterEpisode> = .init(),
    selection: Selection<T, Objects.Episodes?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "episodes",
      parent: "Query",
      type: "Episodes",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "filter", type: "FilterEpisode", value: filter),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get a list of episodes selected by ids

  public func episodesByIds<T>(ids: [String], selection: Selection<T, [Objects.Episode?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "episodesByIds",
      parent: "Query",
      type: "Episode",
      arguments: [Argument(name: "ids", type: "[ID!]!", value: ids)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Query<W> = Selection<W, Objects.Query>
}
extension Objects {
  public struct Character {}
}

extension Fields where TypeLock == Objects.Character {
  /// The id of the character.

  public func id() throws -> String? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The name of the character.

  public func name() throws -> String? {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The status of the character ('Alive', 'Dead' or 'unknown').

  public func status() throws -> String? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The species of the character.

  public func species() throws -> String? {
    let field = GraphQLField.leaf(
      field: "species",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The type or subspecies of the character.

  public func type() throws -> String? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').

  public func gender() throws -> String? {
    let field = GraphQLField.leaf(
      field: "gender",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's origin location

  public func origin<T>(selection: Selection<T, Objects.Location?>) throws -> T {
    let field = GraphQLField.composite(
      field: "origin",
      parent: "Character",
      type: "Location",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The character's last known location

  public func location<T>(selection: Selection<T, Objects.Location?>) throws -> T {
    let field = GraphQLField.composite(
      field: "location",
      parent: "Character",
      type: "Location",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Link to the character's image.
  /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.

  public func image() throws -> String? {
    let field = GraphQLField.leaf(
      field: "image",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Episodes in which this character appeared.

  public func episode<T>(selection: Selection<T, [Objects.Episode?]>) throws -> T {
    let field = GraphQLField.composite(
      field: "episode",
      parent: "Character",
      type: "Episode",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Time at which the character was created in the database.

  public func created() throws -> String? {
    let field = GraphQLField.leaf(
      field: "created",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Character<W> = Selection<W, Objects.Character>
}
extension Objects {
  public struct Location {}
}

extension Fields where TypeLock == Objects.Location {
  /// The id of the location.

  public func id() throws -> String? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Location",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The name of the location.

  public func name() throws -> String? {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "Location",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The type of the location.

  public func type() throws -> String? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "Location",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The dimension in which the location is located.

  public func dimension() throws -> String? {
    let field = GraphQLField.leaf(
      field: "dimension",
      parent: "Location",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// List of characters who have been last seen in the location.

  public func residents<T>(selection: Selection<T, [Objects.Character?]>) throws -> T {
    let field = GraphQLField.composite(
      field: "residents",
      parent: "Location",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Time at which the location was created in the database.

  public func created() throws -> String? {
    let field = GraphQLField.leaf(
      field: "created",
      parent: "Location",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Location<W> = Selection<W, Objects.Location>
}
extension Objects {
  public struct Episode {}
}

extension Fields where TypeLock == Objects.Episode {
  /// The id of the episode.

  public func id() throws -> String? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Episode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The name of the episode.

  public func name() throws -> String? {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "Episode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The air date of the episode.

  public func airDate() throws -> String? {
    let field = GraphQLField.leaf(
      field: "air_date",
      parent: "Episode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The code of the episode.

  public func episode() throws -> String? {
    let field = GraphQLField.leaf(
      field: "episode",
      parent: "Episode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// List of characters who have been seen in the episode.

  public func characters<T>(selection: Selection<T, [Objects.Character?]>) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "Episode",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Time at which the episode was created in the database.

  public func created() throws -> String? {
    let field = GraphQLField.leaf(
      field: "created",
      parent: "Episode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Episode<W> = Selection<W, Objects.Episode>
}
extension Objects {
  public struct Characters {}
}

extension Fields where TypeLock == Objects.Characters {

  public func info<T>(selection: Selection<T, Objects.Info?>) throws -> T {
    let field = GraphQLField.composite(
      field: "info",
      parent: "Characters",
      type: "Info",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func results<T>(selection: Selection<T, [Objects.Character?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "results",
      parent: "Characters",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Characters<W> = Selection<W, Objects.Characters>
}
extension Objects {
  public struct Info {}
}

extension Fields where TypeLock == Objects.Info {
  /// The length of the response.

  public func count() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "Info",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of pages.

  public func pages() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "pages",
      parent: "Info",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Number of the next page (if it exists)

  public func next() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "next",
      parent: "Info",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Number of the previous page (if it exists)

  public func prev() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "prev",
      parent: "Info",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Info<W> = Selection<W, Objects.Info>
}
extension Objects {
  public struct Locations {}
}

extension Fields where TypeLock == Objects.Locations {

  public func info<T>(selection: Selection<T, Objects.Info?>) throws -> T {
    let field = GraphQLField.composite(
      field: "info",
      parent: "Locations",
      type: "Info",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func results<T>(selection: Selection<T, [Objects.Location?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "results",
      parent: "Locations",
      type: "Location",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Locations<W> = Selection<W, Objects.Locations>
}
extension Objects {
  public struct Episodes {}
}

extension Fields where TypeLock == Objects.Episodes {

  public func info<T>(selection: Selection<T, Objects.Info?>) throws -> T {
    let field = GraphQLField.composite(
      field: "info",
      parent: "Episodes",
      type: "Info",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func results<T>(selection: Selection<T, [Objects.Episode?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "results",
      parent: "Episodes",
      type: "Episode",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Episodes<W> = Selection<W, Objects.Episodes>
}
extension Objects.Query {
  /// Get a specific character by ID

  public static func character<T>(id: String, selection: Selection<T, Objects.Character?>)
    -> Selection<T, Objects.Query>
  {
    Selection<T, Objects.Query> {
      try $0.character(id: id, selection: selection)
    }
  }
  /// Get the list of all characters

  public static func characters<T>(
    page: OptionalArgument<Int> = .init(),
    filter: OptionalArgument<InputObjects.FilterCharacter> = .init(),
    selection: Selection<T, Objects.Characters?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.characters(page: page, filter: filter, selection: selection)
    }
  }
  /// Get a list of characters selected by ids

  public static func charactersByIds<T>(
    ids: [String], selection: Selection<T, [Objects.Character?]?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.charactersByIds(ids: ids, selection: selection)
    }
  }
  /// Get a specific locations by ID

  public static func location<T>(id: String, selection: Selection<T, Objects.Location?>)
    -> Selection<T, Objects.Query>
  {
    Selection<T, Objects.Query> {
      try $0.location(id: id, selection: selection)
    }
  }
  /// Get the list of all locations

  public static func locations<T>(
    page: OptionalArgument<Int> = .init(),
    filter: OptionalArgument<InputObjects.FilterLocation> = .init(),
    selection: Selection<T, Objects.Locations?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.locations(page: page, filter: filter, selection: selection)
    }
  }
  /// Get a list of locations selected by ids

  public static func locationsByIds<T>(ids: [String], selection: Selection<T, [Objects.Location?]?>)
    -> Selection<T, Objects.Query>
  {
    Selection<T, Objects.Query> {
      try $0.locationsByIds(ids: ids, selection: selection)
    }
  }
  /// Get a specific episode by ID

  public static func episode<T>(id: String, selection: Selection<T, Objects.Episode?>) -> Selection<
    T, Objects.Query
  > {
    Selection<T, Objects.Query> {
      try $0.episode(id: id, selection: selection)
    }
  }
  /// Get the list of all episodes

  public static func episodes<T>(
    page: OptionalArgument<Int> = .init(),
    filter: OptionalArgument<InputObjects.FilterEpisode> = .init(),
    selection: Selection<T, Objects.Episodes?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.episodes(page: page, filter: filter, selection: selection)
    }
  }
  /// Get a list of episodes selected by ids

  public static func episodesByIds<T>(ids: [String], selection: Selection<T, [Objects.Episode?]?>)
    -> Selection<T, Objects.Query>
  {
    Selection<T, Objects.Query> {
      try $0.episodesByIds(ids: ids, selection: selection)
    }
  }
}
extension Objects.Character {
  /// The id of the character.

  public static func id() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.id()
    }
  }
  /// The name of the character.

  public static func name() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.name()
    }
  }
  /// The status of the character ('Alive', 'Dead' or 'unknown').

  public static func status() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.status()
    }
  }
  /// The species of the character.

  public static func species() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.species()
    }
  }
  /// The type or subspecies of the character.

  public static func type() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.type()
    }
  }
  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').

  public static func gender() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.gender()
    }
  }
  /// The character's origin location

  public static func origin<T>(selection: Selection<T, Objects.Location?>) -> Selection<
    T, Objects.Character
  > {
    Selection<T, Objects.Character> {
      try $0.origin(selection: selection)
    }
  }
  /// The character's last known location

  public static func location<T>(selection: Selection<T, Objects.Location?>) -> Selection<
    T, Objects.Character
  > {
    Selection<T, Objects.Character> {
      try $0.location(selection: selection)
    }
  }
  /// Link to the character's image.
  /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.

  public static func image() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.image()
    }
  }
  /// Episodes in which this character appeared.

  public static func episode<T>(selection: Selection<T, [Objects.Episode?]>) -> Selection<
    T, Objects.Character
  > {
    Selection<T, Objects.Character> {
      try $0.episode(selection: selection)
    }
  }
  /// Time at which the character was created in the database.

  public static func created() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.created()
    }
  }
}
extension Objects.Location {
  /// The id of the location.

  public static func id() -> Selection<String?, Objects.Location> {
    Selection<String?, Objects.Location> {
      try $0.id()
    }
  }
  /// The name of the location.

  public static func name() -> Selection<String?, Objects.Location> {
    Selection<String?, Objects.Location> {
      try $0.name()
    }
  }
  /// The type of the location.

  public static func type() -> Selection<String?, Objects.Location> {
    Selection<String?, Objects.Location> {
      try $0.type()
    }
  }
  /// The dimension in which the location is located.

  public static func dimension() -> Selection<String?, Objects.Location> {
    Selection<String?, Objects.Location> {
      try $0.dimension()
    }
  }
  /// List of characters who have been last seen in the location.

  public static func residents<T>(selection: Selection<T, [Objects.Character?]>) -> Selection<
    T, Objects.Location
  > {
    Selection<T, Objects.Location> {
      try $0.residents(selection: selection)
    }
  }
  /// Time at which the location was created in the database.

  public static func created() -> Selection<String?, Objects.Location> {
    Selection<String?, Objects.Location> {
      try $0.created()
    }
  }
}
extension Objects.Episode {
  /// The id of the episode.

  public static func id() -> Selection<String?, Objects.Episode> {
    Selection<String?, Objects.Episode> {
      try $0.id()
    }
  }
  /// The name of the episode.

  public static func name() -> Selection<String?, Objects.Episode> {
    Selection<String?, Objects.Episode> {
      try $0.name()
    }
  }
  /// The air date of the episode.

  public static func airDate() -> Selection<String?, Objects.Episode> {
    Selection<String?, Objects.Episode> {
      try $0.airDate()
    }
  }
  /// The code of the episode.

  public static func episode() -> Selection<String?, Objects.Episode> {
    Selection<String?, Objects.Episode> {
      try $0.episode()
    }
  }
  /// List of characters who have been seen in the episode.

  public static func characters<T>(selection: Selection<T, [Objects.Character?]>) -> Selection<
    T, Objects.Episode
  > {
    Selection<T, Objects.Episode> {
      try $0.characters(selection: selection)
    }
  }
  /// Time at which the episode was created in the database.

  public static func created() -> Selection<String?, Objects.Episode> {
    Selection<String?, Objects.Episode> {
      try $0.created()
    }
  }
}
extension Objects.Characters {

  public static func info<T>(selection: Selection<T, Objects.Info?>) -> Selection<
    T, Objects.Characters
  > {
    Selection<T, Objects.Characters> {
      try $0.info(selection: selection)
    }
  }

  public static func results<T>(selection: Selection<T, [Objects.Character?]?>) -> Selection<
    T, Objects.Characters
  > {
    Selection<T, Objects.Characters> {
      try $0.results(selection: selection)
    }
  }
}
extension Objects.Info {
  /// The length of the response.

  public static func count() -> Selection<Int?, Objects.Info> {
    Selection<Int?, Objects.Info> {
      try $0.count()
    }
  }
  /// The amount of pages.

  public static func pages() -> Selection<Int?, Objects.Info> {
    Selection<Int?, Objects.Info> {
      try $0.pages()
    }
  }
  /// Number of the next page (if it exists)

  public static func next() -> Selection<Int?, Objects.Info> {
    Selection<Int?, Objects.Info> {
      try $0.next()
    }
  }
  /// Number of the previous page (if it exists)

  public static func prev() -> Selection<Int?, Objects.Info> {
    Selection<Int?, Objects.Info> {
      try $0.prev()
    }
  }
}
extension Objects.Locations {

  public static func info<T>(selection: Selection<T, Objects.Info?>) -> Selection<
    T, Objects.Locations
  > {
    Selection<T, Objects.Locations> {
      try $0.info(selection: selection)
    }
  }

  public static func results<T>(selection: Selection<T, [Objects.Location?]?>) -> Selection<
    T, Objects.Locations
  > {
    Selection<T, Objects.Locations> {
      try $0.results(selection: selection)
    }
  }
}
extension Objects.Episodes {

  public static func info<T>(selection: Selection<T, Objects.Info?>) -> Selection<
    T, Objects.Episodes
  > {
    Selection<T, Objects.Episodes> {
      try $0.info(selection: selection)
    }
  }

  public static func results<T>(selection: Selection<T, [Objects.Episode?]?>) -> Selection<
    T, Objects.Episodes
  > {
    Selection<T, Objects.Episodes> {
      try $0.results(selection: selection)
    }
  }
}

// MARK: - Interfaces
public enum Interfaces {}

// MARK: - Unions
public enum Unions {}

// MARK: - Enums
public enum Enums {}
extension Enums {

  public enum CacheControlScope: String, CaseIterable, Codable {

    case `public` = "PUBLIC"

    case `private` = "PRIVATE"
  }
}

extension Enums.CacheControlScope: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.CacheControlScope(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "CacheControlScope",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.`public`
}

// MARK: - Input Objects

/// Utility pointer to InputObjects.
public typealias Inputs = InputObjects

public enum InputObjects {}
extension InputObjects {
  public struct FilterCharacter: Encodable, Hashable {

    public var name: OptionalArgument<String>

    public var status: OptionalArgument<String>

    public var species: OptionalArgument<String>

    public var type: OptionalArgument<String>

    public var gender: OptionalArgument<String>

    public init(
      name: OptionalArgument<String> = .init(),
      status: OptionalArgument<String> = .init(),
      species: OptionalArgument<String> = .init(),
      type: OptionalArgument<String> = .init(),
      gender: OptionalArgument<String> = .init()
    ) {
      self.name = name
      self.status = status
      self.species = species
      self.type = type
      self.gender = gender
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if name.hasValue { try container.encode(name, forKey: .name) }
      if status.hasValue { try container.encode(status, forKey: .status) }
      if species.hasValue { try container.encode(species, forKey: .species) }
      if type.hasValue { try container.encode(type, forKey: .type) }
      if gender.hasValue { try container.encode(gender, forKey: .gender) }
    }

    public enum CodingKeys: String, CodingKey {
      case name = "name"
      case status = "status"
      case species = "species"
      case type = "type"
      case gender = "gender"
    }
  }
}
extension InputObjects {
  public struct FilterLocation: Encodable, Hashable {

    public var name: OptionalArgument<String>

    public var type: OptionalArgument<String>

    public var dimension: OptionalArgument<String>

    public init(
      name: OptionalArgument<String> = .init(),
      type: OptionalArgument<String> = .init(),
      dimension: OptionalArgument<String> = .init()
    ) {
      self.name = name
      self.type = type
      self.dimension = dimension
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if name.hasValue { try container.encode(name, forKey: .name) }
      if type.hasValue { try container.encode(type, forKey: .type) }
      if dimension.hasValue { try container.encode(dimension, forKey: .dimension) }
    }

    public enum CodingKeys: String, CodingKey {
      case name = "name"
      case type = "type"
      case dimension = "dimension"
    }
  }
}
extension InputObjects {
    public struct FilterEpisode: Encodable, Hashable {
        
        public var name: OptionalArgument<String>
        
        public var episode: OptionalArgument<String>
        
        public init(
            name: OptionalArgument<String> = .init(),
            episode: OptionalArgument<String> = .init()
        ) {
            self.name = name
            self.episode = episode
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if episode.hasValue { try container.encode(episode, forKey: .episode) }
        }
        
        public enum CodingKeys: String, CodingKey {
            case name = "name"
            case episode = "episode"
        }
    }
}

/*
 static let viewer = Selection.Query<RMInfo> {
     try $0.viewer(selection: RMInfo.selection)
 }
 */
