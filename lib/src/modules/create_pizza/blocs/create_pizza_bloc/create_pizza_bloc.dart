import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pizza_repository/pizza_repository.dart';

part 'create_pizza_event.dart';
part 'create_pizza_state.dart';

class CreatePizzaBloc extends Bloc<CreatePizzaEvent, CreatePizzaState> {
  PizzaRepo pizzaRepo;

  CreatePizzaBloc(this.pizzaRepo) : super(CreatePizzaInitial()) {
    on<CreatePizza>((event, emit) async {
      emit(CreatePizzaLoading());
      try {
        await pizzaRepo.createPizzas(event.pizza);
        emit(CreatePizzaSuccess());
      } catch (e) {
        emit(CreatePizzaFailure());
      }
    });
  }
}
