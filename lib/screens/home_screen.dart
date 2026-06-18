import 'package:flutter/material.dart';
import '../widgets/snackbar_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '07 · Snackbars en Flutter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Carlos Eduardo Buitrago Vargas',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 40),

            // --- SECCIÓN 1: Snackbar Simple ---
            const _SectionTitle(title: '1. Snackbar Simple'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.info_outline),
              label: const Text('Mostrar Snackbar Simple'),
              onPressed: () => SnackbarHelper.showSimple(
                context,
                mensaje: 'Acción realizada correctamente',
              ),
            ),
            const SizedBox(height: 28),

            // --- SECCIÓN 2: Snackbar con Acción ---
            const _SectionTitle(title: '2. Snackbar con Acción (Deshacer)'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.delete_outline),
              label: const Text('Eliminar elemento'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade50,
                foregroundColor: Colors.red.shade700,
              ),
              onPressed: () => SnackbarHelper.showConAccion(
                context,
                mensaje: 'Elemento eliminado',
                etiquetaAccion: 'Deshacer',
                onAccion: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('✅ Acción deshecha')),
                  );
                },
              ),
            ),
            const SizedBox(height: 28),

            // --- SECCIÓN 3: Snackbar de Error ---
            const _SectionTitle(title: '3. Snackbar de Error'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.wifi_off),
              label: const Text('Simular error de red'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade50,
                foregroundColor: Colors.orange.shade800,
              ),
              onPressed: () => SnackbarHelper.showError(
                context,
                mensaje: 'Sin conexión a Internet',
              ),
            ),
            const SizedBox(height: 28),

            // --- SECCIÓN 4: Snackbar de Éxito ---
            const _SectionTitle(title: '4. Snackbar de Éxito'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.save_outlined),
              label: const Text('Guardar cambios'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade50,
                foregroundColor: Colors.green.shade800,
              ),
              onPressed: () => SnackbarHelper.showExito(
                context,
                mensaje: 'Cambios guardados',
              ),
            ),
            const SizedBox(height: 28),

            // --- SECCIÓN 5: Snackbar Personalizado ---
            const _SectionTitle(title: '5. Snackbar Personalizado'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.palette_outlined),
              label: const Text('Snackbar personalizado'),
              onPressed: () => SnackbarHelper.showPersonalizado(context),
            ),
            const SizedBox(height: 40),

            // --- Nota informativa ---
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.indigo.shade100),
              ),
              child: const Text(
                '💡 Todos los Snackbars usan ScaffoldMessenger.of(context).showSnackBar()',
                style: TextStyle(fontSize: 13, color: Colors.indigo),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 20,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}