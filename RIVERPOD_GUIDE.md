## 📚 Guía Práctica: Cómo usar los Providers de di_providers.dart

### 1️⃣ PROVIDERS EXTERNOS (Singletons)
```dart
// En tus widgets:

// ❌ NO hace esto (Kiwi):
final dio = KiwiContainer().resolve<Dio>();

// ✅ Haz esto (Riverpod):
@override
Widget build(BuildContext context, WidgetRef ref) {
  final dio = ref.watch(dioProvider);  // Ya está inyectado automáticamente
  // usar dio...
}
```

---

### 2️⃣ USE CASES (Inyección con dependencias)
```dart
// En tus widgets/providers:

@override
Widget build(BuildContext context, WidgetRef ref) {
  // Para operaciones sincrónicas:
  final getPokemonListUseCase = ref.watch(getPokemonListProvider);
  final pokemons = await getPokemonListUseCase(offset: 0, limit: 20);

  // Para operaciones asincrónicas:
  final addFavoriteAsync = ref.watch(addFavoriteUseCaseProvider);
  await addFavoriteAsync(pokemonId);
}
```

---

### 3️⃣ FAVORITOS (Feature con estado)
```dart
// Usar favoritos:
@override
Widget build(BuildContext context, WidgetRef ref) {
  final favoritesAsync = ref.watch(favoritesProvider);

  return favoritesAsync.when(
    data: (favoritesList) => ListView(...),
    loading: () => CircularProgressIndicator(),
    error: (err, stack) => Text('Error: $err'),
  );
}

// Agregar favorito:
ElevatedButton(
  onPressed: () async {
    final addFavorite = await ref.read(addFavoriteUseCaseProvider.future);
    await addFavorite(pokemonId);
    ref.refresh(favoritesProvider);  // Refrescar la lista
  },
  child: Text('Favoritar'),
)
```

---

### 4️⃣ POKEMON SELECCIONADO (Estado mutable)
```dart
// Leer el pokemon seleccionado:
@override
Widget build(BuildContext context, WidgetRef ref) {
  final selectedPokemon = ref.watch(selectedPokemonNotifierProvider);
  print(selectedPokemon);  // PokemonDetail o null
}

// Cambiar el pokemon seleccionado:
ref.read(selectedPokemonNotifierProvider.notifier).select(pokemon);

// Limpiar selección:
ref.read(selectedPokemonNotifierProvider.notifier).clear();
```

---

## 🎯 ESTRUCTURA EN CAPAS (Orden de dependencias):

```
External Dependencies (Dio, SharedPreferences)
         ↓
    Data Sources
         ↓
    Repositories
         ↓
    Use Cases
         ↓
Presentation (Widgets, UI State)
```

Cada capa depende de la anterior, pero nunca al revés.

---

## ✅ MEJORAS APLICADAS:

1. **Nombres simples**: `favoritesProvider` en lugar de `favoritesProviderProvider`
2. **Organización clara**: Secciones comentadas para cada capa
3. **Menos Futures innecesarios**: Solo async cuando es realmente necesario
4. **State management mejorado**: `SelectedPokemonNotifier` es type-safe
5. **Documentación integrada**: Comentarios para cada sección

---

## 🔄 COMPARATIVA: Kiwi vs Riverpod

| Aspecto | Kiwi | Riverpod |
|--------|------|---------|
| Registro | Manual en un container | `@riverpod` automático |
| Acceso | `resolve<T>()` | `ref.watch(provider)` |
| Cache | Manual | Automático |
| Type-safety | Débil | Fuerte |
| Reactividad | No | Sí (hot reload + cambios) |
| Testing | Más complejo | `override` + simple |

