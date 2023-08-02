import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(InititalDetailsState()) {
    // on<DetailsEvent>((event, emit) {});
  }
}
