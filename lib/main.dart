import 'package:flutter/material.dart';

import 'package:shopie/core/constants/supabase.dart';
import 'package:shopie/my_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/routes/routers.dart';

const String persistSessionKey = 'supabase_session';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    authOptions: FlutterAuthClientOptions(
      localStorage:
          SharedPreferencesLocalStorage(persistSessionKey: persistSessionKey),
    ),
    storageOptions: StorageClientOptions(retryAttempts: 2),
    url: SupabaseVars.supabaseUrl,
    anonKey: SupabaseVars.supabaseKey,
    debug: true,
  );

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
