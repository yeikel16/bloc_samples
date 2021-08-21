import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:preference_navigation/preferences/preferences.dart';
import 'package:preferences_repository/preferences_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferencesRepository extends Mock
    implements SharedPreferencesRepository {}

class MockHivePreferencesRepository extends Mock
    implements HivePreferencesRepository {}

class MockPreferencesBloc extends MockBloc<PreferencesEvent, PreferencesState>
    implements PreferencesBloc {}

class MockPreferences extends Mock implements SharedPreferences {}

class FakePreferencesState extends Fake implements PreferencesState {}

class FakePreferencesEvent extends Fake implements PreferencesEvent {}
