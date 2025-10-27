import 'package:get_it/get_it.dart';
import 'package:hire_pro/core/network/dio_client.dart';
import 'package:hire_pro/data/data_sources/remote_data_sources/auth_data_source.dart';
import 'package:hire_pro/data/data_sources/remote_data_sources/manager_data_source.dart';
import 'package:hire_pro/data/repo_impl/auth_repo_impl.dart';
import 'package:hire_pro/data/repo_impl/manager_repo_impl.dart';
import 'package:hire_pro/domain/repository/auth_repo.dart';
import 'package:hire_pro/domain/repository/manager_repository.dart';
import 'package:hire_pro/domain/usecases/auth_usecase.dart';
import 'package:hire_pro/domain/usecases/manager_usecase.dart';
import 'package:hire_pro/presentation/features/authentication/sign_in/bloc/sign_in_bloc.dart';
import 'package:hire_pro/presentation/features/manager/home/bloc/home_manager_bloc.dart';

GetIt di = GetIt.instance;

class Di {
  static Future<void> init() async {
    //! SIGN IN
    di.registerLazySingleton(() => DioClient());
    di.registerLazySingleton(() => AuthRemoteDataSource(dioClient: di()));
    di.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: di()),
    );
    di.registerLazySingleton(() => AuthUsecase(repository: di()));
    di.registerFactory(() => SignInBloc(authUsecase: di()));

    //! MANAGER
    di.registerLazySingleton(() => ManagerDataSource(dio: di()));
    di.registerLazySingleton<ManagerRepository>(
      () => ManagerRepoImpl(managerDataSource: di()),
    );
    di.registerLazySingleton(() => ManagerUsecase(managerRepository: di()));
    di.registerFactory(() => HomeManagerBloc(di()));
  }
}
