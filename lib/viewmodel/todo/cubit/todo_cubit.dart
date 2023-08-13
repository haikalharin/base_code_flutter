import 'package:base_mvvm/common/cubit/generic_cubit.dart';
import 'package:base_mvvm/data/model/todo/todo.dart';
import 'package:base_mvvm/repository/todo/todo_repository.dart';


class TodoCubit extends GenericCubit<ToDo> {
  final TodoRepository todoRepository;

  TodoCubit({required this.todoRepository});

  String get getTodoCount => "${state.data?.length ?? 0}";

  Future<void> getTodos(int userId, {TodoStatus? status}) async {
    getItems(todoRepository.getTodos(userId, status: status));
  }

  Future<void> createTodo(ToDo todo) async {
    createItem(todoRepository.createTodo(todo));
  }

  Future<void> updateTodo(ToDo todo) async {
    updateItem(todoRepository.updateTodo(todo));
  }

  Future<void> deleteTodo(ToDo todo) async {
    deleteItem(todoRepository.deleteTodo(todo));
  }
}
