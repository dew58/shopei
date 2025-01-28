import 'package:flutter/material.dart';
import 'package:shopie/core/constants/supabase.dart';
import 'package:shopie/core/networks/network_maneger.dart';
import 'package:shopie/my_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/routes/routers.dart';

Future<void> main() async {
  NetworkManager().getProducts();
  await Supabase.initialize(
      url: SupabaseVars.supabaseUrl, anonKey: SupabaseVars.supabaseKey);
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
