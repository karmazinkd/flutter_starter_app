import 'package:flutter_starter_app/helpers/api_manager.dart';
import 'package:flutter_starter_app/helpers/router.gr.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


final GetIt getIt = GetIt.instance;

///Static instance of AppLocalizations - a shortcut to get translations without a context
late AppLocalizations tr;

setUpInjections() {
  final dioClient = ApiManager.getDioClient();
  // getIt.registerSingleton<ChatRemoteDataSource>(ChatRemoteDataSource(api: ChatApi(dioClient)));
  //
  // getIt.registerSingleton<IChatRepository>(
  //   ChatDefaultRepository(remoteDataSource: getIt<ChatRemoteDataSource>()),
  // );

  getIt.registerSingleton(AppRouter());
}