/// Base contract for data mappers/adapters.
/// Converts models (from the data layer) into entities (from the domain layer) and vice versa.
library;

abstract class Adapter<Entity, Model> {
  /// Converts an entity to a model
  Model entityToModel(Entity entity);

  /// Converts a model to an entity
  Entity modelToEntity(Model model);
}

mixin LocalAdapter<Entity, LocalModel> {
  LocalModel entityToLocalModel(Entity entity) => throw UnimplementedError();
  Entity localModelToEntity(LocalModel localModel) => throw UnimplementedError();
}
