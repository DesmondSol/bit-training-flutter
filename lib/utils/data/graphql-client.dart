import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(
  'https://rickandmortyapi.com/graphql',
);

ValueNotifier<GraphQLClient> graphqlClient = ValueNotifier(
  GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(store: HiveStore()),
  ),
);
