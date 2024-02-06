part of 'create_pizza_bloc.dart';

sealed class CreatePizzaEvent extends Equatable {
  const CreatePizzaEvent();

  @override
  List<Object> get props => [];
}

class CreatePizza extends CreatePizzaEvent {
  final Pizza pizza;

  const CreatePizza(this.pizza);

  @override
  List<Object> get props => [pizza];
}